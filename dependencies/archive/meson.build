# LibArchive Dependency File
#============================================================================



# Look for libbz2, a required dependency.
#--------------------------------------------------
libarchive_dep = declare_dependency(
    dependencies : cpp.find_library('archive'),
    link_args :  get_option('archive_link_args'))
