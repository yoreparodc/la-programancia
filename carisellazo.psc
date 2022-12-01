Proceso carisellazo

	//	Estas ubicado en Rama Developer
	
	//	Este algoritmo fue diseÃ±ado por:
	
	//	Juan Pablo Ospina Delgado
	//	Dairo Rafael Baldovino PÃ©rez
	//	Juan Carlos Espejo Alvarez
	
	//	Para simular el lanzamiento de una moneda y ser ejecutado en PSeint
	//	Las condiciones del vehiculo son las siguientes:
	
	//	1) Se simula el lanzamiento de una moneda.
	//	2) El jugador puede elegir cara o sello antes de que caiga la moneda.
	//	3) El juego debe decirle si gana o pierde, gana cuando la moneda coincide con la elecciÃ³n del jugador.
	//	4) Puede decidir si quiere jugar nuevamente.
	//	5) Puede apostar dinero en cada partida.
	//	6) Cada vez que gane debe duplicar el valor ganado.
	//	7) Cada vez que pierda debe restar el valor apostado.
	//	8) Al final del juego debe decirle la cantidad de veces que jugÃ³ y el dinero que acumulÃ³.
	

	Escribir "************************************************";
	Escribir "************* La Programancia **************" ;
	Escribir "**************** Casino Club ****************";
	Escribir "************************************************";
	Escribir "";

	Escribir "	Â¡Bienvenido al Juego de la Moneda!";
	Escribir "";
	Escribir "	Este algoritmo fue diseñado por:";
	Escribir "";
	Escribir "	Juan Pablo Ospina Delgado";
	Escribir "	Dairo Rafael Baldovino Pérez";
	Escribir "	Juan Carlos Espejo Álvarez";
	Escribir "";
	Escribir "	Para simular el lanzamiento de una moneda, usando PseInt.";
	Escribir "";
	Escribir "	(((Instrucciones)))";
	Escribir "";
	Escribir "	Primero debes recargar saldo, luego eliges entre Cara o Sello ";
	Escribir "	Si ganas duplicaré el valor apostado y lo sumare a tu saldo, si pierdes lo descontaré.";
	
	
	Definir jugador, rpta, rpta2,decision,game_over Como Caracter;
	Definir cont,valor_ficha,i,moneda,saldo,contador,apostado,eleccion,botin Como Entero;
	Escribir "";
	game_over<- "	¡Lo que pasa en las vegas, se queda en las vegas!";
	cont<- 0;
	apostado<- 0;
	valor_ficha<- 500;
	
	
	
	Escribir "	Cada ficha tiene un valor de 500 pesos COP.";
	Escribir "";
	Escribir "   ¿Cuántas fichas deseas?";
	Leer saldo;
	Escribir "";
	Escribir "	¡La moneda está en el aire!";
	Escribir "";
	Escribir "	¿Quieres apostar?, Pulsa (y) para Si, (cualquier tecla) para No.";
	
	//--------------------------------------------------------------------------------------------------------------
	Leer decision;
	Escribir "";
	
	Mientras decision = "y" Hacer
		
		
		Mientras decision = "y" Hacer
			
			//Ahora el usuario hace una elección entre dos valores, Cara o Sello
			Escribir "	Para elegir Cara pulsa (1), ó para Sello pulsa (2)";
			Leer eleccion;
			Escribir "";
			
			si saldo > 0 Entonces
				
				si eleccion <= 2 Entonces
					//la siguiente función elige entre cara y sello aleatoriamente
					moneda <- azar(2) ;
					si moneda = 1 Entonces
						rpta2 <- "cara" ;
					SiNo
						rpta2 <- "sello";
					FinSi
					
					//Ahora informo al usuario en que cayó la moneda
					Escribir "	La moneda cayó ","(((",rpta2,")))";
					Escribir "";
					
				SiNo
					Escribir "	","(",eleccion,")"," No es una opción valida";
					Escribir "	Para Cara pulsa (1), para Sello pulsa (2)";
					leer eleccion;
					
				FinSi
				
			FinSi
			
			
			
			
			
			//Ahora informo al usuario si Gano o Perdio, sumo o resto el resultado en saldo y le informo el saldo
			si moneda = eleccion Entonces
				Escribir "	¡Ganaste!";
				saldo<- saldo + 1;
				Escribir "	Ahora tienes ","(",saldo,")"," fichas";
				Escribir "";
				Escribir "	¿Te animas a otro volado?";
				Escribir "	Usa (y) para Si, (n) para No.";
				Leer decision;
				Escribir "";
			SiNo
				Escribir "";
				Escribir "	¡Perdiste!";
				saldo<- saldo -1;
				Escribir "	Ahora tienes ","(",saldo,")"," fichas";
				Escribir "";
				Escribir "	¿Te animas a otro volado?";
				Escribir "	Usa (y) para Si, (n) para No.";
				Leer decision;
				Escribir "";
			FinSi
			
			//cont cuenta el número de veces que jugo
			cont<- cont+1;
			
			
		FinMientras
		
		
		
		
	FinMientras
	
	
	
	//--------------------------------------------------------------------------------------------------------------
	
	//botin informara al usuario acuanto dinero COP equivalen las fichas que le quedaron
	botin<- saldo*valor_ficha;
	
	Escribir game_over;
	Escribir "";
	
	
	Escribir "	Jugaste ", "(",cont,")"," fichas en todo el juego";
	Escribir "	Total fichas ganadas: ", saldo;
	Escribir "";
	Escribir "	Te llevas a casa ",botin," pesos COP, ¡No te vayas a enloquecer!";
	
FinProceso

	
	