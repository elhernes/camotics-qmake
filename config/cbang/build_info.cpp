/***************************************************************************\
   WARNING: This file was auto generated.  Please do NOT edit directly or
   check in to source control.
\***************************************************************************/

#include <cbang/Info.h>
#include <cbang/String.h>
#include <cbang/util/CompilerInfo.h>

using namespace cb;

namespace cb {
namespace BuildInfo {
void addBuildInfo(const char *category) {
    Info &info = Info::instance();

    info.add(category, "Version",   "");
    info.add(category, "Author",    "");
    info.add(category, "Org",       "");
    info.add(category, "Copyright", "");
    info.add(category, "Homepage",  "");
    info.add(category, "License",   "");
    info.add(category, "Date",      __DATE__);
    info.add(category, "Time",      __TIME__);
    info.add(category, "Revision", "46c96f1aa8419571d83f3e63f9c99a0d602f6da9");
    info.add(category, "Branch",   "master");
    info.add(category, "Compiler", COMPILER);
    info.add(category, "Options",  "-std=c++11 -O3 -funroll-loops -arch x86_64 -mmacosx-version-min=10.14 -fPIC");
    info.add(category, "Platform", "darwin 18.7.0");
    info.add(category, "Bits",     String(COMPILER_BITS));
    info.add(category, "Mode",     "Release");
  }
} // namespace BuildInfo
} // namespace cb
