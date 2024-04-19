import Jugadores.*
import estadios.*

object afa {
	var plataAcumulada = 0
	var jugadorActual = messi
	var estadioActual = bombonera
	
	method jugadorActual() = jugadorActual
	method jugadorActual(nuevoJugador){jugadorActual = nuevoJugador}
	method estadioActual() = estadioActual
	method estadioActual(nuevoEstadio){estadioActual = nuevoEstadio}
	
	method precioDeEntrada(){
		return 10000 * inflacion.inflacionActual()
	}
	method cantidadDeVentas(){
		return (estadioActual.capacidad() * jugadorActual.popularidad() / 100)
	}
	method totalRecaudado(){
		return self.cantidadDeVentas() * self.precioDeEntrada()	
	}
	method valorEvento() = 1000000
	
	method gananciaNeta(){
		return 0.max(self.totalRecaudado() - self.costoDeEvento())
	}
	
	method costoDeEvento(){
		return self.valorEvento() + jugadorActual.viaticos() + estadioActual.alquilerDelEstadio()
	}
	method jugarPartido(){
		plataAcumulada += self.gananciaNeta()
	}

}
object inflacion {
	method inflacionActual() = 1.5
}