# libmain build file
#============================================================================

libcmd_inc = [include_directories('.')]


# dependencies
#============================================================================

libcmd_dep_list = [
    gc_dep,
    libsodium_dep,
    liblowdown_dep,
    nlohmann_dep,
    openssl_dep,
    pthread_dep,
    
    
    libutil_dep,
    libmain_dep,
    libstore_dep,
    libexpr_dep,
    libfetchers_dep]


# src files
#============================================================================

libcmd_src = files(
    'command.cc',
    'installables.cc',
    'legacy.cc',
    'markdown.cc')

libcmd_headers = files(
    'command.hh',
    'installables.hh',
    'legacy.hh',
    'markdown.hh')

# build
#============================================================================

# set build args
#---------------------------------------------------
libcmd_cxx_args = []

libcmd_link_args = []


# build library
#---------------------------------------------------
libcmd_lib = library(
    'nixcmd',
    sources : libcmd_src,
    install : true,
    install_mode : 'rwxr-xr-x',
    install_dir : libdir,
    include_directories : [
        libcmd_inc,
        proj_inc],
    cpp_args : libcmd_cxx_args,
    link_args : libcmd_link_args,
    dependencies : libcmd_dep_list)


# install headers
#---------------------------------------------------
install_headers(
    libcmd_headers,
    install_dir : join_paths(includedir, 'nix'))

# declare dependency
#---------------------------------------------------
libcmd_dep = declare_dependency(
    link_with : libcmd_lib,
    include_directories : libcmd_inc)
