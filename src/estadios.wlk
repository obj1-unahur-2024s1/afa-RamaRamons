import afa.*
import Jugadores.*

object bombonera {
	method capacidad() = 50000
	method alquilerDelEstadio() = 20
}
object monumental {
	const capacidadTotal = 1000000
	var capacidadDelAvance = 55
	method nuevosAvances() {
		capacidadDelAvance = 100.min(capacidadDelAvance+5)
	}
	method capacidad() = capacidadTotal * (capacidadDelAvance / 100)
	method alquilerDelEstadio() = 50
}