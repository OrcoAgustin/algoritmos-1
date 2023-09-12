--Ejercicio 1. Definir las siguientes funciones sobre listas:
--1.longitud :: [t] -> Integer, que dada una lista devuelve su cantidad de elementos.
longitud :: [t] -> Integer
longitud [] = 0
longitud (x:xs) = 1 + longitud (xs)

--2. ultimo :: [t] -> t segun la siguiente especificacion:
ultimo :: [t] -> t
ultimo [x] = x
ultimo (x:xs) = ultimo xs

--3. principio :: [t] -> [t] segun la siguiente especificacion:
principio :: [t] -> [t]
principio (x:xs) = [x]

--4. reverso :: [t] -> [t] segun la siguiente especificacion:
reverso :: [t] -> [t]
reverso []=[]
reverso (x:xs) = reverso xs ++ [x]


--Ejercicio 2. Definir las siguientes funciones sobre listas:
--1. pertenece :: (Eq t) => t -> [t] -> Bool segun la siguiente especificacion:
pertenece :: (Eq t) => t -> [t] -> Bool
pertenece n [] = False
pertenece n (x:xs) 
    |n==x || pertenece n xs = True
    |otherwise = False

--2. todosIguales :: (Eq t) => [t] -> Bool, que dada una lista devuelve verdadero sı y solamente sı todos sus elementos son iguales.
todosIguales :: (Eq t) => [t] -> Bool
todosIguales [t] = True
todosIguales (x:xs)
    |x==head(xs) && todosIguales xs = True
    |otherwise = False

--3. todosDistintos :: (Eq t) => [t] -> Bool segun la siguiente especificacion:
todosDistintos :: (Eq t) => [t] -> Bool
todosDistintos [t] = True
todosDistintos (x:xs) = funcionAux23 (x:xs) x && todosDistintos xs

funcionAux23 ::(Eq t) => [t] -> t -> Bool --todos iguales
funcionAux23 [] n = False
funcionAux23 (x:xs) n 
    |n/=x ||  funcionAux23 xs n = True
    |otherwise = False

--4. hayRepetidos :: (Eq t) => [t] -> Bool segun la siguiente especificacion:
hayRepetidos :: (Eq t) => [t] -> Bool
hayRepetidos [t] = False
hayRepetidos (x:xs) =  funcionAux24 (xs) x || hayRepetidos xs

funcionAux24 :: (Eq t) => [t] -> t -> Bool
funcionAux24 [] n = False
funcionAux24 (x:xs) n 
    |x==n || funcionAux24 xs n= True
    |x/=n || funcionAux24 xs n = False

--5. quitar :: (Eq t) => t -> [t] -> [t], que dados un entero x y una lista xs, elimina la primera aparicion de x en la lista xs (de haberla).
quitar :: (Eq t) => t -> [t] -> [t]
quitar n [] = [] 
quitar n (x:xs)
    |n==x = xs
    |otherwise =[x] ++ quitar n xs 

--6. quitarTodos :: (Eq t ) => t -> [t] -> [t], que dados un entero x y una lista xs, elimina todas las apariciones de x en la lista xs (de haberlas)
quitarTodos :: (Eq t ) => t -> [t] -> [t]
quitarTodos n [] = []
quitarTodos n (x:xs)
    |n==x = quitarTodos n xs
    |otherwise = [x] ++ quitarTodos n xs

--7. eliminarRepetidos :: (Eq t) => [t] -> [t] que deja en la lista una unica aparicion de cada elemento, eliminando las repeticiones adicionales.
eliminarRepetidos :: (Eq t) => [t] -> [t]
eliminarRepetidos []=[]
eliminarRepetidos (x:xs) = [x]++eliminarRepetidos(quitarTodos x xs)

--8. mismosElementos :: (Eq t) => [t] -> [t] -> Bool, que dadas dos listas devuelve verdadero sı y solamente sı ambas listas contienen los mismos elementos, sin tener en cuenta repeticiones
mismosElementos :: (Eq t) => [t] -> [t] -> Bool
mismosElementos (x:xs) (y:ys) = funcionAux28 (x:xs) (y:ys) && funcionAux28 (y:ys) (x:xs) 

funcionAux28  :: (Eq t) => [t] -> [t] -> Bool
funcionAux28 (x:xs) [y] = pertenece y (x:xs)
funcionAux28 (x:xs) (y:ys) = pertenece y (x:xs) && funcionAux28 (x:xs) ys   --lista x quieta     lista y se mueve

--9. capicua :: (Eq t) => [t] -> Bool segun la siguiente especificacion:
capicua :: (Eq t) => [t] -> Bool
capicua [] = True
capicua [x] = True
capicua (x:xs) = (funcionAux29 xs) == x && capicua(eliminarPrimero xs) 

funcionAux29 :: (Eq t) => [t] -> t
funcionAux29 [t] = t
funcionAux29 (x:xs) = funcionAux29 xs

eliminarPrimero :: (Eq t) => [t] -> [t]
eliminarPrimero [x] = []
eliminarPrimero (x:xs) = [x] ++ eliminarPrimero xs


--Ejercicio 3. Definir las siguientes funciones sobre listas de enteros:
-- 1. sumatoria :: [Integer] -> Integer segun la siguiente especificacion:
sumatoria :: [Integer] -> Integer
sumatoria [x] = x
sumatoria (x:xs) = x + sumatoria xs

--2. productoria :: [Integer] -> Integer segun la siguiente especificacion:
productoria :: [Integer] -> Integer
productoria [x] = x
productoria (x:xs) = x * productoria xs

--3. maximo :: [Integer] -> Integer segun la siguiente especificacion:
maximo :: [Integer] -> Integer
maximo (x:xs) = funcionAux33 xs x 

funcionAux33 :: [Integer] -> Integer -> Integer --compara
funcionAux33 [x] t
    |t>=x = t
    |otherwise = x 
funcionAux33 (x:xs) t 
    |t>x = funcionAux33 xs t 
    |otherwise = funcionAux33 xs x

--4. sumarN :: Integer -> [Integer] -> [Integer] segun la siguiente especificacion:
sumarN :: Integer -> [Integer] -> [Integer]
sumarN n [x] = [n+x]
sumarN n (x:xs) = [n+x] ++ sumarN n xs

--5. sumarElPrimero :: [Integer] -> [Integer] segun la siguiente especificacion:
sumarElPrimero :: [Integer] -> [Integer]
sumarElPrimero (x:xs) = sumarN x (x:xs)

--6. sumarElUltimo :: [Integer] -> [Integer] segun la siguiente especificacion:
sumarElUltimo :: [Integer] -> [Integer]
sumarElUltimo (x:xs) = sumarN (funcionAux36 xs ) (x:xs)

funcionAux36 :: [Integer] -> Integer --devuelve el ultimo
funcionAux36 [x]=x
funcionAux36 (x:xs) = funcionAux36 xs

--7. pares :: [Integer] -> [Integer] segun la siguiente especificacion:
pares :: [Integer] -> [Integer]
pares []=[]
pares (x:xs) 
    |mod x 2 == 0 = [x] ++ pares xs
    |otherwise = pares xs

--8. multiplosDeN :: Integer -> [Integer] -> [Integer] que dado un numero n y una lista xs, devuelve una lista con los elementos de xs multiplos de n
multiplosDeN :: Integer -> [Integer] -> [Integer]
multiplosDeN n [] = []
multiplosDeN n (x:xs) 
    |mod x n == 0 = [x] ++ multiplosDeN n xs
    |otherwise = multiplosDeN n xs

--9. ordenar :: [Integer] -> [Integer] que ordena los elementos de la lista en forma creciente
ordenar :: [Integer] -> [Integer]
ordenar [x]=[x]
ordenar (x:xs) = [funcionAux39 xs x] ++ ordenar (quitar (funcionAux39 xs x) (x:xs))

funcionAux39 :: [Integer] -> Integer -> Integer --encuentra el menor de la lista 
funcionAux39 [] n = n
funcionAux39 (x:xs) n 
    |x <= n = funcionAux39 xs x 
    |otherwise = funcionAux39 xs n


--falta el 4 y el 5