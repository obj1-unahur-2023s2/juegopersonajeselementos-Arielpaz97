object ballesta{
	var flechas = 10
	const potencia = 4
	method potencia() = potencia
	method usar() = flechas--
	method estaCargada() = flechas > 0
}

object jabalina{
	var usada = true
	const potencia = 30
	method potencia() = potencia
	method usar() {
		usada = false
	}
	method estaCargada() = usada
}