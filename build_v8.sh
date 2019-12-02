#!/bin/bash

if [ ! -d depot_tools ]; then
    git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git
fi

PATH=${PATH}:${PWD}/depot_tools

if [ ! -d v8 ]; then
    fetch v8
    (cd v8; git checkout branch-heads/6.8; gclient sync)
fi

#IOS_ARCH=(x64 arm64)
MACX_ARCH=(x64)

MODULES=(v8_base_without_compiler v8_compiler v8_libplatform v8_libbase v8_libsampler v8_initializers v8_init v8_snapshot torque_generated_initializers)
#MODULES=(v8_libplatform v8_libbase v8_libsampler v8_initializers v8_init v8_snapshot torque_generated_initializers)

IOS_ARGS="use_xcode_clang=true enable_ios_bitcode=true target_os=\"ios\" ios_deployment_target=\"9.0\""

pushd v8

for a in ${IOS_ARCH[@]}; do
    out=out.gn/${a}.debug
    echo "Building for ${out}"
    gn gen ${out} --args="v8_enable_pointer_compression=false is_official_build=true use_custom_libcxx=false is_component_build=false symbol_level=0 v8_enable_v8_checks=false v8_enable_debugging_features=true is_debug=true v8_use_external_startup_data=false v8_enable_i18n_support=false target_cpu=\"${a}\" v8_target_cpu=\"${a}\" ${IOS_ARGS}"
    ninja -C ${out} ${MODULES[@]}

    mkdir -p ${out}/lib
    for m in ${MODULES[@]}; do
        /usr/bin/ar r ${out}/lib/lib${m}.a ${out}/obj/${m}/*.o
    done
    mv ${out} out.gn/${a}.ios
done

for a in ${MACX_ARCH[@]}; do
    out=out.gn/${a}.debug
    echo "Building for ${out}"
    gn gen ${out} --args="v8_enable_pointer_compression=false is_official_build=false use_custom_libcxx=false is_component_build=false symbol_level=0 v8_enable_v8_checks=false v8_enable_debugging_features=true is_debug=true v8_use_external_startup_data=false v8_enable_i18n_support=false target_cpu=\"${a}\" v8_target_cpu=\"${a}\" v8_static_library=true enable_stripping=false"
    ninja -C ${out} ${MODULES[@]}

    mkdir -p ${out}/lib

    # add vn_base for v6.8
    for m in ${MODULES[@]}; do
        /usr/bin/ar rv ${out}/lib/lib${m}.a ${out}/obj/${m}/*.o
    done
    mv ${out} out.gn/${a}.macx
    /usr/bin/ar rv v8/out.gn/x64.macx/lib/libv8_z.a $(find v8/out.gn/x64.macx/obj/third_party/zlib -name '*.o')
done

popd
