# nix check functions
#============================================================================

if (cpp.has_function('lutimes'))
    config_h.set(
        'HAVE_LUTIMES', 1,
        description : 'Define to 1 if you have the `lutimes` function.')
endif

if (cpp.has_function('lchown'))
    config_h.set(
        'HAVE_LCHOWN', 1,
        description : 'Define to 1 if you have the `lchown` function.')
endif

if (cpp.has_function('pipe2'))
    config_h.set(
        'HAVE_PIPE2', 1,
        description : 'Define to 1 if you have the `pipe2` function.')
endif

if (cpp.has_function('posix_fallocate'))
    config_h.set(
        'HAVE_POSIX_FALLOCATE', 1,
        description : 'Define to 1 if you have the `posix_fallocate` function.')
endif

if (cpp.has_function('setresuid'))
    config_h.set(
        'HAVE_SETRESUID', 1,
        description : 'Define to 1 if you have the `setresuid` function.')
endif

if (cpp.has_function('setreuid'))
    config_h.set(
        'HAVE_SETREUID', 1,
        description : 'Define to 1 if you have the `setreuid` function.')
endif

if (cpp.has_function('statvfs'))
    config_h.set(
        'HAVE_STATVFS', 1,
        description : 'Define to 1 if you have the `statvfs` function.')
endif

if (cpp.has_function('strsignal'))
    config_h.set(
        'HAVE_STRSIGNAL', 1,
        description : 'Define to 1 if you have the `strsignal` function.')
endif

if (cpp.has_function('sysconf'))
    config_h.set(
        'HAVE_SYSCONF', 1,
        description : 'Define to 1 if you have the `sysconf` function.')
endif

pubsetbuff_c = '''
#include <iostream>
using namespace std;
static char buf[1024];
void func() {
cerr.rdbuf()->pubsetbuf(buf, sizeof(buf));
}'''

if meson.get_compiler('cpp').compiles(
    pubsetbuff_c,
    name : 'pubsetbuf'
  )
    config_h.set(
        'HAVE_PUBSETBUF', 1,
        description : 'Define to 1 if you have the `pubsetbuf` function.')
endif
