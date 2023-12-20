# nix build file
#============================================================================

nix_src_inc = [include_directories('.')]

src_dirs = [
    'libutil',
    'libstore',
    'libmain',
    'libfetchers',
    'libexpr',
    # 'libcmd',
    # 'nix',
]

if get_option('nix_perl')
    src_dirc += ['perl']

foreach dir : src_dirs
    subdir(dir)
endforeach
