#!/bin/bash
sed '/Zoo/d' pandas.txt >> no_zoo_pandas.txt
awk '{print $1,$4,$2}' pandas.txt | sort -k3 -o special_pandas.txt
sort -k5 pandas.txt >> alphabetically_sorted_zoo.txt
sed 's/female/F/g'; 's/male/M/g' pandas.txt >> FM_pandas.txt
grep "female" pandas.txt | grep -c "October"
cat -n pandas.txt >> LineNumbered_pandas.txt
sed -n '1p; 6p; 17p' pandas.txt >> 1_6_17_Pandas
grep -i '[X]' pandas.txt >> xpandas.txt
sort -k5 pandas.txt | uniq -f 4 -u pandas.txt >> pandas9.txt
awk '{print $1,$4}' pandas.txt | awk '$2 <= 10' | sort -k2 -n >> Panda10.txt
