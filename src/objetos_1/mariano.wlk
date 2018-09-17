object mariano {
	// para este objeto no damos pistas
	// definimos algunos métodos para que compile el test
	var bolsaGolosinas = []
	method comprar(golosina) { bolsaGolosinas = bolsaGolosinas.add(golosina) }
	method desechar(golosina) { bolsaGolosinas = bolsaGolosinas.filter(golosina) }
	method golosinas() {
		/* cambiar por la implementacion correcta */ 
		return [] 
	}
	
	method probarGolosinas() { /* completar */ }
}

