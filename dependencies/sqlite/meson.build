# SQLite Dependency File
#============================================================================


# Look for sqlite3, a required dependency.
#--------------------------------------------------
sqlite3_dep = declare_dependency(
    dependencies: cpp.find_library('sqlite3'),
    version : '>= 3.6.19',
    link_args :  get_option('sqlite3_link_args'))


config_h.set(
    'HAVE_SQLITE',
    sqlite3_dep.found(),
    description : 'Define if the SQLite3 is available.')
