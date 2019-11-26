
TARGET=cbang

TEMPLATE=lib
CONFIG += staticlib object_parallel_to_source 
DEFINES = USING_CBANG HAVE_MEMMOVE

V8=$${PWD}/../../javascript/ns-v8ios-runtime/v8

INCLUDEPATH = $${PWD}/config \
    $${PWD}/cbang/src \
    $${PWD}/cbang/src/boost \
    $${PWD}/cbang/src/libyaml/src \
    $${PWD}/cbang/src/expat \
    $${PWD}/cbang/src/libevent/include \
    $${PWD}/cbang/src/re2/src \
    $${V8}/include

OBJECTS_DIR=lib$${TARGET}

## QMAKE_CXXFLAGS += -F /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/System/Library/Frameworks/SystemConfiguration.framework

#CBANG_CONFIG += acmev2
#CBANG_CONFIG += auth
CBANG_CONFIG += buffer
CBANG_CONFIG += config
#CBANG_CONFIG += db
CBANG_CONFIG += debug
CBANG_CONFIG += enum
CBANG_CONFIG += event
#CBANG_CONFIG += gpu
#CBANG_CONFIG += http
CBANG_CONFIG += io
CBANG_CONFIG += iostream
CBANG_CONFIG += js v8
CBANG_CONFIG += json
CBANG_CONFIG += log
CBANG_CONFIG += net
#CBANG_CONFIG += openssl
CBANG_CONFIG += os
CBANG_CONFIG += packet
CBANG_CONFIG += parse
#CBANG_CONFIG += pci
CBANG_CONFIG += script
CBANG_CONFIG += socket
CBANG_CONFIG += tar
CBANG_CONFIG += time
CBANG_CONFIG += util
CBANG_CONFIG += xml

CBANG_CONFIG += boost
CBANG_CONFIG += expat
CBANG_CONFIG += libevent
CBANG_CONFIG += re2

SOURCES += $${PWD}/cbang/src/cbang/Application.cpp
SOURCES += $${PWD}/cbang/src/cbang/Exception.cpp
SOURCES += $${PWD}/cbang/src/cbang/FileLocation.cpp
SOURCES += $${PWD}/cbang/src/cbang/Info.cpp
SOURCES += $${PWD}/cbang/src/cbang/LocationRange.cpp
SOURCES += $${PWD}/cbang/src/cbang/RefCounter.cpp
SOURCES += $${PWD}/cbang/src/cbang/ServerApplication.cpp
SOURCES += $${PWD}/cbang/src/cbang/SmartPointer.cpp
SOURCES += $${PWD}/cbang/src/cbang/String.cpp
SOURCES += $${PWD}/config/cbang/resources.cpp
SOURCES += $${PWD}/config/cbang/build_info.cpp
SOURCES += $${PWD}/config/cbang/resources.data/data3.cpp
SOURCES += $${PWD}/config/cbang/resources.data/data2.cpp
SOURCES += $${PWD}/config/cbang/resources.data/data5.cpp
SOURCES += $${PWD}/config/cbang/resources.data/data4.cpp
SOURCES += $${PWD}/config/cbang/resources.data/data6.cpp
SOURCES += $${PWD}/config/cbang/resources.data/data7.cpp
SOURCES += $${PWD}/config/cbang/resources.data/data9.cpp
SOURCES += $${PWD}/config/cbang/resources.data/data8.cpp
SOURCES += $${PWD}/config/cbang/resources.data/data10.cpp

contains(CBANG_CONFIG, acmev2) {
    SOURCES += $${PWD}/cbang/src/cbang/acmev2/Account.cpp
    SOURCES += $${PWD}/cbang/src/cbang/acmev2/KeyCert.cpp
}

contains(CBANG_CONFIG, auth) {
    SOURCES += $${PWD}/cbang/src/cbang/auth/GitHubOAuth2.cpp
    SOURCES += $${PWD}/cbang/src/cbang/auth/FacebookOAuth2.cpp
    SOURCES += $${PWD}/cbang/src/cbang/auth/GoogleOAuth2.cpp
    SOURCES += $${PWD}/cbang/src/cbang/auth/OAuth2.cpp
}

contains(CBANG_CONFIG, buffer) {
    SOURCES += $${PWD}/cbang/src/cbang/buffer/Buffer.cpp
    SOURCES += $${PWD}/cbang/src/cbang/buffer/MemoryBuffer.cpp
}

contains(CBANG_CONFIG, config) {
    SOURCES += $${PWD}/cbang/src/cbang/config/OptionCategory.cpp
    SOURCES += $${PWD}/cbang/src/cbang/config/OptionProxy.cpp
    SOURCES += $${PWD}/cbang/src/cbang/config/CommandLine.cpp
    SOURCES += $${PWD}/cbang/src/cbang/config/OptionMap.cpp
    SOURCES += $${PWD}/cbang/src/cbang/config/Options.cpp
    SOURCES += $${PWD}/cbang/src/cbang/config/Option.cpp
}

contains(CBANG_CONFIG, db) {
    SOURCES += $${PWD}/cbang/src/cbang/db/TableDef.cpp
    SOURCES += $${PWD}/cbang/src/cbang/db/Transaction.cpp
    SOURCES += $${PWD}/cbang/src/cbang/db/Blob.cpp
    SOURCES += $${PWD}/cbang/src/cbang/db/Column.cpp
    SOURCES += $${PWD}/cbang/src/cbang/db/Schema.cpp
    SOURCES += $${PWD}/cbang/src/cbang/db/Parameter.cpp
    SOURCES += $${PWD}/cbang/src/cbang/db/LevelDB.cpp
    SOURCES += $${PWD}/cbang/src/cbang/db/Database.cpp
    SOURCES += $${PWD}/cbang/src/cbang/db/maria/Field.cpp
    SOURCES += $${PWD}/cbang/src/cbang/db/maria/EventDB.cpp
    SOURCES += $${PWD}/cbang/src/cbang/db/maria/DB.cpp
    SOURCES += $${PWD}/cbang/src/cbang/db/NameValueTable.cpp
    SOURCES += $${PWD}/cbang/src/cbang/db/Statement.cpp
    SOURCES += $${PWD}/cbang/src/cbang/db/Backup.cpp
}

contains(CBANG_CONFIG, debug) {
    SOURCES += $${PWD}/cbang/src/cbang/debug/StackTrace.cpp
    SOURCES += $${PWD}/cbang/src/cbang/debug/StackFrame.cpp
    SOURCES += $${PWD}/cbang/src/cbang/debug/BacktraceDebugger.cpp
    SOURCES += $${PWD}/cbang/src/cbang/debug/Debugger.cpp
}

contains(CBANG_CONFIG, enum) {
    SOURCES += $${PWD}/cbang/src/cbang/enum/ThreadsType.cpp
    SOURCES += $${PWD}/cbang/src/cbang/enum/ProcessPriority.cpp
    SOURCES += $${PWD}/cbang/src/cbang/enum/CPUFeature80000001.cpp
    SOURCES += $${PWD}/cbang/src/cbang/enum/CPUExtendedFeature.cpp
    SOURCES += $${PWD}/cbang/src/cbang/enum/EnumerationManager.cpp
    SOURCES += $${PWD}/cbang/src/cbang/enum/CPUFeature.cpp
}

contains(CBANG_CONFIG, event) {
    SOURCES += $${PWD}/cbang/src/cbang/event/DNSRequest.cpp
    SOURCES += $${PWD}/cbang/src/cbang/event/Headers.cpp
    SOURCES += $${PWD}/cbang/src/cbang/event/Base.cpp
    SOURCES += $${PWD}/cbang/src/cbang/event/HTTPMethodMatcher.cpp
    SOURCES += $${PWD}/cbang/src/cbang/event/OAuth2Login.cpp
    SOURCES += $${PWD}/cbang/src/cbang/event/WebsockStatus.cpp
    SOURCES += $${PWD}/cbang/src/cbang/event/OutgoingRequest.cpp
    SOURCES += $${PWD}/cbang/src/cbang/event/HTTPOAuth2LoginHandler.cpp
    SOURCES += $${PWD}/cbang/src/cbang/event/BufferEvent.cpp
    SOURCES += $${PWD}/cbang/src/cbang/event/ConnectionError.cpp
    SOURCES += $${PWD}/cbang/src/cbang/event/Buffer.cpp
    SOURCES += $${PWD}/cbang/src/cbang/event/Event.cpp
    SOURCES += $${PWD}/cbang/src/cbang/event/DNSBase.cpp
    SOURCES += $${PWD}/cbang/src/cbang/event/IndexHTMLHandler.cpp
    SOURCES += $${PWD}/cbang/src/cbang/event/HTTPRE2PatternMatcher.cpp
    SOURCES += $${PWD}/cbang/src/cbang/event/ACLHandler.cpp
    SOURCES += $${PWD}/cbang/src/cbang/event/Client.cpp
    SOURCES += $${PWD}/cbang/src/cbang/event/HTTP.cpp
    SOURCES += $${PWD}/cbang/src/cbang/event/HTTPAccessHandler.cpp
    SOURCES += $${PWD}/cbang/src/cbang/event/Websocket.cpp
    SOURCES += $${PWD}/cbang/src/cbang/event/JSONWebsocket.cpp
    SOURCES += $${PWD}/cbang/src/cbang/event/Connection.cpp
    SOURCES += $${PWD}/cbang/src/cbang/event/WebsockOpCode.cpp
    SOURCES += $${PWD}/cbang/src/cbang/event/HTTPSessionHandler.cpp
    SOURCES += $${PWD}/cbang/src/cbang/event/WebServer.cpp
    SOURCES += $${PWD}/cbang/src/cbang/event/Request.cpp
    SOURCES += $${PWD}/cbang/src/cbang/event/HTTPHandlerGroup.cpp
    SOURCES += $${PWD}/cbang/src/cbang/event/RedirectSecure.cpp
    SOURCES += $${PWD}/cbang/src/cbang/event/HTTPHandlerFactory.cpp
    SOURCES += $${PWD}/cbang/src/cbang/event/EventFlag.cpp
    SOURCES += $${PWD}/cbang/src/cbang/event/HTTPPatternMatcher.cpp
    SOURCES += $${PWD}/cbang/src/cbang/event/HTTPRequestHandler.cpp
    SOURCES += $${PWD}/cbang/src/cbang/event/ConcurrentPool.cpp
    SOURCES += $${PWD}/cbang/src/cbang/event/FileHandler.cpp
    SOURCES += $${PWD}/cbang/src/cbang/event/ResourceHTTPHandler.cpp
    SOURCES += $${PWD}/cbang/src/cbang/event/HTTPURLPatternMatcher.cpp
}


contains(CBANG_CONFIG, gpu) {
    SOURCES += $${PWD}/cbang/src/cbang/gpu/ComputeDevice.cpp
    SOURCES += $${PWD}/cbang/src/cbang/gpu/GPU.cpp
    SOURCES += $${PWD}/cbang/src/cbang/gpu/GPUVendor.cpp
    SOURCES += $${PWD}/cbang/src/cbang/gpu/GPUIndex.cpp
    SOURCES += $${PWD}/cbang/src/cbang/gpu/GPUType.cpp
    SOURCES += $${PWD}/cbang/src/cbang/gpu/OpenCLLibrary.cpp
    SOURCES += $${PWD}/cbang/src/cbang/gpu/CUDALibrary.cpp
}

contains(CBANG_CONFIG, http) {
    SOURCES += $${PWD}/cbang/src/cbang/http/Header.cpp
    SOURCES += $${PWD}/cbang/src/cbang/http/RequestMethod.cpp
    SOURCES += $${PWD}/cbang/src/cbang/http/WebContext.cpp
    SOURCES += $${PWD}/cbang/src/cbang/http/Transaction.cpp
    SOURCES += $${PWD}/cbang/src/cbang/http/Handler.cpp
    SOURCES += $${PWD}/cbang/src/cbang/http/Session.cpp
    SOURCES += $${PWD}/cbang/src/cbang/http/ACLWebPageHandler.cpp
    SOURCES += $${PWD}/cbang/src/cbang/http/ScriptWebPageHandler.cpp
    SOURCES += $${PWD}/cbang/src/cbang/http/ProxyManager.cpp
    SOURCES += $${PWD}/cbang/src/cbang/http/ScriptedWebContext.cpp
    SOURCES += $${PWD}/cbang/src/cbang/http/Connection.cpp
    SOURCES += $${PWD}/cbang/src/cbang/http/SessionsTable.cpp
    SOURCES += $${PWD}/cbang/src/cbang/http/WebServer.cpp
    SOURCES += $${PWD}/cbang/src/cbang/http/WebHandler.cpp
    SOURCES += $${PWD}/cbang/src/cbang/http/Request.cpp
    SOURCES += $${PWD}/cbang/src/cbang/http/Context.cpp
    SOURCES += $${PWD}/cbang/src/cbang/http/FileWebPageHandler.cpp
    SOURCES += $${PWD}/cbang/src/cbang/http/Server.cpp
    SOURCES += $${PWD}/cbang/src/cbang/http/ConnectionDevice.cpp
    SOURCES += $${PWD}/cbang/src/cbang/http/ContentTypes.cpp
    SOURCES += $${PWD}/cbang/src/cbang/http/Cookie.cpp
    SOURCES += $${PWD}/cbang/src/cbang/http/Response.cpp
    SOURCES += $${PWD}/cbang/src/cbang/http/ConnectionQueue.cpp
    SOURCES += $${PWD}/cbang/src/cbang/http/StatusCode.cpp
    SOURCES += $${PWD}/cbang/src/cbang/http/WebPageHandlerGroup.cpp
    SOURCES += $${PWD}/cbang/src/cbang/http/WebContextMethods.cpp
    SOURCES += $${PWD}/cbang/src/cbang/http/Message.cpp
    SOURCES += $${PWD}/cbang/src/cbang/http/SessionManager.cpp
    SOURCES += $${PWD}/cbang/src/cbang/http/ScriptedWebHandler.cpp
    SOURCES += $${PWD}/cbang/src/cbang/http/ResourceWebPageHandler.cpp
}

contains(CBANG_CONFIG, io) {
    SOURCES += $${PWD}/cbang/src/cbang/io/InputSource.cpp
    SOURCES += $${PWD}/cbang/src/cbang/io/OutputSink.cpp
    SOURCES += $${PWD}/cbang/src/cbang/io/Parser.cpp
    SOURCES += $${PWD}/cbang/src/cbang/io/File.cpp
    SOURCES += $${PWD}/cbang/src/cbang/io/UnixFile.cpp
}

contains(CBANG_CONFIG, iostream) {
    SOURCES += $${PWD}/cbang/src/cbang/iostream/PacifierCallback.cpp
    SOURCES += $${PWD}/cbang/src/cbang/iostream/Transfer.cpp
}

contains(CBANG_CONFIG, js) {
    contains(CBANG_CONFIG, v8) {
        SOURCES += $${PWD}/cbang/src/cbang/js/v8/Factory.cpp
        SOURCES += $${PWD}/cbang/src/cbang/js/v8/JSImpl.cpp
        SOURCES += $${PWD}/cbang/src/cbang/js/v8/Value.cpp
        SOURCES += $${PWD}/cbang/src/cbang/js/v8/Context.cpp
    }
    contains(CBANG_CONFIG, chakra) {
        SOURCES += $${PWD}/cbang/src/cbang/js/chakra/Factory.cpp
        SOURCES += $${PWD}/cbang/src/cbang/js/chakra/JSImpl.cpp
        SOURCES += $${PWD}/cbang/src/cbang/js/chakra/Value.cpp
        SOURCES += $${PWD}/cbang/src/cbang/js/chakra/Context.cpp
        SOURCES += $${PWD}/cbang/src/cbang/js/chakra/ValueRef.cpp
    }
    SOURCES += $${PWD}/cbang/src/cbang/js/Javascript.cpp
    SOURCES += $${PWD}/cbang/src/cbang/js/ConsoleModule.cpp
    SOURCES += $${PWD}/cbang/src/cbang/js/Value.cpp
    SOURCES += $${PWD}/cbang/src/cbang/js/Sink.cpp
    SOURCES += $${PWD}/cbang/src/cbang/js/Callback.cpp
    SOURCES += $${PWD}/cbang/src/cbang/js/Signature.cpp
    SOURCES += $${PWD}/cbang/src/cbang/js/PathResolver.cpp
    SOURCES += $${PWD}/cbang/src/cbang/js/BakedCallback.cpp
    SOURCES += $${PWD}/cbang/src/cbang/js/StdModule.cpp
    SOURCES += $${PWD}/cbang/src/cbang/js/Function.cpp
}

contains(CBANG_CONFIG, json) {
    SOURCES += $${PWD}/cbang/src/cbang/json/TeeSink.cpp
    SOURCES += $${PWD}/cbang/src/cbang/json/Factory.cpp
    SOURCES += $${PWD}/cbang/src/cbang/json/Dict.cpp
    SOURCES += $${PWD}/cbang/src/cbang/json/String.cpp
    SOURCES += $${PWD}/cbang/src/cbang/json/Null.cpp
    SOURCES += $${PWD}/cbang/src/cbang/json/Filter.cpp
    SOURCES += $${PWD}/cbang/src/cbang/json/NullSink.cpp
    SOURCES += $${PWD}/cbang/src/cbang/json/Builder.cpp
    SOURCES += $${PWD}/cbang/src/cbang/json/Value.cpp
    SOURCES += $${PWD}/cbang/src/cbang/json/Sink.cpp
    SOURCES += $${PWD}/cbang/src/cbang/json/True.cpp
    SOURCES += $${PWD}/cbang/src/cbang/json/Writer.cpp
    SOURCES += $${PWD}/cbang/src/cbang/json/Undefined.cpp
    SOURCES += $${PWD}/cbang/src/cbang/json/Serializable.cpp
    SOURCES += $${PWD}/cbang/src/cbang/json/ValueType.cpp
    SOURCES += $${PWD}/cbang/src/cbang/json/YAMLMergeSink.cpp
    SOURCES += $${PWD}/cbang/src/cbang/json/Path.cpp
    SOURCES += $${PWD}/cbang/src/cbang/json/List.cpp
    SOURCES += $${PWD}/cbang/src/cbang/json/ProxySink.cpp
    SOURCES += $${PWD}/cbang/src/cbang/json/Reader.cpp
    SOURCES += $${PWD}/cbang/src/cbang/json/False.cpp
    SOURCES += $${PWD}/cbang/src/cbang/json/YAMLReader.cpp
}

contains(CBANG_CONFIG, log) {
    SOURCES += $${PWD}/cbang/src/cbang/log/LogDevice.cpp
    SOURCES += $${PWD}/cbang/src/cbang/log/TailFileToLog.cpp
    SOURCES += $${PWD}/cbang/src/cbang/log/Logger.cpp
    SOURCES += $${PWD}/cbang/src/cbang/log/LogLineBuffer.cpp
    SOURCES += $${PWD}/cbang/src/cbang/log/AsyncCopyStreamToLog.cpp
}

contains(CBANG_CONFIG, net) {
    SOURCES += $${PWD}/cbang/src/cbang/net/IPAddressFilter.cpp
    SOURCES += $${PWD}/cbang/src/cbang/net/Session.cpp
    SOURCES += $${PWD}/cbang/src/cbang/net/IPAddress.cpp
    SOURCES += $${PWD}/cbang/src/cbang/net/Base64.cpp
    SOURCES += $${PWD}/cbang/src/cbang/net/URI.cpp
    SOURCES += $${PWD}/cbang/src/cbang/net/IPAddressRange.cpp
    SOURCES += $${PWD}/cbang/src/cbang/net/SessionManager.cpp
    SOURCES += $${PWD}/cbang/src/cbang/net/IPRangeSet.cpp
}

contains(CBANG_CONFIG, openssl) {
    SOURCES += $${PWD}/cbang/src/cbang/openssl/BigNum.cpp
    SOURCES += $${PWD}/cbang/src/cbang/openssl/BStream.cpp
    SOURCES += $${PWD}/cbang/src/cbang/openssl/CertificateContext.cpp
    SOURCES += $${PWD}/cbang/src/cbang/openssl/Certificate.cpp
    SOURCES += $${PWD}/cbang/src/cbang/openssl/Revoked.cpp
    SOURCES += $${PWD}/cbang/src/cbang/openssl/CertificateStoreContext.cpp
    SOURCES += $${PWD}/cbang/src/cbang/openssl/RSA.cpp
    SOURCES += $${PWD}/cbang/src/cbang/openssl/KeyGenPacifier.cpp
    SOURCES += $${PWD}/cbang/src/cbang/openssl/BIMemory.cpp
    SOURCES += $${PWD}/cbang/src/cbang/openssl/Digest.cpp
    SOURCES += $${PWD}/cbang/src/cbang/openssl/CRL.cpp
    SOURCES += $${PWD}/cbang/src/cbang/openssl/BOMemory.cpp
    SOURCES += $${PWD}/cbang/src/cbang/openssl/KeyPair.cpp
    SOURCES += $${PWD}/cbang/src/cbang/openssl/CertificateStore.cpp
    SOURCES += $${PWD}/cbang/src/cbang/openssl/CSR.cpp
    SOURCES += $${PWD}/cbang/src/cbang/openssl/Extension.cpp
    SOURCES += $${PWD}/cbang/src/cbang/openssl/KeyContext.cpp
    SOURCES += $${PWD}/cbang/src/cbang/openssl/BOStream.cpp
    SOURCES += $${PWD}/cbang/src/cbang/openssl/CertificateChain.cpp
    SOURCES += $${PWD}/cbang/src/cbang/openssl/BIStream.cpp
    SOURCES += $${PWD}/cbang/src/cbang/openssl/SecurityUtilities.cpp
    SOURCES += $${PWD}/cbang/src/cbang/openssl/SSL.cpp
    SOURCES += $${PWD}/cbang/src/cbang/openssl/SSLContext.cpp
    SOURCES += $${PWD}/cbang/src/cbang/openssl/Cipher.cpp
}

contains(CBANG_CONFIG, os) {
    SOURCES += $${PWD}/cbang/src/cbang/os/Subprocess.cpp
    #SOURCES += $${PWD}/cbang/src/cbang/os/Win32EventLog.cpp
    SOURCES += $${PWD}/cbang/src/cbang/os/SysError.cpp
    SOURCES += $${PWD}/cbang/src/cbang/os/ThreadPool.cpp
    SOURCES += $${PWD}/cbang/src/cbang/os/ExitSignalHandler.cpp
    SOURCES += $${PWD}/cbang/src/cbang/os/SystemUtilities.cpp
    #SOURCES += $${PWD}/cbang/src/cbang/os/Win32Utilities.cpp
    SOURCES += $${PWD}/cbang/src/cbang/os/SignalManager.cpp
    SOURCES += $${PWD}/cbang/src/cbang/os/SystemInfo.cpp
    SOURCES += $${PWD}/cbang/src/cbang/os/Thread.cpp
    SOURCES += $${PWD}/cbang/src/cbang/os/RWLock.cpp
    #SOURCES += $${PWD}/cbang/src/cbang/os/Win32Registry.cpp
    SOURCES += $${PWD}/cbang/src/cbang/os/Semaphore.cpp
#    SOURCES += $${PWD}/cbang/src/cbang/os/PowerManagement.cpp
    SOURCES += $${PWD}/cbang/src/cbang/os/Condition.cpp
    SOURCES += $${PWD}/cbang/src/cbang/os/Glob.cpp
    SOURCES += $${PWD}/cbang/src/cbang/os/ProcessLock.cpp
    SOURCES += $${PWD}/cbang/src/cbang/os/Directory.cpp
    SOURCES += $${PWD}/cbang/src/cbang/os/DirectoryWalker.cpp
    SOURCES += $${PWD}/cbang/src/cbang/os/CPUID.cpp
    SOURCES += $${PWD}/cbang/src/cbang/os/DynamicLibrary.cpp
    SOURCES += $${PWD}/cbang/src/cbang/os/Mutex.cpp
    SOURCES += $${PWD}/cbang/src/cbang/os/TemporaryDirectory.cpp
}

contains(CBANG_CONFIG, packet) {
    SOURCES += $${PWD}/cbang/src/cbang/packet/Packet.cpp
    SOURCES += $${PWD}/cbang/src/cbang/packet/StringPacketField.cpp
}

contains(CBANG_CONFIG, parse) {
    SOURCES += $${PWD}/cbang/src/cbang/parse/Scanner.cpp
}

contains(CBANG_CONFIG, pci) {
    SOURCES += $${PWD}/cbang/src/cbang/pci/PCIInfo.cpp
    SOURCES += $${PWD}/cbang/src/cbang/pci/PCIVendor.cpp
    SOURCES += $${PWD}/cbang/src/cbang/pci/PCIDevice.cpp
}

contains(CBANG_CONFIG, script) {
    SOURCES += $${PWD}/cbang/src/cbang/script/StdLibrary.cpp
    SOURCES += $${PWD}/cbang/src/cbang/script/KeywordArguments.cpp
    SOURCES += $${PWD}/cbang/src/cbang/script/Handler.cpp
    SOURCES += $${PWD}/cbang/src/cbang/script/Entity.cpp
    SOURCES += $${PWD}/cbang/src/cbang/script/Connection.cpp
    SOURCES += $${PWD}/cbang/src/cbang/script/Arguments.cpp
    SOURCES += $${PWD}/cbang/src/cbang/script/Variable.cpp
    SOURCES += $${PWD}/cbang/src/cbang/script/Server.cpp
    SOURCES += $${PWD}/cbang/src/cbang/script/Environment.cpp
    SOURCES += $${PWD}/cbang/src/cbang/script/Function.cpp
    SOURCES += $${PWD}/cbang/src/cbang/script/Processor.cpp
}

contains(CBANG_CONFIG, socket) {
    SOURCES += $${PWD}/cbang/src/cbang/socket/Socket.cpp
    SOURCES += $${PWD}/cbang/src/cbang/socket/SocketSet.cpp
    SOURCES += $${PWD}/cbang/src/cbang/socket/SocketDebugger.cpp
    SOURCES += $${PWD}/cbang/src/cbang/socket/SocketDefaultImpl.cpp
    SOURCES += $${PWD}/cbang/src/cbang/socket/SocketSSLImpl.cpp
    SOURCES += $${PWD}/cbang/src/cbang/socket/SocketServer.cpp
    SOURCES += $${PWD}/cbang/src/cbang/socket/SocketImpl.cpp
    SOURCES += $${PWD}/cbang/src/cbang/socket/BIOSocketImpl.cpp
    SOURCES += $${PWD}/cbang/src/cbang/socket/SocketDebugImpl.cpp
}

contains(CBANG_CONFIG, tar) {
    SOURCES += $${PWD}/cbang/src/cbang/tar/TarFile.cpp
    SOURCES += $${PWD}/cbang/src/cbang/tar/TarHeader.cpp
    SOURCES += $${PWD}/cbang/src/cbang/tar/Tar.cpp
    SOURCES += $${PWD}/cbang/src/cbang/tar/TarFileWriter.cpp
    SOURCES += $${PWD}/cbang/src/cbang/tar/TarFileReader.cpp
}

contains(CBANG_CONFIG, time) {
    SOURCES += $${PWD}/cbang/src/cbang/time/HumanTime.cpp
    SOURCES += $${PWD}/cbang/src/cbang/time/Time.cpp
    SOURCES += $${PWD}/cbang/src/cbang/time/Timer.cpp
    SOURCES += $${PWD}/cbang/src/cbang/time/TimeInterval.cpp
}

contains(CBANG_CONFIG, util) {
    SOURCES += $${PWD}/cbang/src/cbang/util/Random.cpp
    SOURCES += $${PWD}/cbang/src/cbang/util/HumanSize.cpp
    SOURCES += $${PWD}/cbang/src/cbang/util/Regex.cpp
    SOURCES += $${PWD}/cbang/src/cbang/util/Resource.cpp
    SOURCES += $${PWD}/cbang/src/cbang/util/BZip2.cpp
    SOURCES += $${PWD}/cbang/src/cbang/util/Variant.cpp
    SOURCES += $${PWD}/cbang/src/cbang/util/LineBuffer.cpp
    SOURCES += $${PWD}/cbang/src/cbang/util/Singleton.cpp
    SOURCES += $${PWD}/cbang/src/cbang/util/HumanNumber.cpp
    SOURCES += $${PWD}/cbang/src/cbang/util/ACLSet.cpp
    SOURCES += $${PWD}/cbang/src/cbang/util/ID.cpp
}

contains(CBANG_CONFIG, xml) {
    SOURCES += $${PWD}/cbang/src/cbang/xml/XMLValueMap.cpp
    SOURCES += $${PWD}/cbang/src/cbang/xml/XMLAttributes.cpp
    SOURCES += $${PWD}/cbang/src/cbang/xml/XMLAdapter.cpp
    SOURCES += $${PWD}/cbang/src/cbang/xml/XMLFileTracker.cpp
    SOURCES += $${PWD}/cbang/src/cbang/xml/XMLProcessor.cpp
    SOURCES += $${PWD}/cbang/src/cbang/xml/XMLHandlerContext.cpp
    SOURCES += $${PWD}/cbang/src/cbang/xml/ExpatXMLAdapter.cpp
    SOURCES += $${PWD}/cbang/src/cbang/xml/XMLSkipHandler.cpp
    SOURCES += $${PWD}/cbang/src/cbang/xml/XMLWriter.cpp
    SOURCES += $${PWD}/cbang/src/cbang/xml/XIncludeHandler.cpp
    SOURCES += $${PWD}/cbang/src/cbang/xml/XMLReader.cpp
}

contains(CBANG_CONFIG, boost) {
    SOURCES += cbang/src/boost/libs/iostreams/src/zlib.cpp
    SOURCES += cbang/src/boost/libs/iostreams/src/file_descriptor.cpp
    SOURCES += cbang/src/boost/libs/iostreams/src/mapped_file.cpp
    SOURCES += cbang/src/boost/libs/iostreams/src/gzip.cpp
    SOURCES += cbang/src/boost/libs/iostreams/src/bzip2.cpp
    SOURCES += cbang/src/boost/libs/filesystem/src/codecvt_error_category.cpp
    SOURCES += cbang/src/boost/libs/filesystem/src/windows_file_codecvt.cpp
    SOURCES += cbang/src/boost/libs/filesystem/src/operations.cpp
    SOURCES += cbang/src/boost/libs/filesystem/src/path.cpp
    SOURCES += cbang/src/boost/libs/filesystem/src/unique_path.cpp
    SOURCES += cbang/src/boost/libs/filesystem/src/path_traits.cpp
    SOURCES += cbang/src/boost/libs/filesystem/src/portability.cpp
    SOURCES += cbang/src/boost/libs/filesystem/src/utf8_codecvt_facet.cpp
    SOURCES += cbang/src/boost/libs/regex/test/config_info/regex_config_info.cpp
    SOURCES += cbang/src/boost/libs/regex/src/icu.cpp
    SOURCES += cbang/src/boost/libs/regex/src/wide_posix_api.cpp
    SOURCES += cbang/src/boost/libs/regex/src/fileiter.cpp
    SOURCES += cbang/src/boost/libs/regex/src/posix_api.cpp
    SOURCES += cbang/src/boost/libs/regex/src/w32_regex_traits.cpp
    SOURCES += cbang/src/boost/libs/regex/src/c_regex_traits.cpp
    SOURCES += cbang/src/boost/libs/regex/src/regex_debug.cpp
    SOURCES += cbang/src/boost/libs/regex/src/regex_traits_defaults.cpp
    SOURCES += cbang/src/boost/libs/regex/src/instances.cpp
    SOURCES += cbang/src/boost/libs/regex/src/usinstances.cpp
    SOURCES += cbang/src/boost/libs/regex/src/wc_regex_traits.cpp
    SOURCES += cbang/src/boost/libs/regex/src/cpp_regex_traits.cpp
    SOURCES += cbang/src/boost/libs/regex/src/regex_raw_buffer.cpp
    SOURCES += cbang/src/boost/libs/regex/src/winstances.cpp
    SOURCES += cbang/src/boost/libs/regex/src/static_mutex.cpp
    SOURCES += cbang/src/boost/libs/regex/src/cregex.cpp
    SOURCES += cbang/src/boost/libs/regex/src/regex.cpp
    SOURCES += cbang/src/boost/libs/system/src/error_code.cpp
}

contains(CBANG_CONFIG, expat) {
    SOURCES += cbang/src/expat/xmlrole.c
    SOURCES += cbang/src/expat/xmltok_ns.c
    SOURCES += cbang/src/expat/xmlparse.c
    SOURCES += cbang/src/expat/xmltok.c
    SOURCES += cbang/src/expat/xmltok_impl.c
}

contains(CBANG_CONFIG, libevent) {
    SOURCES += cbang/src/libevent/src/evthread_pthread.c
    SOURCES += cbang/src/libevent/src/log.c
    SOURCES += cbang/src/libevent/src/evmap.c
    SOURCES += cbang/src/libevent/src/buffer.c
    SOURCES += cbang/src/libevent/src/strlcpy.c
    SOURCES += cbang/src/libevent/src/bufferevent_filter.c
    SOURCES += cbang/src/libevent/src/evutil_rand.c
    SOURCES += cbang/src/libevent/src/bufferevent_pair.c
    SOURCES += cbang/src/libevent/src/poll.c
#    SOURCES += cbang/src/libevent/src/bufferevent_openssl.c
    SOURCES += cbang/src/libevent/src/select.c
    SOURCES += cbang/src/libevent/src/event.c
    SOURCES += cbang/src/libevent/src/epoll_sub.c
    SOURCES += cbang/src/libevent/src/bufferevent.c
    SOURCES += cbang/src/libevent/src/signal.c
    SOURCES += cbang/src/libevent/src/evutil.c
    SOURCES += cbang/src/libevent/src/bufferevent_ratelim.c
    SOURCES += cbang/src/libevent/src/evthread.c
    SOURCES += cbang/src/libevent/src/epoll.c
    SOURCES += cbang/src/libevent/src/bufferevent_sock.c
    SOURCES += cbang/src/libevent/src/kqueue.c
    SOURCES += cbang/src/libevent/src/evdns.c
    SOURCES += cbang/src/libevent/src/evutil_time.c
}

contains(CBANG_CONFIG, re2) {
    SOURCES += cbang/src/re2/src/util/rune.cc
    SOURCES += cbang/src/re2/src/util/hash.cc
    SOURCES += cbang/src/re2/src/util/valgrind.cc
    SOURCES += cbang/src/re2/src/util/strutil.cc
    SOURCES += cbang/src/re2/src/util/stringprintf.cc
    SOURCES += cbang/src/re2/src/re2/set.cc
    SOURCES += cbang/src/re2/src/re2/parse.cc
    SOURCES += cbang/src/re2/src/re2/nfa.cc
    SOURCES += cbang/src/re2/src/re2/unicode_groups.cc
    SOURCES += cbang/src/re2/src/re2/unicode_casefold.cc
    SOURCES += cbang/src/re2/src/re2/regexp.cc
    SOURCES += cbang/src/re2/src/re2/onepass.cc
    SOURCES += cbang/src/re2/src/re2/perl_groups.cc
    SOURCES += cbang/src/re2/src/re2/mimics_pcre.cc
    SOURCES += cbang/src/re2/src/re2/dfa.cc
    SOURCES += cbang/src/re2/src/re2/compile.cc
    SOURCES += cbang/src/re2/src/re2/re2.cc
    SOURCES += cbang/src/re2/src/re2/filtered_re2.cc
    SOURCES += cbang/src/re2/src/re2/tostring.cc
    SOURCES += cbang/src/re2/src/re2/prefilter.cc
    SOURCES += cbang/src/re2/src/re2/simplify.cc
    SOURCES += cbang/src/re2/src/re2/prefilter_tree.cc
    SOURCES += cbang/src/re2/src/re2/bitstate.cc
    SOURCES += cbang/src/re2/src/re2/stringpiece.cc
    SOURCES += cbang/src/re2/src/re2/prog.cc
}
