# nix dependencies build file
#============================================================================


# Required dependencies
#---------------------------------------------------
required_dep_dirs = [
    'archive',
    'boost',
    'brotli',
    'bz2',
    'cpuid',
    'curl',
    'dl',
    'editline',
    'lzma',
    'lowdown',
    'openssl',
    'seccomp',
    'sqlite',
    'pthread',
    'zlib']


# Optional dependencies
#---------------------------------------------------
optional_dep_dirs = [
    'aws-cpp-sdk-s3',
    'bdw-gc',
    'gtest',
    'sodium']

# additional checks
#---------------------------------------------------
check_dirs = [
    'functions',
    'headers']

# Build dependencies
#---------------------------------------------------
foreach dir : required_dep_dirs
    subdir(dir)
endforeach

foreach dir : optional_dep_dirs
    subdir(dir)
endforeach

foreach dir : check_dirs
    subdir(dir)
endforeach
