#!/bin/bash
cd BASH
data=$(yad --fullscreen\
	--form --separator="" --field "ФАМИЛИЯ" --field "ИМЯ"\
)
mkdir $data
cd $data
cat "first.txt"
echo "ЭТО УСПЕХ">"first.txt"

mpg123 /home/sofya/Chocolate_school9/BASH/beep.mp3
mpg123 /home/sofya/Chocolate_school9/BASH/beep.mp3

starting=$(yad --fullscreen\
	--text-info --justify=center --fore=red</home/sofya/Chocolate_school9/BASH/texts/starting.txt --fontname=" Monospace bold italic 50"\
	--timeout=30\
	--timeout-indicator=top\
	--button="!/home/sofya/Chocolate_school9/BASH/iconsnew/numbers/exit.png":0\
	--borders=30\
)
sta=$?
if [[ $sta -eq 0 ]]; then
	exit 0
fi	

for ((i = 0; i < 7; i++)) 
do	
before=$(yad --fullscreen\
	--text-info --justify=center --fore=red </home/sofya/Chocolate_school9/BASH/texts/before.txt --fontname=" Monospace bold italic 50"\
	--button="!/home/sofya/Chocolate_school9/BASH/iconsnew/numbers/chocolate-bar.png":1\
	--button="!/home/sofya/Chocolate_school9/BASH/iconsnew/numbers/exit.png":0\
	--borders=30\
)
bef=$?
mpg123 /home/sofya/Chocolate_school9/BASH/beep.mp3
if [[ $bef -eq 0 ]]; then
	exit 0
fi
sleep 1
mpg123 /home/sofya/Chocolate_school9/BASH/beep.mp3

during=$(yad --fullscreen\
	--text-info --justify=center --fore=red</home/sofya/Chocolate_school9/BASH/texts/during.txt --fontname=" Monospace bold italic 50"\
	--timeout=30\
	--timeout-indicator=top\
	--button="!/home/sofya/Chocolate_school9/BASH/iconsnew/numbers/exit.png":0\
	--borders=30\
)
dur=$?
if [[ $dur -eq 0 ]]; then
	exit 0
fi	

action=$(yad --fullscreen\
	--text-info --justify=center --fore=red<"/home/sofya/Chocolate_school9/BASH/texts/tryin.txt" --fontname=" Monospace bold italic 50"\
	--borders=30\
	--button="!/home/sofya/Chocolate_school9/BASH/iconsnew/numbers/1.png":1\
	--button="!/home/sofya/Chocolate_school9/BASH/iconsnew/numbers/2.png":2\
	--button="!/home/sofya/Chocolate_school9/BASH/iconsnew/numbers/3.png":3\
	--button="!/home/sofya/Chocolate_school9/BASH/iconsnew/numbers/4.png":4\
	--button="!/home/sofya/Chocolate_school9/BASH/iconsnew/numbers/5.png":5\
	--button="!/home/sofya/Chocolate_school9/BASH/iconsnew/numbers/exit.png":0\
)
ret=$?
if [[ $ret -eq 0 ]]; then
	exit 0
fi
string="ОЦЕНКА ШОКОЛАДА №"
echo $"$string $i">>"first.txt"
echo $ret>>"first.txt"
s
mpg123 /home/sofya/Chocolate_school9/BASH/beep.mp3
mpg123 /home/sofya/Chocolate_school9/BASH/beep.mp3
after=$(yad --fullscreen\
	--text-info --justify=center --fore=red<"/home/sofya/Chocolate_school9/BASH/texts/after.txt" --fontname=" Monospace bold italic 50"\
	--button="!/home/sofya/Chocolate_school9/BASH/iconsnew/numbers/water.png":1\
	--button="!/home/sofya/Chocolate_school9/BASH/iconsnew/numbers/exit.png":0\
	--borders=30\
)

aft=$?
if [[ $aft -eq 0 ]]; then
	exit 0
fi
done

end=$(yad --fullscreen\
	--text-info --justify=center --fore=red<"/home/sofya/Chocolate_school9/BASH/texts/end.txt" --fontname=" Monospace bold italic 50"\
	--button="!/home/sofya/Chocolate_school9/BASH/iconsnew/numbers/end.png":0\
)
edd=$?
if [[ $edd -eq 0 ]]; then
	exit 0
fi
