# latexmkrc file to move auxiliary files to 'aux/' directory


# Define the directory for auxiliary files
$aux_dir = 'aux';

# This line defines which file extensions should be removed when cleaning up the directory.
$clean_ext = "synctex.gz";

# Ensure the directory exists before running latexmk
mkdir $aux_dir unless -d $aux_dir;

# Move log, aux, and all intermediate files into the 'aux' directory
$out_dir = 'aux';
