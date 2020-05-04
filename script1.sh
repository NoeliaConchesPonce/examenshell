rm menores.txt
rm mayores.txt

reas -p "Introduce un numero" num

if[ $num -lt 0 ]; then
    echo "numero invalido"
    exit
fi
if [ $num -gt 50 ]; then
    echo "num ivalido"
fi

for contador in `seq 26 50`; do
    echo $contador >> mayores.txt
done

if [ $num -le 24 ]; then
    for contado in `seq 0 $num`; do
	echo $contador >>menores.txt
    done
else
    for contador in `seq 0 24`; do
	echo $contador >> menores.txt
    done
fi
