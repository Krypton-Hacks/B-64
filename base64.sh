#!/bin/bash
#Script para encriptar y decifrar mensajes 
#Creado por KevinVarSa
# MENSAJES OCULTOS QUE TU SOLO PUEDES LEERLO EN BASE64 
# MENSAJES QUE PUEDES OCULTAR CON ESTE SCRIPT
#COMENTARIO
<<COMMENT
Qi02NAo=
COMMENT
#IF PARA PONER EL TOKEN ALADO DEL SCRIPT
    if [[ $1 = "kevin" ]];then
        echo "Ingresando a la herramienta..."
       sleep 1
    else 
         echo "Ingrese el token del desarrollador e intente nuevamente."
     sleep 1
    exit 0
     fi

# COLORS PRINTF
GREEN="$(printf '\033[32m')" 
WHITE="$(printf '\033[37m')"
# INSTALACION DE LOS PAQUETES
Install() {
 echo -e "${GREEN}Instalando paquetes..."
   sleep 1
  echo ""
apt install vim -y
pkg install vim -y
}
# EJECUCION DE LA FUNCION INSTALL
Install 
clear
# EN CASO DE QUE LA OPCION SEA INCORRECTA REPITE LA FUNCION 
repeat() {
# CAT ES IGUAL QUE ECHO IMPRESION DE TEXTO PARA QUE FUNCIONE COLORES ES CON PRINTF 
cat <<- EOF

${GREEN}      version:2.0 
${WHITE}  ____     ${GREEN}     __ _  _   
${WHITE} |  _ \    ${GREEN}    / /| || |  
${WHITE} | |_) |___${GREEN}__ / /_| || |_ 
${WHITE} |  _ <____${GREEN}__| '_ \__   _|
${WHITE} | |_) |   ${GREEN}  | (_) | | |  
${WHITE} |____/    ${GREEN}   \___/  |_|  
      ${GREEN}   (by:KevinVarsa)
      ${GREEN}   (github:Krypton-Hacks)

Ingrese una opcion
${GREEN}[${WHITE}1${GREEN}]${WHITE}Encriptar
${GREEN}[${WHITE}2${GREEN}]${WHITE}Desencriptar
${GREEN}[${WHITE}3${GREEN}]${WHITE}Salir
EOF
#FINAL DE CAT EOF
# INGRESAR OPCION
        read -p "Opcion: " 
# TOMA DE DECISION
case ${REPLY} in
       1|uno) echo "Ingrese el mensaje a encriptar"
              read -p "Encriptar: " mensaje
              printf "${GREEN}[+]${WHITE}Encriptando...\n"
              sleep 1.2
              echo ""
              echo -ne "Mensaje encriptado:${GREEN} "
              # echo mensaje | base 64 sirve para encriptar texto
              echo -ne "${mensaje}" | base64
             ;;
       2|dos) echo "Ingrese mensaje a desencriptar"
              read -p "Desencriptar: " mensaje1
              printf "${GREEN}[+]${WHITE}Desencriptando...\n"
              sleep 1.2
              echo ""
              echo -ne "Mensaje Desencriptado:${GREEN} "
              # echo mensaje | base64 -d sirve para desencriptar texto
              echo -ne "${mensaje1}" | base64 -d 
              ;;
       # opcion incorrecta
       *) echo ""
          echo "Opcion invalida. Intente de nuevo"
        sleep 1
         clear
       repeat
   ;;
esac 
}
repeat

printf "\n\n\n ${GREEN}PROXIMAMENTE BASE-XXD VERSION 2.1"
