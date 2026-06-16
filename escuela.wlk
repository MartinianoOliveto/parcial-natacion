class Escuela{
    var property dinero
    const property cursos
    method cobrarRecaudacion(){
        dinero = dinero + self.recaudacionTotal()
    } 
    method recaudacionTotal(){
        return cursos.sum({c=>c.recaudacion()})
    }
    method cursoConEstilo(estilo){
        return cursos.find({c => c.algunEstudianteDomina(estilo)})
    }
    method cursosInfantiles(){
        return cursos.filter({c => c.esInfantil()})
    }
    method docentesInfantiles(){
        return self.cursosInfantiles().map({c => c.docente()})
    }
}