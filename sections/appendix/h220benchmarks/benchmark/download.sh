wget https://dl.fbaipublicfiles.com/nevergrad/allxpsiclr/list.html

for pb in tartenpion #lsgo simpletsp powersystems  #pyomo alldes rocket hdbo4d simpletsp photonics powersystems realworld ya sequential_fastga paramultimo 
do
for i in `grep Section list.html | grep '#' | sed 's/.*#//g' | sed 's/".*//g' | grep $pb`
do
	echo $i
wget https://dl.fbaipublicfiles.com/nevergrad/allxpsiclr/${i}/xpresults_all.png
wget https://dl.fbaipublicfiles.com/nevergrad/allxpsiclr/${i}/fight_all.png
mv xpresults_all.png xp_${i}.png
mv fight_all.png fa_${i}.png
sleep 1
done
done
