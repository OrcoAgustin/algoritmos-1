-- ejercicio 1
f1 :: Integer -> Integer
f1 1 = 8
f1 4 = 131
f1 16 = 16

g1 :: Integer -> Integer
g1 8 = 16 
g1 16 = 4
g1 131 = 1

h1 :: Integer -> Integer
h1 x = f1(g1(x))

k1 :: Integer -> Integer
k1 x = g1(f1(x))


-- ejercicio 2
--a)absoluto: calcula el valor absoluto de un numero entero
absoluto :: Int -> Int
absoluto x 
    | x > 0 = x
    | otherwise = x - (2 * x)

--b)maximoAbsoluto: devuelve el maximo entre el valor absoluto de dos numeros enteros.
maximoAbsoluto :: Int -> Int -> Int
maximoAbsoluto x y 
    | absoluto(x) > absoluto(y) = absoluto(x) 
    | otherwise = absoluto(y)

--c)maximo3: devuelve el maximo entre tres numeros enteros.
maximo3 :: Int -> Int -> Int -> Int
maximo3 x y z 
    | x>y && x>z = x
    | y>x && y>z = y
    | otherwise = z

--d)algunoEs0: dados dos numeros racionales, decide si alguno de los dos es igual a 0
algunoEs0 :: Int -> Int -> Int -> Int -> Bool
algunoEs0 0 b c d = True
algunoEs0 a b 0 d = True
algunoEs0 a b c d = False

--e) ambosSon0: dados dos numeros racionales, decide si ambos son iguales a 0
ambosSon0 :: Int -> Int -> Int -> Int -> Bool
ambosSon0 0 b 0 d = True
ambosSon0 a b c d =  False

--f) mismoIntervalo: dados dos numeros reales, indica si estan relacionados considerando la relacion de equivalencia en R cuyas clases de equivalencia son: (−∞, 3],(3, 7] y (7, ∞), o dicho de otra forma, si pertenecen al mismo intervalo.
mismoIntervalo :: Int -> Int -> Bool
mismoIntervalo a b
    |(a<=3) && (b<=3) = True
    |(a>3) && (b>3) && (a<=7) && (b<=7) = True
    |(a>7) && (b>7) = True
    |otherwise = False

--g) sumaDistintos: que dados tres numeros enteros calcule la suma sin sumar repetidos (si los hubiera).
sumaDistintos :: Int -> Int -> Int -> Int
sumaDistintos a b c
    |(a==b) && (a==c) = a
    |(a==b) && (a/=c) = a+c
    |(a==c) && (a/=b) = a+b
    |(b==c) && (a/=c) = a+c
    |(a/=b) && (a/=c) && (b/=c) = a+b+c

--h) esMultiploDe: dados dos numeros naturales, decidir si el primero es multiplo del segundo.
esMultiploDe :: Int -> Int -> Bool
esMultiploDe a b = (mod a b)==0



--Ejercicio 3. Implementar una funcion estanRelacionados :: Integer ->Integer ->Bool
estanRelacionados :: Integer -> Integer -> Bool
estanRelacionados a b = (mod a b)==0

--Ejercicio 4.
--a) prodInt: calcula el producto interno entre dos tuplas R × R.
prodInt :: (Int, Int) -> (Int, Int) -> Int
prodInt (a,b) (c,d) = (a*c) + (b*d) 

--b) todoMenor: dadas dos tuplas R×R, decide si es cierto que cada coordenada de la primera tupla es menor a la coordenada correspondiente de la segunda tupla.
todoMenor :: (Int, Int) -> (Int, Int) -> Bool
todoMenor (a,b) (c,d)
    |(a<c) && (b<d) = True
    |otherwise = False

--c) distanciaPuntos: calcula la distancia entre dos puntos de R.
distanciaPuntos :: (Float, Float) -> (Float, Float) -> Float
distanciaPuntos (a,b) (c,d) = sqrt(((a-c)^2)+((b-d)^2))

--d) sumaTerna: dada una terna de enteros, calcula la suma de sus tres elementos.
sumaTerna :: (Num a)=> (a, a, a) -> a 
sumaTerna (a, b, c) = a+b+c

--e) sumarSoloMultiplos: dada una terna de numeros enteros y un natural, calcula la suma de los elementos de la terna que son multiplos del numero natural.
sumarSoloMultiplos :: (Int, Int, Int) -> Int -> Int 
sumarSoloMultiplos (a,b,c) x
    |(mod a x)==0 && (mod b x)==0 && (mod c x) ==0 = a+b+c
    |(mod a x)==0 && (mod b x)==0 && (mod c x) /=0 = a+b
    |(mod a x)==0 && (mod b x)/=0 && (mod c x) ==0 = a+c
    |(mod a x)==0 && (mod b x)/=0 && (mod c x) /=0 = a
    |(mod a x)/=0 && (mod b x)==0 && (mod c x) ==0 = b+c
    |(mod a x)/=0 && (mod b x)==0 && (mod c x) /=0 = b
    |(mod a x)/=0 && (mod b x)/=0 && (mod c x) ==0 = c
    |otherwise = 0

--f) posPrimerPar: dada una terna de enteros, devuelve la posicion del primer numero par si es que hay alguno, y devuelve 4 si son todos impares.
posPrimerPar :: (Int, Int, Int) -> Int
posPrimerPar (a, b, c) 
    |(mod a 2)==0 = 1
    |(mod b 2)==0 = 2
    |(mod c 2)==0 = 3
    |otherwise = 4

--g) crearPar :: a ->b ->(a, b): crea un par a partir de sus dos componentes dadas por separado (debe funcionar para elementos de cualquier tipo).
crearPar :: (Num a)=> a -> a -> (a,a)
crearPar a b = (a,b)

--h) invertir :: (a, b) ->(b, a): invierte los elementos del par pasado como par´ametro (debe funcionar para elementos de cualquier tipo).
invertir :: (Num a)=> (a, a) -> (a,a)
invertir (a,b) = (b,a)

--Ejercicio 5. Implementar la funcion todosMenores :: (Integer, Integer, Integer) ->Bool ((f(n1) > g(n1)) ∧ (f(n2) > g(n2)) ∧ (f(n3) > g(n3))))}
todosMenores :: (Integer, Integer, Integer) ->Bool
todosMenores (a,b,c)
    |((f(1))>(g(1))) && ((f(2))>(g(2))) && ((f(3))>(g(3))) = True
    |otherwise = False

f :: Integer -> Integer
f x
    |x<=7 = x^2
    |otherwise = (2*x)-1

g :: Integer -> Integer
g z
    |(mod z 2)==0 =div z 2
    |otherwise = (3*z)+1

--Ejercicio 6. Programar una funcion bisiesto :: Integer -> Bool segun la siguiente especificacion:
bisiesto :: Integer -> Bool
bisiesto x
    |(mod x 4)/=0 = False
    |(mod x 100)==0 && (mod x 400)/=0 = False
    |otherwise = True

--Ejercicio 7. Implementar una funcion:
distanciaManhattan :: (Float, Float, Float) ->(Float, Float, Float) ->Float
distanciaManhattan (a, b, c) (d, e, f) 
    |((a-d)+(b-e)+(c-f)) < 0 = ((a-d)+(b-e)+(c-f)) + ((a-d)+(b-e)+(c-f)) * (-2)
    |otherwise = ((a-d)+(b-e)+(c-f))

--Ejercicio 8. Implementar una funcion comparar :: Integer -> Integer -> Integer
comparar :: Int -> Int -> Int
comparar a b
    |(sumaUltimosDosDigitos(a)<sumaUltimosDosDigitos(b)) = 1
    |(sumaUltimosDosDigitos(a)>sumaUltimosDosDigitos(b))= -1
    |(sumaUltimosDosDigitos(a)==sumaUltimosDosDigitos(b)) = 0    

sumaUltimosDosDigitos :: Int -> Int
sumaUltimosDosDigitos x = (mod x 10) + (mod (div x 10) 10)
