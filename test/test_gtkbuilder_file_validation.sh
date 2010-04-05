#/bin/sh -e

for x in $(find ../data/ -name "*.ui")
do
  # echo Validating $x
  # TODO: Is there a GtkBuilder DTD?
  xmllint --noout $x || exit 1
done
