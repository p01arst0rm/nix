# nix check headers
#============================================================================

if (cpp.has_header('sys/stat.h'))
    config_h.set(
        'HAVE_SYS_STAT_H', 1,
        description : 'Define to 1 if you have the <sys/stat.h> header file.')
endif

if (cpp.has_header('sys/types.h'))
    config_h.set(
        'HAVE_SYS_TYPES_H', 1,
        description : 'Define to 1 if you have the <sys/types.h> header file.')
endif

if (cpp.has_header('sys/dir.h'))
    config_h.set(
        'HAVE_DIR_H', 1,
        description : 'Define to 1 if you have the <sys/dir.h> header file, and it defines `DIR`')
endif

if (cpp.has_header('sys/ndir.h'))
    config_h.set(
        'HAVE_NDIR_H', 1,
        description : 'Define to 1 if you have the <sys/ndir.h> header file, and it defines `DIR`')
endif

has_dirent_h = cpp.has_header('dirent.h')
if (has_dirent_h)
    config_h.set(
        'HAVE_DIRENT_H', 1,
        description : 'Define to 1 if you have the <dirent.h> header file, and it defines `DIR`')
endif

if (cpp.has_header('locale.h'))
    config_h.set(
        'HAVE_LOCALE', 1,
        description : 'Define to 1 if you have the <locale.h> header file.')
endif

if (cpp.has_header('unistd.h'))
    config_h.set(
        'HAVE_UNISTD_H', 1,
        description: 'Define to 1 if you have the <unistd.h> header file.')
endif

if (cpp.has_header('stdint.h'))
    config_h.set(
        'HAVE_STDINT_H', 1,
        description: 'Define to 1 if you have the <stdint.h> header file.')
endif

if (cpp.has_header('stdlib.h'))
    config_h.set(
        'HAVE_STDLIB_H', 1,
        description: 'Define to 1 if you have the <stdlib.h> header file.')
endif

if (cpp.has_header('strings.h'))
    config_h.set(
        'HAVE_STRINGS_H', 1,
        description: 'Define to 1 if you have the <strings.h> header file.')
endif

if (cpp.has_header('string.h'))
    config_h.set(
        'HAVE_STRING_H', 1,
        description: 'Define to 1 if you have the <strings.h> header file.')
endif

if (cpp.has_header('bzlib.h'))
    config_h.set(
        'HAVE_BZLIB_H', 1,
        description : 'Define to 1 if you have the <bzlib.h> header file.')
endif

if (cpp.has_header('inttypes.h'))
    config_h.set(
        'HAVE_INTTYPES_H', 1,
        description : 'Define to 1 if you have the <inttypes.h> header file.')
endif

if (cpp.has_header('memory.h'))
    config_h.set(
        'HAVE_MEMORY_H', 1,
        description : 'Define to 1 if you have the <memory.h> header file.')
endif

dirent_h_prefix = '''
  #include <sys/types.h>
  #include <dirent.h>
'''

check_struct_dirent = meson.get_compiler('cpp').has_member(
    'struct dirent', 'd_type', prefix: dirent_h_prefix)

if ((has_dirent_h) and (check_struct_dirent))
  config_h.set('HAVE_STRUCT_DIRENT_D_TYPE', 1)
endif
