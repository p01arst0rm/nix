# LibBrotli Dependency File
#============================================================================


# Look for libbrotli{enc,dec}.
#--------------------------------------------------
libbrotli_dep = declare_dependency(
    dependencies: [
        dependency('libbrotlienc'),
        dependency('libbrotlidec')],
    link_args :  get_option('brotli_link_args'))


config_h.set(
    'HAVE_BROTLI',
    libbrotli_dep.found(),
    description : 'Define if the brotli library is available.')
