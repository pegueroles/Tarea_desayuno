"PRIMER PASO: Cortar los elementos del desayuno: Naranjas, pan y palta"
"Receta de Diseño"
"Cortar:  String -> String"
"Def Cortar:cortar para luego comenzar a realizar el desayuno"
"Ejemplo: Cortar (naranjas) -> naranjas cortadas"

"Test"
Cortar ("naranjas") #naranjas cortadas
Cortar ("pan")      #pan cortado
Cortar ("palta")    #paltas cortadas
 
"SEGUNDO PASO: moler , preparar y calentar los elementos necesarios  "
"Receta de Diseño"
"Moler/ Preparar / Calentar: String -> String"
"Def. Moler/ Preparar / Calentar : con el fin de dejarlo casi listo para servir calentito"
"Ejemplo: Moler(Cortar(palta))-> paltas molidas "
"Ejemplo: Preparar(Cortar (naranjas)) -> jugo de naranjas"
"Ejemplo: Calentar (Cortar (pan)) -> pan tostado"

"Test"
Moler (Cortar("palta"))          
# paltas molidad
Preparar(Cortar ("naranjas"))    
# jugo de naranjas
Preparar("harina", "huevos")    
# masa de panqueques
Calentar(Cortar("pan"))         
#pan tostado


"TERCER PASO: Calentar los elementos restantes, para preparar los últimos
elementos del desayuno"

CalentarSarten()   
#sarten caliente
Preparar (Preparar("harina" , "huevos"), CalentarSarten ())       
#panqueques
Rellenar(Preparar(Preparar("harina", "huevos"), CalentarSarten())) 
#panqueques con manjar
Calentar("cafe")           
#Cafe caliente
Preparar(Calentar(Cortar("pan")),Moler(Cortar("palta"))) 
#pan tostado con palta

"CUARTO PASO: Servir el desayuno"
Servir(Preparar(Calentar(Cortar("pan")),Moler(Cortar("palta"))),Rellenar(Preparar(Preparar("harina", "huevos"),CalentarSarten())),Preparar(Cortar("naranjas")),Calentar("cafe"))
#mmmmm... niami... el desayuno esta maravilloso Pegueroles


Calentar <- function(x){
  if(x=="cafe"){
    return("cafe caliente")
  }else if(x=="pan cortado"){
    return("pan tostado")
  }else{
    return(paste("No se que hacer con ",x))
  }
}

Preparar <- function(x,y){
  if(x=="naranjas cortadas"){
    return("jugo de naranjas")
  }else if((x=="masa de panqueques" && y=="sarten caliente")||(y=="masa de panqueques" && x=="sarten caliente")){
    return("panqueques")
  }else if((x=="harina" && y=="huevos")||(y=="harina" && x=="huevos")){
    return("masa de panqueques")
  }else if((x=="pan tostado" && y=="palta molida")||(y=="pan tostado" && x=="palta molida")){
    return("pan tostado con palta")
  }else{
    return("faltan elementos")  
  }
}

Rellenar <- function(x){
  if(x=="panqueques"){
    return("panqueques con manjar")
  }else{
    return(paste("No se que hacer con ",x)) 
  }
}

Moler <- function(x){
  if(x=="palta cortada"){
    return("palta molida")
  }else{
    return(paste("No se que hacer con ",x))
  }
}

Cortar <- function(x){
  if(x=="pan"){
    return("pan cortado")
  }else if(x=="naranjas"){
    return("naranjas cortadas")
  }else if(x=="palta"){
    return("palta cortada")
  }else{
    return(paste("No se que hacer con ",x))
  }
}

CalentarSarten <- function(){
  return("sarten caliente")
}

Servir <- function(x,y,z,j){
  if((x=="pan tostado con palta" && y=="panqueques con manjar" && z=="jugo de naranjas" && j=="cafe caliente")){
    return("mmmmm... niami... el desayuno esta maravilloso Pegueroles")
  }else{
    return("iiiuuuu... esto no esta listo Pegueroles")
  }
}











         
