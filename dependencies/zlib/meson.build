# ZLib Dependency File
#============================================================================

# Look for zlib, a required dependency.
#----------------------------------------------------
zlib_dep = declare_dependency(
    link_args : get_option('zlib_link_args'),
    dependencies : [ dependency('zlib')])

if (zlib_dep.found())
    config_h.set(
        'HAVE_ZLIB', 1,
        description : 'Define if the Zlib library is available.')
endif