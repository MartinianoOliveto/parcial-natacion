class Estilo{
    method esRelajante()
}
object mariposa inherits Estilo{
    override method esRelajante(){
        return false 
    }
}
object crol inherits Estilo{
    override method esRelajante(){
        return false 
    }
}
object pecho inherits Estilo{
    override method esRelajante(){
        return true 
    }
}
object espalda inherits Estilo{
    override method esRelajante(){
        return true 
    }
}
