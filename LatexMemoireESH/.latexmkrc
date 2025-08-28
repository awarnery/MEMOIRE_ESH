# latexmkrc file to move auxiliary files to 'aux/' directory

# Define the directory for auxiliary files
$aux_dir = 'aux';
$out_dir = 'aux';

# Ensure the directory exists
mkdir $aux_dir unless -d $aux_dir;

# Clean up synctex file when running latexmk -c
#$clean_ext = "synctex.gz";

# after the main PDF rule has run, relocate the synctex file
add_hook('after_main_pdf', sub {
  my $fz = "$root_filename.synctex.gz";
  if ( -e $fz ) {
    rename $fz, "$aux_dir/$fz"
      or warn "Could not move $fz to $aux_dir/: $!";
  }
  return 0;
});