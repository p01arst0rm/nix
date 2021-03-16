# LibCurl Dependency File
#============================================================================


# Look for libcurl, a required dependency.
#--------------------------------------------------
libcurl_dep = declare_dependency(
    dependencies : dependency('libcurl'),
    link_args :  get_option('curl_link_args'))



config_h.set(
    'HAVE_LIBCURL',
    libcurl_dep.found(),
    description : 'Define if the curl library is available.')
