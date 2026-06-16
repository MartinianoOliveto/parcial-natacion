class Estudiante{
    const property estilosDominados=#{}
    var property edad 

    method domina(estilo){
        return estilosDominados.contains(estilo)
    }
    method dominaAlMenosUnEstilo(){
        return !estilosDominados.isEmpty()
    }
    method esMenor(_edad){
        return edad < _edad 
    }
    method dominaAlMenosUnEstiloRelajante(){
        return estilosDominados.any({e => e.esRelajante()})
    }
}