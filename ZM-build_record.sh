#!/bin/bash

mkdir TEMP
i=0

find -name "*.jpg" > ZM-lista
sort -o ZM-lista ZM-lista

for line in $(cat ZM-lista)
do
    let "i += 1"
    cp $"$line" TEMP/"$(printf %08d%s ${i%}).jpg"
done

cd TEMP
ffmpeg -framerate 5 -i %08d.jpg Grabacion.avi
cd ..
mv TEMP/Grabacion.avi Grabacion.avi
rm -R -f TEMP
rm ZM-lista
