import math 

#Ejercicio 1. Codificar en Python las siguientes funciones sobre secuencias:
#1. problema pertenece
def pertenece(lista:[int],e:int)->bool:
    contador=0
    while contador < len(lista):
        if lista[contador] == e:
            return True
        elif contador == len(lista)-1:
            return False
        else:
            contador += 1


#2. problema divideATodos
def divideATodos(lista:[int],e:int)->bool:
    contador=0
    while contador < len(lista):
        if lista[contador]%e != 0:
            return False
        elif contador == len(lista)-1:
            return True
        else:
            contador += 1


#3. problema sumaTotal
def sumaTotal(lista:[int])->int:
    res=0
    for i in lista:
        res += i
    return res


#4. problema ordenados
def ordenados(lista:[int])->bool:
    contador=0
    res=True
    while contador+1 <= len(lista)-1:
        if lista[contador]>lista[contador+1]:
            res=False
            contador += 1
        else: 
             contador += 1
    return res


#5. Dada una lista de palabras, devolver verdadero si alguna palabra tiene longitud mayor a 7.
def palabraLarga(lista:[str])->bool:
    i=0
    res=False
    while i < len(lista):
        if len(lista[i])>7:
            res=True
            i += 1
        else:
            i += 1
    return res


#6. Dado un texto en formato string, devolver verdadero si es pal´ındromo (se lee igual en ambos sentidos), falso en caso
# contrario.
def palindromo(palabra:str)->bool:
    inicio=0
    final=len(palabra)-1
    contador=0
    res=True
    while contador < len(palabra)-1:
        if palabra[inicio]!=palabra[final]:
            return False
        else:
            inicio += 1
            final -= 1 
            contador +=1
    return res


#7. Analizar la fortaleza de una contrase˜na. El par´ametro de entrada de la funci´on ser´a un string con la contrase˜na a
# analizar, y la salida otro string con tres posibles valores: VERDE, AMARILLA y ROJA. Nota: en python la “˜n/N” ˜
# es considerado un caracter especial y no se comporta como cualquier otra letra.
def contra(password:str)->str:
    if len(password) < 5:
        return "ROJA"
    else:
        if  mayor8Caracteres(password) and tieneMinus(password) and tieneMayus(password) and tieneNum(password):
            return "VERDE"
        else:
            return "AMARILLA"

#funciones auxiliares
def mayor8Caracteres(password:str)->bool:
    return len(password)>8


def tieneMinus(password:str)->bool:
    res=False
    for i in range(0,len(password),1):
        if password[i].islower():
            res=True
    return res


def tieneMayus(password:str)->bool:
    res=False
    for i in range(0,len(password),1):
        if password[i].isupper():
            res=True
    return res


def tieneNum(password:str)->bool:
    res=False
    for i in range(0,len(password),1):
        if password[i].isdigit():
            res=True
    return res


#8. Dada una lista de tuplas, que representa un historial de movimientos en una cuenta bancaria, devolver el saldo actual.
# Asumir que el saldo inicial es 0. Las tuplas tienen una letra que nos indica el tipo de movimiento “I” para ingreso de
# dinero y “R” para retiro de dinero, y adem´as el monto de cada operaci´on.
def operacionesBancarias(movimientos:[(str,int)])->int:
    iterador=0
    saldo=0
    plata=[lisplata[1] for lisplata in movimientos]
    interaccion=[lismovimientos[0] for lismovimientos in movimientos]
    while iterador<len(interaccion):
        if interaccion[iterador] == "R":
            saldo -= plata[iterador]
            iterador +=1
        elif interaccion[iterador] == "I":
            saldo += plata[iterador]
            iterador +=1
    return saldo


#9. Recorrer una palabra en formato string y devolver True si ´esta tiene al menos 3 vocales distintas y False en caso
# contrario.
def tresVocales(palabra:str)->str:
    a=0
    e=0
    i=0
    o=0
    u=0
    iterador=0
    while iterador<len(palabra):
        if palabra[iterador]=="a" and a==0:
            a=1
            iterador += 1
        elif palabra[iterador]=="e" and e==0:    
            e=1
            iterador += 1
        elif palabra[iterador]=="i" and i==0:    
            i=1
            iterador += 1
        elif palabra[iterador]=="o" and o==0:    
            o=1
            iterador += 1
        elif palabra[iterador]=="u" and u==0:    
            u=1
            iterador += 1
        else:
            iterador += 1
    if a+e+i+o+u >= 3:
        return True
    else:
        return False


#2. Segunda Parte
#1. Dada una lista de n´umeros, en las posiciones pares borra el valor original y coloca un cero. Esta funci´on modifica el
# par´ametro ingresado, es decir, la lista es un par´ametro de tipo inout.
def cambioNPares(lista:[int])->None:
    iterador=0
    while iterador < len(lista):
        lista[iterador]=0
        iterador += 2
    return lista


#2. Lo mismo del punto anterior pero esta vez sin modificar la lista original, devolviendo una nueva lista, igual a la anterior
# pero con las posiciones pares en cero, es decir, la lista pasada como par´ametro es de tipo in
def cambioNParesOut(lista:[int])->None:
    iterador=0
    res=[0]
    while iterador < len(lista):
        if iterador % 2 == 0 :
            res[iterador]=0
        else :
            res[iterador]=lista[iterador]
        iterador += 1
    return res


#3. Dada una cadena de caracteres devuelva una cadena igual a la anterior, pero sin las vocales. No se agregan espacios,
# sino que borra la vocal y concatena a continuaci´on.
def sacaVocal(lista:[str])->[str]:
    i=0
    while i <len(lista) :
        if lista[i]=="a" or lista[i]=="e" or lista[i]=="i" or lista[i]=="o" or lista[i]=="u" or lista[i]=="A" or lista[i]=="E" or lista[i]=="I" or lista[i]=="O" or lista[i]=="U":
            lista.pop(i)
        else:
            i+=1
    return lista

#4. problema reemplazaVocales
def reemplazaVocales(lista:[str])->[str]:
    for i in range (0,len(lista),1):
         if lista[i]=="a" or lista[i]=="e" or lista[i]=="i" or lista[i]=="o" or lista[i]=="u" or lista[i]=="A" or lista[i]=="E" or lista[i]=="I" or lista[i]=="O" or lista[i]=="U":
            lista[i]="_"
    return lista


#5. problema daVueltaStr 
def daVueltaStr(palabra:[str])->[str]:
    i=len(palabra)-1
    res=[]
    while i >= 0:
        res.append(palabra[i])
        i-=1
    return res


#6. problema eliminarRepetidos
def eliminarRepetidos(lista:[str])->[str]:
    res=[lista[0]]
    i=1
    while i<len(lista):
        if noPerteneceALista(res,lista[i]) :
            res.append(lista[i])
            lista.pop(i)
        else:
            i+=1
    return res
        

def noPerteneceALista(lista:[str],e:str)->bool:
    i=0
    while i < len(lista):
        if e == lista[i]:
            return False
        elif i==len(lista)-1:
            return True
        else:
            i+=1


#Ejercicio 3. Implementar una funci´on para conocer el estado de aprobaci´on de una materia a partir de las notas obtenidas
# por un/a alumno/a cumpliendo con la siguiente especificaci´on:
def aprobado(notas:[int])->int:
    if notasAprobadas(notas) and promedio(notas)>=7:
        return 1
    elif notasAprobadas(notas) and promedio(notas)>=4 and promedio(notas)<7:
        return 2
    else:
        return 3

#devuelve true si todos los eletos son >=4
def notasAprobadas(notas:[int])->bool:
    res=True
    for i in range(0,len(notas),1):
        if notas[i]<4:
            res=False
    return res

def promedio(notas:[int])->float:
    i=0
    res=0
    while i < len(notas):
        res += notas[i]
        i+=1
    return res/i


#Ejercicio 4. 
#1. Implementar una funci´on para construir una lista con los nombres de mis estudiantes. La funci´on solicitar´a al usuario
# los nombres hasta que ingrese la palabra “listo”. Devuelve la lista con todos los nombres ingresados.
def listaEstudiantes()->[str]:
    res=[]
    nombre=""
    while nombre!="listo":
        print("ingrese el nombre de el alumno")
        nombre=input()
        if(nombre!="listo"):
            res.append(nombre)
    return res


#2. Implementar una funci´on que devuelve una lista con el historial de un monedero electr´onico (por ejemplo la SUBE).
def sube()->[(str,int)]:
    saldo=0
    operacion=""
    historial=[]
    while operacion!="x":
        print("ingrese operacion a realizar, c para cargar credito, d para descontar y x para terminar el programa")
        operacion=input()
        if(operacion!="x"):
            if operacion=="c":
                print("ingrese monto a cargar")
                monto=int(input())
                saldo+=monto
                historial.append(("c",monto))
                print("operacion exitosa")
            elif operacion=="d":
                print("ingrese monto a descargar")
                monto=int(input())
                saldo-=monto
                historial.append(("d",monto))
                print("operacion exitosa")
    return historial


#3. Vamos a escribir un programa para simular el juego conocido como 7 y medio. El mismo deber´a generar un n´umero
# aleatorio entre 0 y 12 (excluyendo el 8 y 9) y deber´a luego preguntarle al usuario si desea seguir sacando otra “carta”
# o plantarse. En este ´ultimo caso el programa debe terminar. Los n´umeros aleatorios obtenidos deber´an sumarse seg´un
# el n´umero obtenido salvo por las “figuras” (10, 11 y 12) que sumar´an medio punto cada una. El programa debe ir
# acumulando los valores y si se pasa de 7.5 debe informar que el usuario ha perdido. Al finalizar la funci´on devuelve
# el historial de “cartas” que hizo que el usuario gane o pierda. Para generar n´umeros pseudo-aleatorios entre 1 y 12
# utilizaremos la funci´on random.randint(1,12). Al mismo tiempo, la funci´on random.choice() puede ser de gran
# ayuda a la hora de repartir cartas.

##wtf




array=[4,4,0,10]
arrayPalabra=["a","a","u","r","a","u","r"]        
print(subec())