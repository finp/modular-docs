for filename in modular-docs-manual/content/split-*.adoc; do

  echo $filename
  bin/asciidoc-coalescer.rb -a include-tags='$filename' $filename 
  #> ../build/site/$(basename "$filename")

done
