# libutil build file
#============================================================================

libutil_inc = [include_directories('.')]


# dependencies
#============================================================================

libutil_dep_list = [
    aws_sdk_cpp_dep,
    boost_dep,
    libarchive_dep,
    libbz2_dep,
    libbrotli_dep,
    libcpuid_dep,
    liblzma_dep,
    libsodium_dep,
    nlohmann_dep,
    openssl_dep,
    pthread_dep,
    zlib_dep,
]


# src files
#============================================================================

libutil_src = files(
    'affinity.cc',
    'archive.cc',
    'args.cc',
    'compression.cc',
    'compute-levels.cc',
    'config.cc',
    'error.cc',
    'hash.cc',
    'json.cc',
    'logging.cc',
    'rust-ffi.cc',
    'serialise.cc',
    'tarfile.cc',
    'thread-pool.cc',
    'url.cc',
    'util.cc',
    'xml-writer.cc')


libutil_headers = files(
    'abstract-setting-to-json.hh',
    'affinity.hh',
    'ansicolor.hh',
    'archive.hh',
    'args.hh',
    'callback.hh',
    'closure.hh',
    'comparator.hh',
    'compression.hh',
    'compute-levels.hh',
    'config.hh',
    'error.hh',
    'finally.hh',
    'fmt.hh',
    'hash.hh',
    'json.hh',
    'logging.hh',
    'lru-cache.hh',
    'monitor-fd.hh',
    'pool.hh',
    'ref.hh',
    'rust-ffi.hh',
    'serialise.hh',
    'split.hh',
    'sync.hh',
    'tarfile.hh',
    'thread-pool.hh',
    'topo-sort.hh',
    'types.hh',
    'url.hh',
    'url-parts.hh',
    'util.hh',
    'xml-writer.hh')


# build
#============================================================================

# set build args
#---------------------------------------------------
libutil_cxx_args = []

libutil_link_args = []


# build library
#---------------------------------------------------
libutil_lib = library(
    'nixutil',
    sources : libutil_src,
    install : true,
    install_mode : 'rwxr-xr-x',
    install_dir : libdir,
    include_directories : [
        libutil_inc,
        proj_inc
    ],
    cpp_args : libutil_cxx_args,
    link_args : libutil_link_args,
    dependencies : libutil_dep_list)


# install headers
#---------------------------------------------------
install_headers(
    libutil_headers,
    install_dir : join_paths(includedir, 'nix'))


# declare dependency
#---------------------------------------------------
libutil_dep = declare_dependency(
    link_with : libutil_lib,
    include_directories : libutil_inc)


# FIXME!!! tests should not be declared inside the
# build directory, but should be moved to a seperate test
# directory. for now, we just include it here.


# add test dir
#---------------------------------------------------
subdir('tests')
