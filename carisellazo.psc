Proceso carisellazo
	//	Estas ubicado en Rama Master
	//	juan carlos espejo agrego valores aleatorios de la moneda.
	
	//	Este algoritmo fue diseñado por:
	
	//	Juan Pablo Ospina Delgado
	//	Dairo Rafael Baldovino Pérez
	//	Juan Carlos Espejo Álvarez
	
	//	Para simular el lanzamiento de una moneda y ser ejecutado en PSeint
	//	Las condiciones del vehiculo son las siguientes:
	
	//	1) Se simula el lanzamiento de una moneda.
	//	2) El jugador puede elegir cara o sello antes de que caiga la moneda.
	//	3) El juego debe decirle si gana o pierde, gana cuando la moneda coincide con la elección del jugador.
	//	4) Puede decidir si quiere jugar nuevamente.
	//	5) Puede apostar dinero en cada partida.
	//	6) Cada vez que gane debe duplicar el valor ganado.
	//	7) Cada vez que pierda debe restar el valor apostado.
	//	8) Al final del juego debe decirle la cantidad de veces que jugó y el dinero que acumuló.
	
	Escribir "************************************************";
	Escribir "************* La Programancia **************" ;
	Escribir "**************** Casino Club ****************";
	Escribir "************************************************";
	Escribir "";
	Escribir "	¡Bienvenido al Juego de la Moneda!";
	Escribir "";
	Escribir "	(((Instrucciones)))";
	Escribir "";
	Escribir "	Primero debes recargar saldo, luego eliges entre cara o sello. ";
	Escribir "	Si ganas duplicaré el valor apostado y lo sumare a tu saldo, si pierdes lo descontaré.";
	Escribir "";
	
	Definir rpta, rpta2 Como Caracter;
	Definir moneda Como Entero;
	Escribir "";
	
	
	
		//la siguiente función elige entre cara y sello aleatoriamente
		moneda <- azar(2) ;
		si moneda = 1 Entonces
			rpta2 <- "cara" ;
		SiNo
			rpta2 <- "sello";
		FinSi
		
		
	
	
	
	
FinProceso

	
	