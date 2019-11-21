/***************************************************************************\
   WARNING: This file was auto generated.  Please do NOT edit directly or
   check in to source control.
\***************************************************************************/

#include <cbang/Info.h>
#include <cbang/String.h>
#include <cbang/util/CompilerInfo.h>

using namespace cb;

namespace CAMotics {
namespace BuildInfo {
void addBuildInfo(const char *category) {
    Info &info = Info::instance();

    info.add(category, "Version",   "1.2.1");
    info.add(category, "Author",    "Joseph Coffland <joseph@cauldrondevelopment.com>");
    info.add(category, "Org",       "Cauldron Development LLC");
    info.add(category, "Copyright", "2011-2019, Joseph Coffland");
    info.add(category, "Homepage",  "https://camotics.org/");
    info.add(category, "License",   "https://www.gnu.org/licenses/gpl-2.0.txt");
    info.add(category, "Date",      __DATE__);
    info.add(category, "Time",      __TIME__);
    info.add(category, "Revision", "ed2ed54cbd8f1470366bfcae20d6cd5f45d96465");
    info.add(category, "Branch",   "master");
    info.add(category, "Compiler", COMPILER);
    info.add(category, "Options",  "-std=c++11 -Wno-deprecated-declarations -O3 -funroll-loops -arch x86_64 -mmacosx-version-min=10.14 -fPIC");
    info.add(category, "Platform", "darwin 18.7.0");
    info.add(category, "Bits",     String(COMPILER_BITS));
    info.add(category, "Mode",     "Release");
  }
} // namespace BuildInfo
} // namespace CAMotics
