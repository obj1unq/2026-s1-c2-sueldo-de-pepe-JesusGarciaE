import categorias.*
import bonos.*
import pepe.*
import roque.*
import sofia.*

object ernesto {
    var bonoPresentismo = bonoNulo
    var compañero = pepe

    method setBonoPresentismo (_bonoPresentismo){
		bonoPresentismo = _bonoPresentismo
	}

    method compañero(_compañero) {
        compañero = _compañero
    }

    method sueldo()  {
        return compañero.sueldo() + bonoPresentismo.monto(self)
    }
}