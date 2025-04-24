import wollok.game.*

object cabeza {
  var property position = game.at(2, 2)
  var property height = game.height(1)
  var property width = game.width(1)
  var property imagenDef = "head_up.png"
  
  method image() = imagenDef
  
  method cambiarImagen(imagen) {
    imagenDef = imagen
  }
  
  method mover(nuevaPosicion) {
    position = nuevaPosicion
  }
  
  method position() = position
}

object cuerpo {
  var property position = cabeza.position().down(1)
  var property imagenDef = "body_vertical.png"
  var property height = game.height(1)
  var property width = game.width(1)
  
  method image() = imagenDef
  
  method position() = position
  
  method mover(nuevaPosicion) {
    position = nuevaPosicion
  }
}

object cola {
  var property position = cabeza.position().down(2)
  var property imagenDef = "tail_down.png"
  var property height = game.height(1)
  var property width = game.width(1)
  
  method image() = imagenDef
  
  method cambiarImagen(nuevaImg){
    imagenDef=nuevaImg
  }
  method position() = position
  
  method mover(nuevaPosicion) {
    position = nuevaPosicion
  }
}


object manzana{
  var property position = game.at(self.getX(),self.getY())
  var property height = game.height(1)
  var property width = game.width(1)
  var property imagenDef = "apple.png" 

  method image() = imagenDef

  method position() = position

  method getX() = new Range(start = 1, end= 7).anyOne()
  method getY() = new Range(start = 1, end= 7).anyOne()

  method mover(){ 
    position = game.at(self.getX(),self.getY())
  }
}