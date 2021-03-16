# OpenSSL Dependency File
#============================================================================


# Look for OpenSSL, a required dependency.
#--------------------------------------------------
openssl_dep = declare_dependency(
    dependencies: cpp.find_library('ssl'),
    link_args :  get_option('openssl_link_args'))


config_h.set(
    'HAVE_OPENSSL',
    openssl_dep.found(),
    description : 'Define if the OpenSSL library is available.')
