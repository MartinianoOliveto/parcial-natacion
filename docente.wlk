class DocenteBasico{
    var property esGuardavida
    
    method puedeDarClaseA(estudiante){
        return true 
    }
    method disminuirCupoMenores(){
        
    }
    method honorarios(curso){
        return 20 + curso.recaudacionBruta() * self.porcentaje()
    }
    method porcentaje(){
        return 0.1
    }
}

class Dedicado inherits DocenteBasico{
    var property estilo

    override method puedeDarClaseA(estudiante){
        return estudiante.domina(estilo)
    }
    override method porcentaje(){
        return 0.15
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
    override method honorarios(curso){
        return super(curso) + 3 *curso.cantIncriptos()
    }
}