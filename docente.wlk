class DocenteBasico{
    var property esGuardavida
    method puedeDarClaseA(estudiante){
        return true 
    }
    method disminuirCupoMenores(){
        
    }
}

class Dedicado inherits DocenteBasico{
    var property estilo

    override method puedeDarClaseA(estudiante){
        return estudiante.domina(estilo)
    }

}

class Externo inherits DocenteBasico{
    var property limiteMenores 
    
    override method puedeDarClaseA(estudiante){
        return if(estudiante.edad() <13){
            self.hayCupoMenores()
        }else{
            true 
        }
    }
    method hayCupoMenores(){
        return limiteMenores >0
    }
    override method disminuirCupoMenores(){
        limiteMenores=-1
    }
}