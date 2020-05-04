read -p "Introduce un nombre de usuario" nombreusuario
read -p "Introduce un PID:" PID

contador=1
max=`cat procesos.txt | wc -l`


while [ $contador -le $max ]; do
    linea=`cat procesos.txt | head -${contador} | tail -1`
    nombre=`echo $linea | awk '{print $1}'`
    pids=`echo $linea | awk '{print $2}'`

    if [$nombre = nombreusuario];then
	echo "el nombre de usuario existe"
    fi
    if [$pids = PID]; then
	echo "El valor de PID existe"
    fi
    if[$nombreusuario = $PID];then
	echo "el PID introducido $PID  corresponde al usuario introducido $nombreusuario"
done

echo "Todo bien"
