import math

#Ejercicio 1. Definir las siguientes funciones y procedimientos:
#1. problema imprimir hola mundo () 
def printHolaMundo():
    print("¡Hola mundo!")


#2.imprimir un verso(): que imprima un verso de una cancion que vos elijas, respetando los saltos de lınea mediante el caracter ‘\n
def imprimirUnVerso():
    print("Muchos truco' como Tony Hawk Mucho' \ninvento' como Tony Stark \nSoy el jefe, Tony Montana \nHago negocio' toda la semana")


#3.raizDe2(): que devuelva la raız cuadrada de 2 con 4 decimales. Ver funcion round
def raizDe2():
    resultado = round(math.sqrt (2),4)
    return resultado


#4.factorial de dos()
def factorialDeDos():
    resultado=2
    return resultado


#5. perimetro: que devuelva el perımetro de la circunferencia de radio 1. 
def perimetro():
    resultado=2*math.pi
    return resultado


#Ejercicio 2. Definir las siguientes funciones y procedimientos con parametros:
#1. problema imprimir saludo
def imprimirSaludo(nombre):
    print("Hola " + nombre)


#2.raiz cuadrada de(numero): que devuelva la raız cuadrada del numero.
def raizCuadrada(numero):
    resultado = math.sqrt(numero)
    return resultado


#3.fahrenheit a celsius(temp far): que convierta una temperatura en grados Fahrenheit a grados Celcius.
def tempFar(tempfahr):
    tempcel= (tempfahr-32) * 5/9 
    return tempcel


#4.imprimir dos veces(estribillo): que imprima dos veces el estribillo de una cancion. 
def imprimirDosVeces():
    estribillo="Tengo el amor de mi gente, el coraje de mi madre \nLa magia desde siempre, la calma de mi padre \nDemuestro que soy fuerte si Troya está que arde \nDicen que son tigre' pero son unos cobarde' \n"
    estribillo=estribillo*2
    print(estribillo)


#5.problema es multiplo de
def esMulitploDe(n:int,m:int) -> bool:
    return n%m == 0


#6.es par(numero): que indique si numero es par (usar la funcion es multiplo de()).
def esPar(n:int) -> bool:
    return esMulitploDe(n,2)


#7.cantidad de pizzas(comensales, min cant de porciones) que devuelva la cantidad de pizzas que necesitamos para que cada comensal coma como mınimo min cant de porciones porciones de pizza. Considere que cada pizza tiene 8 porciones y que se prefiere que sobren porcione
def cantidadDePizzas (comensales:int,cantdeporciones:int)->int:
    cantdepizzas = (comensales*cantdeporciones)/8
    return math.ceil(cantdepizzas)


#Ejercicio 3. Resuelva los siguientes ejercicios utilizando los operadores logicos and, or, not. Resolverlos sin utilizar alternativa condicional (if)
#1.alguno es 0(numero1, numero2): dados dos numeros racionales, decide si alguno de los dos es igual a 0.
def algunoEs0(n1,n2) -> bool:
    return n1==0 or n2==0


#2.ambos son 0(numero1, numero2): dados dos numeros racionales, decide si ambos son iguales a 0.
def ambosSon0(n1,n2) -> bool:
    return n1==0 and n2==0


#3. problema es nombre largo
def esNombreLargo(n:str) -> bool:
    return len(n)>=3 and len(n)<=8


#4. es bisiesto(a~no): que indica si un a˜no tiene 366 dıas. Recordar que un a˜no es bisiesto si es multiplo de 400, o bien es multiplo de 4 pero no de 100.
def esBisiesto(n:int) -> bool:
    return n%400 == 0 or (n%4 == 0 and n%100 != 0)


#Ejercicio 4. Usando las funciones de python min y max resolver:
"""
En una plantacion de pinos, de cada arbol se conoce la altura expresada en metros. El peso de un pino se puede estimar
a partir de la altura de la siguiente manera:
3 kg por cada centimetro hasta 3 metros,
2 kg por cada centimetro arriba de los 3 metros.
Por ejemplo:
2 metros pesan 600 kg, porque 200 * 3 = 600
5 metros pesan 1300 kg, porque los primeros 3 metros pesan 900 kg y los siguientes 2 pesan los 400 restantes.
Los pinos se usan para llevarlos a una fabrica de muebles, a la que le sirven arboles de entre 400 y 1000 kilos, un pino
fuera de este rango no le sirve a la fabrica.
Definir las siguientes funciones, deducir que parametros tendran a partir del enunciado. Se pueden usar funciones auxiliares
si fuese necesario para aumentar la legibilidad
"""

#1.Definir la funci´on peso pino
def pesoPino(altura:int) -> int:
    if (altura>3):
        peso=(altura-3)*200+900
    else:
        peso=altura*300
    return peso


#2. Definir la funci´on es peso util, recibe un peso en kg y responde si un pino de ese peso le sirve a la f´abrica.
def pesoUtil(peso:int) -> bool:
    return peso >= 400 and peso <=1000


#3. Definir la funci´on sirve pino, recibe la altura de un pino y responde si un pino de ese peso le sirve a la f´abrica.
#el 4 es composicion de funciones del 3 pero lo hice con composicion asi que es lo mismo
def sirvePino(altura:int) -> bool:
    return pesoUtil(pesoPino(altura))


#Ejercicio 5. Implementar los siguientes problemas de alternativa condicional (if)
#1. devolver el doble si es par(numero) que devuelve el doble del n´umero en caso de ser par y el mismo n´umero en caso contrario.
def DevolverEldobleSiEsPar(n:int) -> int:
    if(esPar(n)):
        return 2*n
    else:
        return n


#2. devolver valor si es par sino el que sigue(numero). que devuelve el mismo n´umero si es par y sino el siguiente.
def devolverValorSiEsParSinoElQueSigue(n:int) -> int:
    if(esPar(n)):
        return n
    else:
        return n+1
    

#3. devolver el doble si es multiplo3 el triple si es multiplo9(numero). En otro caso devolver el n´umero original.
def devolverElDobleSiEsMultiplo3ElTripleSiEsMultiplo9(n:int) -> int:
    if(n%9 == 0):
        return n*3
    else:
        if(n%3 == 0):
            return n*2
        else:
            return n


#4.lindo nombre(nombre) que dado un nombre, si la longitud es igual o mayor a 5 devolver una frase que diga “Tu nombre tiene muchas letras!” y sino, “Tu nombre tiene menos de 5 caracteres”.
def lindoNombre(nombre:str):
    if(len(nombre)>=5):
        print("Tu nombre tiene muchas letras")
    else:
        print("Tu nombre tiene menos de 5 caracteres")


#5. elRango(numero) que imprime por pantalla “Menor a 5” si el n´umero es menor a 5, “Entre 10 y 20” si el n´umero est´a en ese rango y “Mayor a 20” si el n´umero es mayor a 20
def elRango(n:int):
    if(n<5):
        print("Menor a 5")
    if(n>=10 and n<=20):
        print("Entre 10 y 20")
    if(n>20):
        print("Mayor a 20")


#6. En Argentina una persona del sexo femenino se jubila a los 60 anos, mientras que aquellas del sexo masculino se jubilan
#a los 65 a˜nos. Quienes son menores de 18 a˜nos se deben ir de vacaciones junto al grupo que se jubila. Al resto de
#las personas se les ordena ir a trabajar. Implemente una funci´on que, dados los par´ametros de sexo (F o M) y edad,
#imprima la frase que corresponda seg´un el caso: “And´a de vacaciones” o “Te toca trabajar”.

def palaOFiesta(sexo:str,edad:int):
    if(sexo == "F" and edad > 59):
        print("Anda de vacaciones")
    elif(sexo == "M" and edad > 64):
            print("Anda de vacaciones")
    elif(edad<19):
        print("Anda de vacaciones")
    else:
        print("Te toca trabajar")


#Ejercicio 6. Implementar las siguientes funciones usando repetici´on condicional while:
#1. Escribir una funci´on que imprima los n´umeros del 1 al 10.
def del1Al10():
    n=1
    while (n<=10):
        print(n)
        n=n+1


#2. Escribir una funci´on que imprima los n´umeros pares entre el 10 y el 40.
def paresEntre10y40():
    n:int=10
    while(n<=40):
        if(esPar(n)):
            print(n)
        n=n+1


#3. Escribir una funci´on que imprima la palabra “eco” 10 veces.
def eco():
    n=1
    while(n<=10):
        print("eco")
        n=n+1


#4. Escribir una funci´on de cuenta regresiva para lanzar un cohete. Dicha funci´on ir´a imprimiendo desde el n´umero que
# me pasan por par´ametro (que ser´a positivo) hasta el 1, y por ´ultimo “Despegue”
def cuentaRegresiva(n:int):
    while(n>=1):
        print(n)
        n=n-1

    print("Despegue")


#5. Hacer una funci´on que monitoree un viaje en el tiempo. Dicha funci´on recibe dos par´ametros, “el a˜no de partida” y
# “alg´un a˜no de llegada”, siendo este ´ultimo par´ametro siempre m´as chico que el primero. El viaje se realizar´a de a saltos
# de un a˜no y la funci´on debe mostrar el texto: “Viaj´o un a˜no al pasado, estamos en el a˜no: <a˜no>” cada vez que se
# realice un salto de a˜no
def viajeroTemporal(partida:int,llegada:int):
    while(partida>llegada):
        print("Viajo un año al pasado, estamos en el año:" + str(partida-1))
        partida=partida-1


#6. Implementar de nuevo la funci´on de monitoreo de viaje en el tiempo, pero desde el a˜no de partida hasta lo m´as cercan
# al 384 a.C., donde conoceremos a Arist´oteles. Y para que sea m´as r´apido el viaje, ¡vamos a viajar de a 20 anos en cada
# salto!
def viajeroTemporalFanAristoteles(partida:int):
    while(partida>-384+20):
        if((partida-20)>=-384):
            print("Viajo veinte años al pasado, estamos en el año:" + str(partida-20))
            partida=partida-20
    print("Esto es lo que mas nos acercamos!")


#Ejercicio 7. Implementar las funciones del ejercicio 6 utilizando for num in range(i,f,p):
#1. Escribir una funci´on que imprima los n´umeros del 1 al 10.
def numerosDel1al10For():
    for i in range (1,11,1):
        print (i)


#2. Escribir una funci´on que imprima los n´umeros pares entre el 10 y el 40.
def paresDel10Al40For():
    for i in range (10,41,2):
        print (i)


#3. Escribir una funci´on que imprima la palabra “eco” 10 veces.
def ecoFor():
    for i in range (1,11,1):
        print("eco")

#4. Escribir una funci´on de cuenta regresiva para lanzar un cohete. Dicha funci´on ir´a imprimiendo desde el n´umero que
# me pasan por par´ametro (que ser´a positivo) hasta el 1, y por ´ultimo “Despegue”
def despegueFor(n:int):
    for i in range (n,0,-1):
        print(i)
    print("Despegue")


#5. Hacer una funci´on que monitoree un viaje en el tiempo. Dicha funci´on recibe dos par´ametros, “el a˜no de partida” y
# “alg´un a˜no de llegada”, siendo este ´ultimo par´ametro siempre m´as chico que el primero. El viaje se realizar´a de a saltos
# de un a˜no y la funci´on debe mostrar el texto: “Viaj´o un a˜no al pasado, estamos en el a˜no: <a˜no>” cada vez que se
# realice un salto de a˜no
def viajeroTemporalFor(salida:int,llegada:int):
    for i in range((salida-1),(llegada-1),-1):
        print("Viajo un año al pasado, estamos en el año:" + str(i))


#6. Implementar de nuevo la funci´on de monitoreo de viaje en el tiempo, pero desde el a˜no de partida hasta lo m´as cercan
# al 384 a.C., donde conoceremos a Arist´oteles. Y para que sea m´as r´apido el viaje, ¡vamos a viajar de a 20 anos en cada
# salto!
def viajeroTemporalFanAristotelesFor(partida:int):
    for i in range(partida-20,-385,-20):
        if((partida)>=-384):
            print("Viajo veinte años al pasado, estamos en el año:" + str(i))
    print("Esto es lo que mas nos acercamos!")
    
