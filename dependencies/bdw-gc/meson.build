# Boehm-gc Dependency File
#============================================================================


## FIXME !! Boehm is supposed to be an optional dependency
## but is currently required for libexpr & libcmd to compile
## correctly. 


# Look for Boehm garbage collector, an optional dependency.
#--------------------------------------------------
if (get_option('with_gc'))
    gc_dep = declare_dependency(
        dependencies : dependency('bdw-gc'),
        link_args :  get_option('gc_link_args'))
else
    gc_dep = dependency('', required: false)
endif


config_h.set(
    'HAVE_BOEHMGC',
    1, #gc_dep.found(),
    description : 'Whether to use the Boehm garbage collector.')