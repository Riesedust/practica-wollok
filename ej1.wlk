object afa {
  var arcas = 0
  var recaudacion = 0
  var cantidadDeGente = 0
  
  method hacerPartido(estadio, jugador) {
    cantidadDeGente = estadio.capacidad() * jugador.popularidad()
    recaudacion =
      ((cantidadDeGente * jugador.precio()) - estadio.precio()) - jugador.viaticos()
    arcas += recaudacion
    return recaudacion
  }
  
  method verArca() = arcas
}

object cristiano {
  var frio = 0
  method popularidad() = messi.popularidad() / 2
  
  method precio() = messi.precio() / 2
  
  method viaticos() = messi.viaticos() * 2

  method juegaAntartida(){
    frio +=100
  }
}

object mbappe {
  var edad = 25
  var goles = 9
  
  method cumpleanios() {
    edad += 1
  }
  
  method metegol() {
    goles += 1
  }
  
  method popularidad() = edad / goles
  
  method precio() = messi.precio() / 3
  
  method viaticos() = edad * goles
}

object messi {
  var popularidad = 0.98
  method popularidad() = popularidad
  
  method precio() = 10000
  
  method viaticos() = 5000000
  method opinaPresi() = popularidad - 0.10
}

object monumental {
  var obras = 50
  
  method capacidad() = (obras / 100) * 100000
  
  method valor() = bombonera.valor() * 2
  
  method avanzanObras() {
    if (obras < 100) {
      obras += 10
    }
  }

}

object bombonera {
  method capacidad() = 50000
  
  method valor() = 10000000
}