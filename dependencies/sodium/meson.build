# LibSodium Dependency File
#============================================================================


# Look for libsodium, an optional dependency.
#--------------------------------------------------
libsodium_lib = cpp.find_library('sodium', required: get_option('with_libsodium'))
if (libsodium_lib.found())
    libsodium_dep = declare_dependency(
        dependencies : libsodium_lib,
        link_args :  get_option('sodium_link_args'))
    config_h.set('HAVE_SODIUM', 1, description : 'Whether to use libsodium for cryptography.')
else
    libsodium_dep = dependency('', required: false)
endif
