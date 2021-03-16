# LibLzma Dependency File
#============================================================================


# Look for liblzma, a required dependency.
#--------------------------------------------------
liblzma_dep = declare_dependency(
    dependencies: dependency('liblzma'),
    link_args :  get_option('lzma_link_args'))


config_h.set(
    'HAVE_LZMA',
    liblzma_dep.found(),
    description : 'Define if the Boost library is available.')
