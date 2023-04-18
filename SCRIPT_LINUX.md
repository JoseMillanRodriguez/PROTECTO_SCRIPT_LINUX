# EJEMPLOS SCRIPT LINUX

- 0001. ##### Determinar si 2 es mayor que 1.  Usar corchete simple.

<pre>
<code>

#!/bin/bash
if [ 2 -gt 1 ]
then
	echo "2 es mayor que 1"
else
	echo "2 no es mayor que 1"
fi;

RESULTADO

2 es mayor que 1

</code>
</pre>

- 0001_1. ##### Determinar si 2 es mayor que 1.  Usar corchete simple.

<pre>
<code>

#!/bin/bash
#MEJORADO
clear
echo -n "Ingrese numero 1? "
read n1
echo -n "Ingrese numero 2? "
read n2
if [ $n1 -gt $n2 ]
then
	echo "$n1 es mayor que $n2"
else
	echo "$n1 no es mayor que $2"
fi;
read -rsp $'Press enter to continue...\n'

RESULTADO

Ingrese numero 1? 12
Ingrese numero 2? 23
&n1 no es mayor que &n2

</code>
</pre>

- 0002. ##### Determinar si 2 es distinto que 3. Usar corchete simple.

<pre>
<code>

#!/bin/bash
if [ 2 -ne 3 ]
then
	echo "2 es distinto a 3"
else
	echo "2 es igual a 3"
fi;

RESULTADO

2 es distinto a 3

</code>
</pre>


- 0003. ##### Determinar si 4 estra entre 3 y 5. Usar corchete doble.

<pre>
<code>

#!/bin/bash
if [[ 4 -gt 3 && 4 -lt 5 ]]
then
	echo "4 esta entre 3 y 5"
else
	echo "4 no esta entre 3 y 5"
fi;

RESULTADO

4 esta entre 3 y 5

</code>
</pre>

- 0004. ##### Determinar si 4 esta entre 3 y 5. Usar corchete simple.

<pre>
<code>

#!/bin/bash
if [ 4 -gt 3 -a 4 -lt 5 ]
then
	echo "4 esta entre 3 y 5"
else
	echo "4 no esta entre 3 y 5"
fi;

RESULTADO

4 esta entre 3 y 5

</code>
</pre>

- 0005_1. ##### Determinar si 2 es distinto que 3. Usar corchete doble.

<pre>
<code>

#!/bin/bash
# MEJORADO

clear
echo -n "Ingrese numero 1? "
read n1
echo -n "Ingrese numero 2? "
read n2
if [[ $n1 -ne $n2 ]]
then
	echo "$n1 es distinto que $n2"
else
	echo "$n1 no es distinto que $n2"
fi;
read -rsp $'Press enter to continue...\n'

RESULTADO

Ingrese numero 1? 4
Ingrese numero 2? 6
4 es distinto que 6

</code>
</pre>

- 0006. ##### Crear una variable que llamaremos edad y le asignaremos un valor de 15, luego imprimeremos el contenido de la variable en pantalla.

<pre>
<code>

#!/bin/bash
#Crear una variable que llamaremos edad y le asignaremos un valor de 15, luego imprimeremos el contenido de la variable en pantalla.

clear
edad=15
echo $edad
read -rsp $'Press enter to continue...\n'

RESULTADO

15

</code>
</pre>


- 0007. ##### Podemos asignarle diferentes valores a una misma variable.

<pre>
<code>

#!/bin/bash

clear
mensaje='Hola Mundo'
echo $mensaje
mensaje=5.5
echo $mensaje
mensaje=8
echo $mensaje

read -rsp $'Press enter to continue...\n'

RESULTADO

Hola Mundo
5.5
8
Press enter to continue...

</code>
</pre>


- 0008. ##### El shell tiene una forma de evitar que se pueda modificar el valor de una variable, es decir ponerlo como sólo lectura. En el ejemplo siguiente da un error si intentamos moficar el contenido de la variable.


<pre>
<code>

#!/bin/bash

clear
mensaje='Hola Mundo'
echo $mensaje
readonly mensaje 
mensaje='Cambio de texto'
echo $mensaje

read -rsp $'Press enter to continue...\n'

RESULTADO

Hola Mundo
ejemplo0008.sh: line 8: mensaje: readonly variable

</code>
</pre>


- 0009. ##### Variables especiales

<pre>
<code>

#!/bin/bash
# Ejecutamos el script en la línea de comandos de la siguiente manera si al escript le damos el nombre s0009.sh
# MEJORADO

clear
echo "Process ID: $$"
echo "Nombre del script: $0"
echo "Parámetro1 : $1"
echo "Parámetro2 : $2"
echo "Valores de los parámetros: $@"
echo "Valores de los parámetros: $*"
echo "Total parámetros: $#"
if [ $? = 0 ]
then
	echo "Estado de salida correcto"
else
	echo "Estado de salida incorrecto"
fi;
echo "Numero de proceso en segundo plano: $!"
read -rsp $'Press enter to continue...\n'

RESULTADO

Process ID: 832
Nombre del script: ejemplo0009.sh
Parámetro1 : hola
Parámetro2 : mundo
Valores de los parámetros: hola mundo
Valores de los parámetros: hola mundo
Total parámetros: 2
Estado de salida correcto
Numero de proceso en segundo plano:
Press enter to continue...

</code>
</pre>


- 0010. ##### Para mostrar mensajes en la patalla se usa el comando echo

<pre>
<code>

#!/bin/bash

clear
echo Hoy como estas
edad=20
echo Creo que tienes $edad años
echo -e "Esta \nfrase \nse \nmostrará \npalabra \npor \npalabra \nen \nuna \nlinea \ndistinta \ncada \npalabra"
echo -e "Suprimir lo que viene a continuación \cdel salto de línea"
echo Imprimir todos los ficheros y carpetas a modo de comando ls 
echo *
echo Imprimir todos los ficheros de un formato en concreto
echo *.sh
echo "Esta frase se disecciona a un archivo donde queda grabado" > salvar.txt
echo "Esto que sigue se añade al archivo" >> salvar.txt
echo -n "Omitimos el salto de línea"
read -rsp $'Press enter to continue...\n' 

RESULTADO

Hoy como estas
Creo que tienes 20 años
Esta
frase
se
mostrará
palabra
por
palabra
en
una
linea
distinta
cada
palabra
Suprimir lo que viene a continuación Imprimir todos los ficheros y carpetas a modo de comando ls
Nuevo documento de texto.txt PSEINT.md SCRIPT_LINUX.md archivo.txt ejemplo0001.sh ejemplo0001_1.sh ejemplo0002.sh ejemplo0003.sh ejemplo0004.sh ejemplo0005.sh ejemplo0006.sh ejemplo0007.sh ejemplo0008.sh ejemplo0009.sh ejemplo0010.sh inicio.sh
Imprimir todos los ficheros de un formato en concreto
ejemplo0001.sh ejemplo0001_1.sh ejemplo0002.sh ejemplo0003.sh ejemplo0004.sh ejemplo0005.sh ejemplo0006.sh ejemplo0007.sh ejemplo0008.sh ejemplo0009.sh ejemplo0010.sh inicio.sh
Omitimos el salto de líneaPress enter to continue...

Esta frase se disecciona a un archivo donde queda grabado
Esto que sigue se añade al archivo

</code>
</pre>


- 0011. ##### Representar caracteres unicode

<pre>
<code>

 #!/bin/bash

clear
echo -e "\u2622"
echo -e "\U1f41e"
read -rsp $'Press enter to continue...\n' 

RESULTADO
☢
🐞


</code>
</pre>


- 0012. ##### Comparar el contenido de 2 variables que tienen una cadena almacenada cada variable

<pre>
<code>

#!/bin/bash

clear
echo -n "Ingrese nombre 1? "
read nombre1
echo -n "Ingrese nombre 2? "
read nombre2
if [[ $nombre1 = $nombre2 ]]
then
	echo Son iguales
else
	echo Son distintos
fi;
read -rsp $'Press enter to continue...\n' 

RESULTADO
Ingrese nombre 1? Ada
Ingrese nombre 2? Ada
Son iguales
Press enter to continue...

</code>
</pre>


- 0013. ##### Se pueden comparar las cadenas directamente si no tiene espacios en blanco sin comillas simples o dobles

<pre>
<code>

 #!/bin/bash

clear
if [[ Luis = luis ]]
then
	echo Son iguales
else
	echo Son distintos
fi;
read -rsp $'Press enter to continue...\n' 

RESULTADO
Son distintos
Press enter to continue...

</code>
</pre>


- 0014. ##### Si la cadena tiene espacios en blanco se tienen que poner entre apostrofes simples

if [[ 'Luis esta bien' = 'Luis esta bien' ]] 
then
	echo Son iguales
else
	echo Son distintos
fi;

RESULTADO
Son iguales

</code>
</pre>


- 0014_1. ##### Si la cadena tiene espacios en blanco se tienen que poner entre apostrofes simples

<pre>
<code>

#!/bin/bash
#Si la cadena tiene espacios en blanco se tienen que poner entre apostrofes simples

clear
echo -n "Ingrese frase 1? "
read frase1
echo -n "Ingrese frase 2? "
read frase2
if [[ $frase1 != $frase2 ]]
then
	echo Son distintos
else
	echo Son iguales
fi;
read -rsp $'Press enter to continue...\n' 

RESULTADO
Ingrese frase 1? a na
Ingrese frase 2? a to
Son distintos

</code>
</pre>


- 0015. ##### Si la cadena va incluir variables emplear apostrofe doble.

<pre>
<code>

#!/bin/bash

edad=15
if [[ "Tengo $edad años" = 'Tengo 15 años' ]] 
then
	echo Son iguales
else
	echo Son distintos
fi;

RESULTADO
Son iguales

</code>
</pre>


- 0016. ##### Hacer un bucle form para iterar sobre valores simples, siendo estos valores cadenas simples.

<pre>
<code>

#!/bin/bash

clear
for var in Primero Segundo Tercero Cuarto Quinto; do
	echo Número $var
done
read -rsp $'Press enter to continue...\n'

RESULTADO

Número Primero
Número Segundo
Número Tercero
Número Cuarto
Número Quinto
Press enter to continue...


</code>
</pre>


- 0017. ##### Hacer un bucle for para iterar sobre valores simples, siendo estos valores numeros.

<pre>
<code>

#!/bin/bash

clear
for var in 1 2 3 4 5; do
	echo Número $var
done
read -rsp $'Press enter to continue...\n'

RESULTADO
Número 1
Número 2
Número 3
Número 4
Número 5
Press enter to continue...

</code>
</pre>


- 0018. ##### Hacer un bucle for para iterar sobre valores complejos, siendo estos valores palabras o frases.

<pre>
<code>

#!/bin/bash
clear
for var in Primero "El Segundo" "El Tercero" "El Quinto soy yo"; do
	echo Esto es: $var
done
read -rsp $'Press enter to continue...\n'

RESULTADO
Esto es: Primero
Esto es: El Segundo
Esto es: El Tercero
Esto es: El Quinto soy yo

</code>
</pre>


- 0019. ##### Hacer un blucle for para mostrar el contenido de un archivo.

<pre>
<code>

#!/bin/bash
clear
miarchivo="walter.txt"
for var in $(cat $miarchivo); do
	echo " $var"
done
read -rsp $'Press enter to continue...\n'

RESULTADO
 Hola
 esto
 esta
 en
 un
 archivo
Press enter to continue...

</code>
</pre>


- 0020. ##### Hacer un blucle for para leer un archivo, pero que considere el carácter de nueva línea como un separador en lugar de espacios.

<pre>
<code>

#!/bin/bash
clear
miarchivo="C:\etc\2.txt"
IFS=$'\n'
for var in $(cat $miarchivo); do
	echo " $var"
done
read -rsp $'Press enter to continue...\n'

RESULTADO

como esta

</code>
</pre>



- 0021. ##### Hacer un bucle for para leer un archivo pero que considere el carácter punto y coma como separador.

<pre>
<code>

#!/bin/bash
clear
miarchivo="walter21.txt"
IFS=$';'
for var in $(cat $miarchivo); do
	echo " $var"
done
read -rsp $'Press enter to continue...\n'

RESULTADO

 Luis
 Ruiz
 Roncal
 24
 1.74
Press enter to continue...

</code>
</pre>


- 0022. ##### Mostrar el directorio actual y el usuario que se ha logueado en el sistema. El simbolo # al inicio de una línea es para mostrar comentarios de una línea dentro del script, el comando echo es para mostrar mensajes en la pantalla, el comando pwd muestra el directorio actual y el comando whoami es para mostrar el usuario que se ha logueado en el sistema.

<pre>
<code>

#!/bin/bash
clear
# Nuestro comentario de una línea
echo "El directorio actual es: "
pwd
echo "El usuario logueado es: "
whoami 
read -rsp $'Press enter to continue...\n'

RESULTADO

El directorio actual es:
/c/PROYECTO_SCRIPT_LINUX
El usuario logueado es:
Curso Tarde


</code>
</pre>


- 0023. ##### Hacer un script que muestre el mensaje “El usuario NombreUsuario esta trabajando”. Con > nul anulamos la salida del comando para que no se muestre en pantalla.

<pre>
<code>

#!/bin/bash
clear
echo FORMA 1
if  whoami > nul; then
	echo "El usuario $USER esta trabajando"
fi;
echo FORMA 2
if whoami; then
	echo "El usuario $USER esta trabajando"
fi;
read -rsp $'Press enter to continue...\n'

RESULTADO
FORMA 1
El usuario  esta trabajando
FORMA 2
Curso Tarde
El usuario  esta trabajando
Press enter to continue...

</code>
</pre>


- 0024. ##### Hacer un script que verifique si un usuario existe o no existe.

<pre>
<code>

#!/bin/bash
clear
usuario=walter
if grep $usuario /etc/passwd > nul; 
then
	echo "El usuario $usuario existe"
else
	echo "El usuario $usuario no existe"
fi;
read -rsp $'Press enter to continue...\n'

RESULTADO

El usuario walter no existe

</code>
</pre>


- 0025. ##### Hacer un script que verifique si el usuario logueado puede crear un archivo.

<pre>
<code>

#!/bin/bash
clear
touch /root/prueba
if [ $? -eq 0 ];
then
	echo "Se ha creado el fichero"
else
	echo "No se ha creado el fichero"
fi;
read -rsp $'Press enter to continue...\n'

RESULTADO

touch: cannot touch '/root/prueba': No such file or directory
No se ha creado el fichero

</code>
</pre>


- 0026. ##### Script que verifica si el usuario logueado puede crear un archivo.

<pre>
<code>

#!/bin/bash
clear
touch prueba
if [ $? -eq 0 ];
then
	echo "Se ha creado el fichero"
else
	echo "No se ha creado el fichero"
fi;
read -rsp $'Press enter to continue...\n'

RESULTADO
Se ha creado el fichero

</code>
</pre>


- 0027. ##### Comprobar si puedo ingresar a mi carpeta personal de trabajo.

<pre>
<code>

#!/bin/bash
clear
micarpeta=/etc/
if [ -d $micarpeta ];
then
	echo "Carpeta $micarpeta existe"
	cd $micarpeta
	pwd
	ls
else
	echo "No hay archivo o directorio $micarpeta"
fi;
read -rsp $'Press enter to continue...\n'

RESULTADO

Carpeta /etc/ existe
/etc
DIR_COLORS        hosts                nsswitch.conf         services
bash.bash_logout  inputrc              package-versions.txt  ssh
bash.bashrc       install-options.txt  pkcs11                tigrc
docx2txt.config   msystem              pki                   vimrc
fstab             mtab                 profile
gitattributes     nanorc               profile.d
gitconfig         networks             protocols
Press enter to continue...


</code>
</pre>


- 0027. ##### Verificar si una variable tiene valor o no. Con –n busca un valor mayor que cero

<pre>
<code>

#!/bin/bash
clear
variable="Hola"
if [ -n $variable ];
then
	echo "Tiene una longitud mayor que cero"

else
	echo "Tiene una longitud de cero"
fi;
read -rsp $'Press enter to continue...\n'

RESULTADO

Tiene una longitud mayor que cero

</code>
</pre>