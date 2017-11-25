
import UIKit

enum Velocidades : Int{
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init (velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}


class Auto {
    var velocidad : Velocidades
    
    init(){
        self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() -> ( actual : Int, velocidadEnCadena: String) {
        
        if self.velocidad == .Apagado {
            self.velocidad = .VelocidadBaja
        } else if self.velocidad == .VelocidadBaja {
            self.velocidad = .VelocidadMedia
        } else if self.velocidad == .VelocidadMedia {
            self.velocidad = .VelocidadAlta
        } else if self.velocidad == .VelocidadAlta {
            self.velocidad = .VelocidadMedia
        }
        
        return (self.velocidad.rawValue, "")
    }
    
    func texto() -> String {
        var label: String
        switch(self.velocidad.rawValue) {
            case 0 :
                label = "Apagado"
            case 20 :
                label = "Velocidad baja"
            case 50 :
                label = "Velocidad media"
            case 120 :
                label = "Velocidad alta"
            default :
                label = "Apagado"
        }
        return "\(self.velocidad.rawValue), \(label)"
    }
}

var auto = Auto()

for var i = 0; i<20; i++ {
    print(auto.texto())
    auto.cambioDeVelocidad()
}
