class CursoBase{
    const property estudiantesInscriptos=#{}
    var property cupo 
    var property docente 

    method estaInscripto(estudiante){
        return estudiantesInscriptos.contains(estudiante)
    }
    method hayVacantes(){
        return cupo > self.cantidadInscriptos()
    }
    method cantidadInscriptos(){
        return estudiantesInscriptos.size()
    }
    method cumpleObjetivo(estudiante){
        return estudiante.dominaAlMenosUnEstilo() || docente.esGuardavida()
    }
    method puedeInscribir(estudiante){
        self.validarSiEstaInscripto(estudiante)
        self.validarVacantes()
        self.validarDocente(estudiante)
    }
    method inscribir(estudiante){
        self.puedeInscribir(estudiante)
        estudiantesInscriptos.add(estudiante)
        cupo-=1
    }

    //Validaciones 
    method validarSiEstaInscripto(estudiante){
        if(self.estaInscripto(estudiante)){
            self.error("Ya esta inscripto")
        }
    }
    method validarVacantes(){
        if(!self.hayVacantes()){
            self.error("No hay vacantes")
        }
    }
    method validarDocente(estudiante){
        if(!docente.puedeDarClaseA(estudiante)){
            self.error("El docente no esta habilitado")
        }
    }
}
class Escuelita inherits CursoBase{
    const edadAceptable = 13 

    override method cumpleObjetivo(estudiante){
        return estudiante.esMenor(edadAceptable)
    }
}
class Terapeutico inherits CursoBase{
    override method cumpleObjetivo(estudiante){
        return estudiante.dominaAlMenosUnEstiloRelajante()
    }
}

