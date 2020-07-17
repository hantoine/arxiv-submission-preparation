# Take Overleaf zip file from stdin
cat > paper.zip

# Compile bbl file
unzip paper.zip -d compilation-dir
cd compilation-dir
rubber --pdf *.tex
cd ..

# Prepare output zip with bbl file
unzip paper.zip -d output-dir
mv compilation-dir/*.bbl output-dir/

# Output zip to stdout
cd output-dir && zip -r - *

