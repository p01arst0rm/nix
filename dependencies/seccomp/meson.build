# OS Specific checks 
#============================================================================



# Look for libsecppomp, required for Linux sandboxing.
#----------------------------------------------------
if sys_name.contains('linux')
    libseccomp_dep = dependency(
        'libseccomp',
        version : '>= 2.3.1',
        not_found_message : 'Nix requires libseccomp on a linux host system')
    config_h.set(
        'HAVE_SECCOMP', 1,
        description : 'Whether seccomp is available and should be used for sandboxing.')
else
    libseccomp_dep = dependency('', required: false)
endif


config_h.set(
    'HAVE_LIBSECCOMP',
    boost_dep.found(),
    description : 'Define if the libseccomp is available.')
