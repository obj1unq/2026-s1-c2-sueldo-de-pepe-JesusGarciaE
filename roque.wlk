import bonos.*


object roque {
    const sueldoNeto = 28000 
    const premio = 9000 
    var bonoPresentismo = bonoNulo
    
    method sueldo() {
        return sueldoNeto + bonoPresentismo.monto(self) + premio
    }

    method setBonoPresentismo(_bonoPresentismo) {
        bonoPresentismo = _bonoPresentismo
    }
}
