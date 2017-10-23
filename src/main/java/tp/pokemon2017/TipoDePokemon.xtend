package tp.pokemon2017

import java.util.Collection
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class TipoDePokemon {
	String tipo
	Collection<TipoDePokemon> resistente
	Collection<TipoDePokemon> fuerte

	def fortaleza(Especie especie) {
		especie.tipos.exists[elemento|fuerte.contains(elemento)]
		

	}

	def resistencia(Especie especie) {
		especie.tipos.exists[elemento|resistente.contains(elemento)]
	}

}