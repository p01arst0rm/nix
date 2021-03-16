# lowdown Dependency File
#============================================================================


# FIXME !! lowdown is seemingly a required dependency for building, but 
# it isn't listed anywhere on documentation that i could find. dependency
# object needs to be added to meson.

# Look for lowdown, a required dependency.
#--------------------------------------------------
liblowdown_dep = declare_dependency(
    dependencies: cpp.find_library('lowdown'),
    #link_args :  get_option('lowdown_link_args')
    )