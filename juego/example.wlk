import wollok.game.*
object pepita {
  var energy = 100

  method energy() = energy

  method fly(minutes) {
    energy = energy - minutes * 3
  }
}

object auto{
  var property position = game.origin()
  var property height = game.height(5)
  var property width = game.width(5)
  var property imagenDef = "carup.png" 
  method image() = imagenDef

  method cambiarImagen(imagen){
    imagenDef = imagen
  }

  method mover(nuevaPosicion) {
    position = nuevaPosicion
  }
}