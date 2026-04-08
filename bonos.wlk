// bono por resultados por porcentaje
object bonoPorcentaje {
	method monto(empleado) { 
		return empleado.sueldoNeto() * 10 / 100 
	}
}


// bono por resultados de monto fijo
object bonoMontoFijo {
	// agregar el método que se necesita
	method monto(empleado){
		return  800
	}
}


// agregar bonos por presentismo  
object bonoPresentismoNormal {
	// agregar el método que se necesita
	
	const diasConFaltas = 0
	
	const diasConUnaFalta = 1


	method monto(empleado){
		if (diasConFaltas == empleado.cantidadDeFaltas()){
			return 2000
		} 
		else if (diasConUnaFalta == empleado.cantidadDeFaltas()) {
			return 1000
		}
		else {
			return 0
		}
	}
}
// agregar bonos ajuste y demagogico
 object bonoPorAjuste {
	const diasConFaltas = 0


	method monto(empleado) {
		if (diasConFaltas ==  empleado.cantidadDeFaltas()){
			return empleado.sueldoNeto() +100
		}
		else {
			return 0
		}
	}
 }

/*
 * Bono nulo: sirve para resultados y para presentismo, cuando el importe es 0 
 * (o "nada")
 */
object bonoNulo {
	method monto(empleado) {
		return 0 } 
}

