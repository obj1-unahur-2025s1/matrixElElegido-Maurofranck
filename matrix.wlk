
object nave{
    const pasajeros =#{}
    method cuantosPasajerosHay() = pasajeros.size()

    method pasajeroDeMayorVitalidad() = pasajeros.max({p => p.vitalidad() })
    method pasajeroDeMenorVitalidad() = pasajeros.min({p => p.vitalidad()})

    method estaEquilibrada(){
        return self.pasajeroDeMayorVitalidad().vitalidad() < self.pasajeroDeMenorVitalidad().vitalidad() * 2
        }

        method estaElElegido() = pasajeros.any({p=>p.esElElegido()})
    
    method chocar(){
        pasajeros.forEach({p => p.saltar() })
    }

    method acelerar(){
        pasajeros.filter({p=> p.noEsElElegido() }).forEach({p=>p.saltar()})
        pasajeros.remove(neo)
    }


}






object neo {
    var energia = 100

    method esElElegido() = true
    method salta(){
        energia = energia * 0.5
     }

    method vitalidad() {
        return  energia * 0.1
    }
}

object morfeo {
    var vitalidad = 8
    var estaDescansado = true
    
    
    method esElElegido()= false
    method salta(){
        estaDescansado = not estaDescansado
        vitalidad = (vitalidad -1).max(0)
    }
    method vitalidad() = vitalidad

} 

object trinity {
    method vitalidad() = 0
    method saltar() {

    }
}



