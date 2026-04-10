import categorias.*
import bonos.*

object sofia {
    var categoria = cadete

    const porcentualDelSueldo = 1.3

    method sueldo () {
        return self.sueldoNeto() + bonoMontoFijo.monto(self)
    }

    method sueldoNeto() { 
		return categoria.neto() * porcentualDelSueldo
        }
    method categoria(_categoria) {
         categoria = _categoria
    }
}
