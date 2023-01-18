# libutil.tests build file
#============================================================================

libutil_tests_inc = [include_directories('.')]

# dependancies
#============================================================================

libutil_tests_dep_list = [
    gtest_dep,

    libutil_dep]


# src files
#============================================================================

libutil_tests_src = files(
    'closure.cc',
    'compression.cc',
    'config.cc',
    'hash.cc',
    'logging.cc',
    'lru-cache.cc',
    'main.cc',
    'pool.cc',
    'tests.cc',
    'url.cc',
    'xml-writer.cc')

# build
#============================================================================

# set build args
#---------------------------------------------------
libutil_tests_cxx_args = []

libutil_tests_link_args = []


# build executable
#---------------------------------------------------
libutil_tests_bin = executable(
    'libutil-tests',
    sources : libutil_tests_src,
    install : false,
    include_directories : proj_inc,
    cpp_args : libutil_tests_cxx_args,
    link_args : libutil_tests_link_args,
    dependencies : libutil_tests_dep_list)

test('libutil-tests', libutil_tests_bin)
