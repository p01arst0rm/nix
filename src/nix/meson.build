# Nix binary build file
#============================================================================


nix_inc = [include_directories('.')]

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
    libfetchers_dep,
    libmain_dep,
    libexpr_dep,
    libcmd_dep,
]


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
    'describe-stores.cc',
    'develop.cc',
    'diff-closures.cc',
    'doctor.cc',
    'dump-path.cc',
    'edit.cc',
    'eval.cc',
    'flake.cc',
    'hash.cc',
    'log.cc',
    'ls.cc',
    'main.cc',
    'make-content-addressable.cc',
    'nar.cc',
    'optimise-store.cc',
    'path-info.cc',
    'ping-store.cc',
    'prefetch.cc',
    'profile.cc',
    'realisation.cc',
    'registry.cc',
    'repl.cc',
    'run.cc',
    'search.cc',
    'show-config.cc',
    'show-derivation.cc',
    'sigs.cc',
    'store.cc',
    'store-delete.cc',
    'store-gc.cc',
    'store-repair.cc',
    'upgrade-nix.cc',
    'verify.cc',
    'why-depends.cc')


src_markdown_files = files(
    'flake-lock.md', 'store-repair.md', 'nix.md', 'why-depends.md', 'registry-list.md', 'store-dump-path.md',
    'nar.md', 'edit.md', 'nar-ls.md', 'store-delete.md', 'nar-cat.md', 'upgrade-nix.md', 'show-derivation.md',
    'copy.md', 'bundle.md', 'registry.md', 'search.md', 'optimise-store.md', 'key-convert-secret-to-public.md',
    'profile-install.md', 'run.md', 'nar-dump-path.md', 'flake-archive.md', 'profile.md', 'flake-check.md',
    'daemon.md', 'repl.md', 'store-prefetch-file.md', 'profile-upgrade.md', 'add-path.md', 'flake-new.md',
    'profile-history.md', 'profile-diff-closures.md', 'help.md', 'diff-closures.md', 'key-generate-secret.md',
    'store-gc.md', 'registry-add.md', 'profile-remove.md', 'shell.md', 'path-info.md', 'ping-store.md',
    'flake.md', 'flake-update.md', 'flake-clone.md', 'eval.md', 'flake-metadata.md', 'profile-list.md',
    'flake-init.md', 'make-content-addressable.md', 'registry-pin.md', 'verify.md', 'develop.md',
    'flake-prefetch.md', 'store-ls.md', 'add-file.md', 'flake-show.md', 'build.md', 'registry-remove.md',
    'print-dev-env.md', 'store-cat.md', 'log.md', join_paths('realisation', 'info.md'),
)


# nix_ln_src = [
#     [ bindir, 'nix-build' ],
#     [ bindir, 'nix-channel' ],
#     [ bindir, 'nix-collect-garbage' ],
#     [ bindir, 'nix-copy-closure' ],
#     [ bindir, 'nix-daemon' ],
#     [ bindir, 'nix-env' ],
#     [ bindir, 'nix-hash' ],
#     [ bindir, 'nix-instantiate' ],
#     [ bindir, 'nix-prefetch-url' ],
#     [ bindir, 'nix-shell' ],
#     [ bindir, 'nix-store' ],
#     [ join_paths(libexecdir, 'nix'), 'build-remote' ],
#]


# targets
#============================================================================
nix_src += custom_target(
  'get-env.sh.gen.hh',
  output : 'get-env.sh.gen.hh',
  input : 'get-env.sh',
  command : [bash, '-c', gen_rheader, 'sh', '@OUTPUT@'])


# build
#============================================================================

# set build args
#---------------------------------------------------
nix_cxx_args = []

nix_link_args = []

# build executable
#---------------------------------------------------
nix_bin = executable(
    'nix',
    sources : [
        nix_src,
        build_remote_src,
        nix_build_src,
        nix_channel_src,
        nix_collect_garbage_src,
        nix_copy_closure_src,
        # nix_daemon_src,
        nix_env_src,
        nix_instantiate_src,
        nix_store_src,
    ],
    install : true,
    install_mode : 'rwxr-xr-x',
    install_dir : bindir,
    include_directories : proj_inc,
    cpp_args : nix_cxx_args,
    link_args : nix_link_args,
    dependencies : nix_dep_list)
