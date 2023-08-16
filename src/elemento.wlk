object castillo{
	const altura = 20
	var nivelDeDefensa = 150
	method altura() = altura
	method recibirAtaque(valor){
		nivelDeDefensa = 0.max(nivelDeDefensa - valor)	
	}  
	method recibirTrabajo(){
		nivelDeDefensa = 200.min(nivelDeDefensa + 20)
	}
	method otorgarUnidades() = nivelDeDefensa * 0.2
}

object aurora{
	const altura = 1
	var viva = true
	method altura() = altura
	method viva() = viva
	method recibirAtaque(valor){
		viva = valor < 10 && viva
	}
	method recibirTrabajo(){}
	method otorgarUnidades() = 15
}

object tipa{
	var altura = 8
	method altura() = altura
	method recibirAtaque(valor){}
	method recibirTrabajo(){
		altura++
	}
	method otorgarUnidades() = 2 * altura 
}
