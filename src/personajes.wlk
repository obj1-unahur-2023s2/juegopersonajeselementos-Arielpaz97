import armas.*
import elemento.*

object floki{
	var arma = ballesta
	
	method arma() = arma
	
	method arma(unArma){
		arma = unArma
	}
	
	method encontrar(elemento){
		if (arma.estaCargada()){
			elemento.recibirAtaque(arma.potencia())
			arma.usar()
		}
	}
}

object mario{
	var elementoUsado = castillo
	var unidadesRecolectadas = 0
	method esFeliz() = (unidadesRecolectadas > 50) || (elementoUsado.altura() > 10)
	
	method encontrar(elemento){
		unidadesRecolectadas += elemento.otorgarUnidades()
		elemento.recibirTrabajo()
		elementoUsado = elemento
	}
}	

object luisa{
	var personajeActivo = floki
	method personajeActivo(personaje) {
		personajeActivo = personaje
	}
	method aparece(elemento){
		personajeActivo.encontrar(elemento)
	}
}


