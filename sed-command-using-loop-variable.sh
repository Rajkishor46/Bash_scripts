#!/bin/bash
for abc in 400 450 500 550 600 650 700 750 800 850 900 950 1000
do
mkdir $abc
cp temp/* $abc
cd $abc
sed -i 's/400/'"$abc"'/g' INCAR
sed -i 's/400/'"$abc"'/g' job.sh
qsub job.sh
cd ..
done
