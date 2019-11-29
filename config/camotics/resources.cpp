/***************************************************************************\
   WARNING: This file was auto generated.  Please do NOT edit directly or
   check in to source control.
\***************************************************************************/

#include <cbang/util/Resource.h>

using namespace cb;

namespace CAMotics {
extern const unsigned char data2[];
extern const FileResource resource2("phong.frag", (const char *)data2, 554);
extern const unsigned char data3[];
extern const FileResource resource3("phong.vert", (const char *)data3, 448);
const Resource *children1[] = {&resource2,&resource3,0};
extern const DirectoryResource resource1("shaders", children1);
const Resource *children0[] = {&resource1,0};
extern const DirectoryResource resource0("resources", children0);
} // namespace CAMotics
