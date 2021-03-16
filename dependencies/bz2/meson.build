# bz2 Dependency File
#============================================================================


# Look for libbz2, a required dependency.
#--------------------------------------------------
libbz2_dep = declare_dependency(
    dependencies : cpp.find_library('bz2'),
    link_args :  get_option('bz2_link_args'))


config_h.set(
    'HAVE_BZ2',
    libbz2_dep.found(),
    description : 'Define if the libbz2 is available.')
