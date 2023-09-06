--Ejercicio 1. Implementar la funcion fibonacci:: Integer ->Integer que devuelve el i-esimo numero de Fibonacci.
fibonacci:: Integer -> Integer
fibonacci x
    |x==0 = 0
    |x==1 = 0
    |otherwise = fibonacci(x-1) + fibonacci(x-2)

--Ejercicio 2. Implementar una funcion parteEntera :: Float -> Integer segun la siguiente especificacion:
parteEntera :: Float -> Integer
parteEntera x
    |(x>=0) && (x<1) = 0 
    |(x<=0) && (x>(-1)) = 0
    |x>1= parteEntera(x-1) + 1
    |otherwise = parteEntera(x+1) + (- 1)

--Ejercicio 3. Especificar e implementar la funcion esDivisible :: Integer ->Integer ->Bool que dados dos numeros naturales determinar si el primero es divisible por el segundo
esDivisible :: Integer -> Integer -> Bool
esDivisible a b 
    |(a-b)==0 = True
    |(a-b)<b = False 
    |otherwise = esDivisible (a-b) b 

--Ejercicio 4. Especificar e implementar la funcion sumaImpares :: Integer ->Integer que dado n ∈ N sume los primeros n numeros impares
sumaImpares :: Integer -> Integer
sumaImpares x 
    |x==0 = 0
    |otherwise = encontrarImpar(x) + sumaImpares (x-1)

encontrarImpar :: Integer -> Integer
encontrarImpar x 
    |x==1 = 1
    |otherwise = 2 + encontrarImpar(x-1)

--Ejercicio 5. Implementar la funcion medioFact :: Integer ->Integer que dado n ∈ N calcula n!! = n (n − 2)(n − 4) · · · .
medioFact :: Integer -> Integer
medioFact x
    |x==0 = 1
    |x==1 = 1
    |otherwise=x*medioFact(x-2)

--Ejercicio 6. Especificar e implementar la funcion sumaDigitos :: Integer -> Integer que calcula la suma de dıgitos de un numero natural
sumaDigitos :: Integer -> Integer
sumaDigitos x
    |x<10 = x
    |otherwise = sumaDigitos(div x (encontrarMod(1))) + mod x (encontrarMod(1)) 

encontrarMod :: Integer -> Integer
encontrarMod x = x*10

--Ejercicio 7. Implementar la funcion todosDigitosIguales :: Integer -> Bool que determina si todos los dıgitos de un numero natural son iguales
todosDigitosIguales :: Integer -> Bool
todosDigitosIguales x
    |(x < 10) = True
    |otherwise = (conseguirUltimoDigito (x) == conseguirUltimoDigito(eliminarUltimoDigito(x))) && todosDigitosIguales(eliminarUltimoDigito(x))

conseguirUltimoDigito :: Integer -> Integer
conseguirUltimoDigito x = mod x 10

eliminarUltimoDigito :: Integer -> Integer
eliminarUltimoDigito x = div x 10

--Ejercicio 8. Implementar la funcion iesimoDigito :: Integer ->Integer ->Integer que dado un n ∈ N≥0 y un i ∈ N menor o igual a la cantidad de dıgitos de n, devuelve el i-esimo dıgito de n.
iesimoDigito :: Integer -> Integer -> Integer
iesimoDigito n 1 = mod n 10
iesimoDigito n i = iesimoDigito (div n 10) (i-1)

--Ejercicio 9. Especificar e implementar una funcion esCapicua :: Integer ->Bool que dado n ∈ N≥0 determina si n es un numero capicua.
--esCapicua :: Integer -> Bool
--esCapicua n
 --   |n<10 = True
   -- |otherwise = sacarUltimoN n ==

--sacarUltimoN :: Integer -> Integer
--sacarUltimoN n = mod n 10

--sacarPrimeroN :: Integer -> Integer
--sacarPrimeroN n = mod n (div n (sacarLargoN n)) 

--sacarLargoN :: Integer -> Integer
--sacarLargoN n
  --  |n<10=1
   -- |otherwise = sacarLargoN --tenes que terminar esto pajin


--Ejercicio 10. Especificar, implementar y dar el tipo de las siguientes funciones

f1 :: Integer -> Integer
f1 x 
    |x==0 = 1
    |otherwise = 2^x + f1 (x-1)

f2 :: Integer -> Integer -> Integer
f2 n 1 = n 
f2 1 q = q
f2 n q = q^n + f2 (n-1) q 

f3 :: Integer -> Integer -> Integer
f3 0 q = 1
f3 n 1 = 2*n 
f3 n q = f2 (2*n) q 

f4 :: Integer -> Integer -> Integer
f4 0 q = 1
f4 n 1 = n 
f4 n q = (f2 (2*n) q)-(f2 n q)  

--Ejercicio 11. a) Especificar e implementar una funci´on eAprox :: Integer ->Float que aproxime el valor del numero e
eAprox :: Integer -> Float
eAprox x 
    |a==0 = 1
    |otherwise = 1/factorial(a) + eAprox(x-1)
    where a = fromIntegral x

factorial :: (Num a, Eq a) => a -> a 
factorial x
    |x==0 = 1
    |otherwise = x * (factorial (x-1))
