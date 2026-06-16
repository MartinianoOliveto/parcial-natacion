class Estudiante{
    const property estilosDominados=#{}
    var edad 

    method edad(_edad){
        edad = _edad
    }
    method domina(estilo){
        return estilosDominados.contains(estilo)
    }
    method dominaAlMenosunEstilo(){
        return !estilosDominados.isEmpty()
    }
    method esMenor(_edad){
        return edad < _edad 
    }
    method dominaAlMenosUnEstiloRelajante(){
        return estilosDominados.any({e => e.esRelajante()})
    }
}