
object gerente {
	method neto() { return 15000 } 
}

// agregar cadete
object cadete {
	method neto (){
		return 20000
	}
}

object vendedor {
	method neto (){
		return 16000
	}
}

object medioTiempo {
	var categoria = cadete

	method neto (){
	return self.categoriaBase(categoria)
	}
	method setCategoria(_categoria) {
		categoria = _categoria
	}
	method categoriaBase(categoria1) {
		return categoria1.neto() * 50 / 100
	}
}