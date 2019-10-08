for filename in modular-docs-manual/content/topics/module*.adoc; do

bname=$(basename "$filename")
dname=$(dirname "$filename")
sname=modular-docs-manual/content/split-$bname

echo "include::joined.adoc[tags=split-$bname]" > $sname

  echo $filename

  bin/asciidoc-coalescer.rb -a include-tags='split-$bname' $sname > $filename

  rm $sname

done

./bin/mutateModules.sh
