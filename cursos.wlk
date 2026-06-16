class CursoBase{
    const property estudiantesInscriptos=#{}
    var property cupo 
    var property docente 
    const property recaudacionPorPersona = 20

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
    method puedeInscribirse(estudiante){
        return self.hayVacantes() && !self.estaInscripto(estudiante)  && 
                docente.puedeDarClaseA(estudiante) && self.cumpleObjetivo(estudiante)
    }
    method validarInscripcion(estudiante){
        self.validarSiEstaInscripto(estudiante)
        self.validarVacantes()
        self.validarDocente(estudiante)
        self.validarObjetivo(estudiante)
    }
    method inscribir(estudiante){
        self.validarInscripcion(estudiante)
        estudiantesInscriptos.add(estudiante)
        cupo-=1
        docente.disminuirCupoMenores()
    }

    method recaudacion(){
        return self.recaudacionBruta() - docente.honorarios(self)
    }
    method recaudacionBruta(){
        return self.totalBruto() - self.totalDescuentos()
    }
    method totalBruto(){
        return recaudacionPorPersona * self.cantInscriptos() 
    }
    method cantInscriptos(){
        return estudiantesInscriptos.size()
    }
    method totalDescuentos(){
        return estudiantesInscriptos.sum({e => e.descuentos()})
    }
    method algunEstudianteDomina(estilo){
        return estudiantesInscriptos.any({e => e.domina(estilo)})
    }
    method esInfantil(){
        return estudiantesInscriptos.all({e =>e.esMenor(13)})
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
    method validarObjetivo(estudiante){
        if(!self.cumpleObjetivo(estudiante)){
            self.error("El estudiante no cumple el objetivo")
        }
    }
}
class Escuelita inherits CursoBase{
    const edadAceptable = 13 

    override method cumpleObjetivo(estudiante){
        return super(estudiante) && estudiante.esMenor(edadAceptable)
    }
    override method recaudacionBruta(){
        return super() + 500
    }

}
class Terapeutico inherits CursoBase{
    var property recaudacionBruta
    override method cumpleObjetivo(estudiante){
        return estudiante.dominaAlMenosUnEstiloRelajante()
    }
}

