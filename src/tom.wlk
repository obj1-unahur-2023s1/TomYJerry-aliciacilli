import ratones.*
object tom {
	var energia = 80
	var posicion = 0
	
	method energia(){
		return energia
	}	
	method velocidad (){
		return 5 + (self.energia() / 10)
	}	
	
	method posicion (){
		return posicion
	}
	
	
	method correrA(unRaton){
		energia = 0.max (energia - 0.5 * self.velocidad() * (posicion - unRaton.posicion()).abs())
		posicion = unRaton.posicion()
	}
	
	method esMasVeloz(unRaton){
		return self.velocidad() > unRaton.velocidad()
	}
		
	
}
