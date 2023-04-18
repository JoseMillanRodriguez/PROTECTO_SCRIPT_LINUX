# PSEINT
<p>
PSeInt is a free and open-source software tool designed to help students and beginners learn computer programming concepts. The name "PSeInt" stands for "Pseudo-Interpreter," which refers to its ability to simulate the execution of computer programs written in pseudocode. Pseudocode is a simplified form of programming code that is used to describe the logic of a program without being tied to any specific programming language.
</p>

<p>
PSeInt provides a simple and intuitive interface that allows users to write pseudocode, execute it, and visualize the program flow. It supports a wide range of programming constructs, including conditionals, loops, functions, and arrays. PSeInt is available for Windows, macOS, and Linux operating systems, and is used in many educational institutions around the world to teach programming concepts.
</p>

# EJEMPLOS DE PSEINT 

<pre>
<code>
{Proceso} Adivina_Numero

	{Definir intentos,num_secreto,num_ingresado Como Entero}{;}
	intentos<-10{;}
	num_secreto <- azar(100)+1{;}
	
	Escribir "Adivine el numero (de 1 a 100):"{;}
	Leer num_ingresado{;}
	Mientras num_secreto<>num_ingresado {&} intentos>1 Hacer
		Si num_secreto>num_ingresado Entonces
			Escribir "Muy bajo"{;}
		SiNo 
			Escribir "Muy alto"{;}
		FinSi
		intentos <- intentos-1{;}
		Escribir "Le quedan ",intentos," intentos:"{;}
		Leer num_ingresado{;}
	FinMientras
	
	Si num_secreto=num_ingresado Entonces
		Escribir "Exacto! Usted adivino en ",11-intentos," intentos."{;}
	SiNo
		Escribir "El numero era: ",num_secreto{;}
	FinSi
	
{FinProceso} 
</code>
</pre>

# ANEXO 1: VIDEO YOUTUBE

<p align="center">
  <a href="https://www.youtube.com/watch?v=DvkMnbrF3xw"_blank">
     <img src="https://i.ytimg.com/vi/DvkMnbrF3xw/hq720.jpg" alt="Expresiones Regulares" width="400" height="300" border="10" /></a>
  <a href="https://www.youtube.com/watch?v=DvkMnbrF3xw"></a>
</p>
