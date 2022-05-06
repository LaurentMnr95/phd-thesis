

for i in `grep Section list.html | grep '#' | sed 's/.*#//g' | sed 's/".*//g'`
do
	for j in xp_${i}.png fa_${i}.png
	do
		echo -n '\includegraphics[width=.4\textwidth]{benchmark/' 
		echo -n $j
		echo -n '}'
	done
	echo '\\ '
done > ../input.tex
