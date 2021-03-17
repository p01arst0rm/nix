# Boehm-gc Dependency File
#============================================================================


## FIXME !! Boehm is supposed to be an optional dependency
## but is currently required for libexpr & libcmd to compile
## correctly. 


# Look for Boehm garbage collector, an optional dependency
#--------------------------------------------------
if get_option('with_gc')
    gc_dep = dependency('bdw-gc')
else
    gc_dep = dependency('', required: false)
endif


config_h.set(
    'HAVE_BOEHMGC',
    gc_dep.found().to_int(),
    description : 'Whether to use the Boehm garbage collector.')
