read -p "Introduce un nombre de usuario" nombreusuario

usuarios=`ls -l /home | awk '{print $4}'`

if [$nombreusuario = $usuarios]; then 
echo "El nombre introducido corresponde a un usuario"
fi

