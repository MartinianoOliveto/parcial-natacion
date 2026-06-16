class Estilo{
    method esRelajante()
    method descuento()
}
object mariposa inherits Estilo{
    override method esRelajante(){
        return false 
    }
    override method descuento(){
        return 3 
    }
}
object crol inherits Estilo{
    override method esRelajante(){
        return false 
    }
    override method descuento(){
        return 2
    }
}
object pecho inherits Estilo{
    override method esRelajante(){
        return true 
    }
    override method descuento(){
        return 2
    }
}
object espalda inherits Estilo{
    override method esRelajante(){
        return true 
    }
    override method descuento(){
        return 1
    }
}
