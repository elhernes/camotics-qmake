/***************************************************************************\
   WARNING: This file was auto generated.  Please do NOT edit directly or
   check in to source control.
\***************************************************************************/

#include <cbang/util/Resource.h>

using namespace cb;

namespace cb {
extern const unsigned char data2[];
extern const FileResource resource2("boost.txt", (const char *)data2, 1420);
extern const unsigned char data3[];
extern const FileResource resource3("libevent.txt", (const char *)data3, 3385);
extern const unsigned char data4[];
extern const FileResource resource4("bzip2.txt", (const char *)data4, 1829);
extern const unsigned char data5[];
extern const FileResource resource5("expat.txt", (const char *)data5, 1226);
extern const unsigned char data6[];
extern const FileResource resource6("zlib.txt", (const char *)data6, 1591);
extern const unsigned char data7[];
extern const FileResource resource7("libyaml.txt", (const char *)data7, 1183);
extern const unsigned char data8[];
extern const FileResource resource8("sqlite.txt", (const char *)data8, 3787);
extern const unsigned char data9[];
extern const FileResource resource9("re2.txt", (const char *)data9, 1562);
extern const unsigned char data10[];
extern const FileResource resource10("cbang.txt", (const char *)data10, 1130);
const Resource *children1[] = {&resource2,&resource3,&resource4,&resource5,
&resource6,&resource7,&resource8,&resource9,&resource10,0};
extern const DirectoryResource resource1("licenses", children1);
const Resource *children0[] = {&resource1,0};
extern const DirectoryResource resource0("resources", children0);
} // namespace cb
