# Nix Manual Misc
#============================================================================


# configure generate-manpage.nix.gen.hh
#---------------------------------------------------
generate_manpage_nix = custom_target(
  'generate-manpage.nix',
  output : 'generate-manpage.nix.gen.hh',
  input : 'generate-manpage.nix',
  command : [bash, '-c', gen_rheader, 'sh', '@OUTPUT@'])

# configure utils.nix.gen.hh
#---------------------------------------------------
utils_nix = custom_target(
  'utils.nix.gen.hh',
  output : 'utils.nix.gen.hh',
  input : 'utils.nix',
  command : [bash, '-c', gen_rheader, 'sh', '@OUTPUT@'])
  