Algoritmo Sistema_De_Costos
	Definir i, precio, cuponvalido, cupon, cantidad, descuento, envio, costoenvio,sumaenvio Como Entero
	Definir descup, pd, impuesto, valorimpuesto, precioiva, preciodescuento, total, descuentocupon, descuentocantidad, sumaimpuesto Como Real
	Dimension costoenvio[3] 
	sumaenvio<-0
	
	Escribir "#####Bienvenido al sistema de costos#####"
	Escribir "A continuacion ingrese los datos de la compra:"
	
	Escribir "Precio del produto $"
	Leer precio
	
	Escribir "¿Cuenta con cupon de descuento: 1-Si  2-No?"
	Leer cuponvalido
	
	Si cuponvalido==1	Entonces
		Escribir "Ingrese el porcentaje de descuento (Ej:10 - 15 - 50 %)"
		Leer cupon
		descup<-(100-cupon)/100
		pd<-precio*descup
		Escribir pd
	SiNo
		pd<-precio
	Fin Si
	
	Escribir "Ingrese el porcentaje de IVA que aplica"
	Leer impuesto
	valorimpuesto<-(impuesto/100)+1
	precioiva<-pd*valorimpuesto
	Escribir precioiva
	
	Escribir "¿Cantidad de productos?"
	Leer cantidad
	
	Si cantidad>1 Entonces
		Escribir "Se aplica descuento por ser mas de un producto"
		Escribir "Ingrese el descuento a aplicar por producto (Ej:10% - 15% - 50%)"
		Leer descuento
		preciodescuento<-precioiva*((100-descuento)/100)
		Escribir preciodescuento
	SiNo
		preciodescuento<-precioiva
	Fin Si
	
	Escribir "::Costo de envío de los productos::"
	Escribir "Ingrese los valores del cargo fijo hacia el destino y "
	Escribir "los valores de peso (KG) y de costo de envío ($) de uno en uno:"
	
	Para i<-0 Hasta 2 Con Paso 1 Hacer
		Leer  costoenvio[i]
	Fin Para
	
	sumaenvio<-costoenvio[0] + (costoenvio[1]*costoenvio[2])
	descuentocupon<-(cupon/100)*precio
	sumaimpuesto<-pd*(impuesto/100)
	descuentocantidad<-precioiva*(descuento/100)
	
	Escribir "Descuento por cupon: " descuentocupon
	Escribir "Importe de impuesto: " sumaimpuesto
	Escribir "Descuento por cantidad de articulos: " descuentocantidad
	Escribir "El costo del envio es: " sumaenvio
	
	total<-(preciodescuento*cantidad)+sumaenvio
	Escribir "Costo final del producto: " total
	
FinAlgoritmo
