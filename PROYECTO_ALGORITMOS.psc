Algoritmo PROYECTO_ALGORITMOS
	//SISTEMA DE PEDIDDOS DE COMIDA A DOMICILIO
	//Si se paga en efectivo se descontara 3 soles del monto total
	//Si el monto total es mayor 50 soles, el delivery es gratis
	
	
	//Defincion variables
	Definir nombre_usuario, tipo_pago, direccion Como Caracter 
	Definir eleccion_entrada, eleccion_plato_fuerte, eleccion_bebida, eleccion_tipo_pago Como Entero
	Definir entrada, plato_fuerte, bebida Como Caracter 
	Definir documento, precio_entrada, precio_plato_fuerte ,precio_bebida, total_sin_igv, igv, total_con_igv, descuento, total_pagar Como Real
	Definir precio_delivery, descuento_efectivo como Real
	 
	descuento_efectivo = 0; 
	precio_delivery = 5
	
	//Entrada de datos
	Escribir "****************************************"
	Escribir "****** PEDIDOS A DOMICLIO SISEYA *******"
	Escribir "****************************************"
	
	Escribir "Ingrese su DNI:"
	Leer documento
	
	Escribir "Ingrese su nombre:"
	Leer nombre_usuario
	
	Escribir "Ingrese su direccion:"
	Leer direccion
	 
	
	Escribir "Elija una entrada:"
	Escribir "1. Ceviche" //4pm 5pm
	Escribir "2. Causa" //3pm //6pm
	Escribir "3. Sopa" //8pm //10pm
	Leer eleccion_entrada
	
	Escribir "Elija un plato fuerte:"
	Escribir "1. Seco de Res" //4pm 5pm
	Escribir "2. Arroz con Pollo" //3pm //6pm
	Escribir "3. Lazaña" //8pm //10pm
	Leer eleccion_plato_fuerte
	
	Escribir "Elija una bebida:"
	Escribir "1. Gaseosa" //4pm 5pm
	Escribir "2. Chicha" //3pm //6pm
	Escribir "3. Limonada" //8pm //10pm 
	Leer eleccion_bebida
	
	Escribir "Elija un tipo de pago:"
	Escribir "1. Tarjeta de credito" //4pm 5pm
	Escribir "2. Efectivo" //3pm //6pm
	Escribir "3. Yape" //8pm //10pm 
	Leer eleccion_tipo_pago
	
	// Proceso 

	si (eleccion_entrada == 1) Entonces
		entrada = "Ceviche"
		precio_entrada = 5
	sino 
		si (eleccion_entrada == 2) Entonces
			entrada = "Causa"
			precio_entrada = 4
		sino 			
			entrada = "Sopa"
			precio_entrada = 3
		finsi
	FinSi
	
	si (eleccion_plato_fuerte == 1) Entonces
		plato_fuerte = "Seco de Res"
		precio_plato_fuerte = 12
	sino 
		si (eleccion_plato_fuerte == 2) Entonces
			plato_fuerte = "Arroz con Pollo"
			precio_plato_fuerte = 11
		sino 			
			plato_fuerte = "Lazaña"
			precio_plato_fuerte = 10
		finsi
	FinSi
	
	si (eleccion_bebida == 1) Entonces
		bebida = "Gaseosa"
		precio_bebida = 3
	sino 
		si (eleccion_bebida == 2) Entonces
			bebida = "Chicha"
			precio_bebida = 2
		sino 			
			bebida = "Limonada"
			precio_bebida = 1
		finsi
	FinSi
	
	si (eleccion_tipo_pago == 1) Entonces
		tipo_pago = "Tarjeta de credito"  
	sino 
		si (eleccion_tipo_pago == 2) Entonces
			tipo_pago = "Efectivo" 
			descuento_efectivo = 3
		sino 			
			tipo_pago = "Yape" 
		finsi
	FinSi
	
	
	total_con_igv = precio_entrada + precio_plato_fuerte + precio_bebida - descuento_efectivo
	igv = total_con_igv * 0.18
	total_sin_igv = total_con_igv -igv
	
	si (total_con_igv>50) entonces
		precio_delivery = 0
	fin si
	total_pagar = total_con_igv+precio_delivery
	
	//	Segun eleccion_entrada Hacer
//		1:
//			entrada = "Ceviche"
//			precio_entrada = 5
//		2:
//			entrada = "Causa"
//			precio_entrada = 4
//		3:
//			entrada = "Sopa"
//			precio_entrada = 3
//		De Otro Modo:
//			entrada = "Ceviche"
//			precio_entrada = 5
//	Fin Segun
	
	
	//salida
	Escribir "*******************************"
	Escribir "****** BOLETA DE COMPRA *******"
	Escribir "*******************************"
	Escribir "Documento de Identidad: ", documento
	Escribir "Nombre:  ", nombre_usuario
	Escribir "Dirección: ", direccion
	Escribir "Entrada :", entrada ,  "  -- S/. : ", precio_entrada
	Escribir "Plato fuerte: ", plato_fuerte ,  "  -- S/. : ", precio_plato_fuerte
	Escribir "Bebida:  ", bebida ,  "  -- S/. : ", precio_bebida 
	Escribir "Descuento :", descuento_efectivo
	Escribir "Total sin IGV: ", total_sin_igv	
	Escribir "IGV:", igv
	Escribir "Total con IGV: ", total_con_igv
	Escribir "Precio delivery: ",  precio_delivery
	Escribir "Total a pagar ", total_pagar
	
FinAlgoritmo
