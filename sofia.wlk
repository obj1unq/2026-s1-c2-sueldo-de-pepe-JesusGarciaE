import categorias.*
import bonos.*

object sofia {
    var categoria = cadete
    var bonoResultado = bonoNulo
    const porcentualDelSueldo = 1.3

    method sueldo () {
        return self.sueldoNeto() + bonoResultado.monto(self)
    }

    method setBonoResultado(_bonoResultado) {
      bonoResultado = _bonoResultado    
    }
    method sueldoNeto() { 
		return categoria.neto() * porcentualDelSueldo
        }
    method categoria(_categoria) {
         categoria = _categoria
    }
}
