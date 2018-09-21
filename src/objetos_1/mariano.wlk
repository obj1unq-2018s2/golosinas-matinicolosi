object mariano {
	// para este objeto no damos pistas
	// definimos algunos métodos para que compile el test
	var property bolsaGolosinas = []
	method comprar(golosina) { bolsaGolosinas.add(golosina) }
	method desechar(golosina) { bolsaGolosinas.remove(golosina) }
	method golosinas() {
		/* cambiar por la implementacion correcta */ 
		return bolsaGolosinas
	}
	
	method probarGolosinas() { bolsaGolosinas.forEach({golosina => golosina.mordisco()}) }
	method hayGolosinaSinTACC() { return bolsaGolosinas.any({golosina => golosina.libreGluten()}) }
	method preciosCuidados() { return bolsaGolosinas.all({golosina => golosina.precio() <= 10}) }
	method golosinaSabor(unSabor) { return bolsaGolosinas.find({golosina => golosina.gusto() == unSabor}) }
	method golosinasSabor(unSabor) { return bolsaGolosinas.filter({golosina => golosina.gusto() == unSabor}) }
	method sabores() { return bolsaGolosinas.map({golosina => golosina.gusto()}).withoutDuplicates() }
	method golosinaMasCara() { return bolsaGolosinas.max({golosina => golosina.precio()}) }
	method pesoGolosinas() { return bolsaGolosinas.sum({golosina => golosina.peso()}) }
	method golosinasFaltantes(golosinasDeseadas) { return golosinasDeseadas.filter({golosina => self.esGolosinaFaltante(golosina)}) }
	method esGolosinaFaltante(dulce) {return bolsaGolosinas.all({golosina => golosina != dulce})}
	method gustosFaltantes(gustosDeseados) { return gustosDeseados.filter({gusto => self.esGustoFaltante(gusto)})}
	method esGustoFaltante(gusto) { return bolsaGolosinas.all({golosina => golosina.gusto() != gusto})}
}

