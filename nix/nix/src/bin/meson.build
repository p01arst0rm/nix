# Nix binary build file
#============================================================================




# dependancies
#============================================================================

nix_dep_list = [
    pthread_dep,
    libdl_dep,
    boost_dep,
    editline_dep,
    libsodium_dep,
    gc_dep,

    libutil_dep,
    libstore_dep,
    libmain_dep,
    libfetchers_dep,
    libexpr_dep,
    libcmd_dep]


# src files
#============================================================================

nix_src = files(
    'add-to-store.cc',
    'app.cc',
    'build.cc',
    'bundle.cc',
    'cat.cc',
    'copy.cc',
    'daemon.cc',
    'develop.cc',
    'diff-closures.cc',
    'doctor.cc',
    'dump-path.cc',
    'edit.cc',
    'eval.cc',
    'flake.cc',
    'fmt.cc',
    'hash.cc',
    'log.cc',
    'ls.cc',
    'main.cc',
    'make-content-addressed.cc',
    'nar.cc',
    'optimise-store.cc',
    'path-from-hash-part.cc',
    'path-info.cc',
    'ping-store.cc',
    'prefetch.cc',
    'profile.cc',
    'realisation.cc',
    'registry.cc',
    'run.cc',
    'search.cc',
    'show-config.cc',
    'sigs.cc',
    'store.cc',
    'store-copy-log.cc',
    'store-delete.cc',
    'store-gc.cc',
    'store-repair.cc',
    'upgrade-nix.cc',
    'verify.cc',
    'why-depends.cc')

nix_headers = files(
    'run.hh')

nix_markdown_files += files(
    join_paths('realisation', 'info.md'))
