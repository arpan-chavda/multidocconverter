#! /bin/sh
YAD="yad --width=400 --height=200"

my=`$YAD --title="MD Converter"  --form --text="<b>Input Form</b>" --field="Choose input file:FL" --field="Input Format:CB" VALUE "HTML!MD" --text="<b>Output Form</b>" --field="Output Format:CB" "DOC!ODT" --field="Output Directory:DIR" --button="Convert:0" --button="gtk-quit:1"`
ret=$?
echo $ret
rm go;
echo $my >> go;
awk -F '|' '{printf "FL=%s\nIP=%s\nOP=%s\nOD=%s",$1,$2,$3,$4,$5}' go;
echo $FL
echo $IP
echo $OP
echo $OD

