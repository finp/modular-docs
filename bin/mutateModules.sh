# add tags to modules


for filename in modular-docs-manual/content/topics/*.adoc; do
        pwd=${PWD}/${filename}
        bname=$(basename "$filename")
        awk 'BEGIN{print "// tag::split-'$bname'[]"}1' $filename > $filename.new
        awk 'END{print "// end::split-'$bname'[]"}1' $filename.new > $filename.newer

        rm -f $filename
        rm -f $filename.new
        
        mv $filename.newer $filename
done
