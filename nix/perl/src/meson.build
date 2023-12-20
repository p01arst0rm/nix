# libperl build file
#============================================================================

libperl_inc = [include_directories('.')]


# dependencies
#============================================================================

libperl_dep_list = []


# src files
#============================================================================

libperl_src = files(
    'Config.pm.in',
    'CopyClosure.pm',
    'Manifest.pm',
    'SSH.pm',
    'Store.pm',
    'Utils.pm')

libperl_store_xs = files('Store.xs')

# targets
#============================================================================

# perl config
#---------------------------------------------------
perl_conf = configuration_data()
perl_conf.set('PACKAGE_VERSION', meson.project_version())

configure_file(input : 'config.pm.in',
               output : 'config.pm',
               configuration : perl_conf)



# build
#============================================================================

