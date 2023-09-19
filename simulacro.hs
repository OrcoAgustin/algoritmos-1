module Simulacro where
--
--problema relacionesValidas (relaciones: seq⟨String × String⟩) : Bool {
--requiere: {True}
--asegura: {(res = true) ↔ no hay tuplas en relaciones con ambas componentes iguales ni tuplas repetidas (sin considerar
--el orden)}
--
relacionesValidas :: [(String,String)] -> Bool
relacionesValidas [(x,y)] = relacionesValidas2 (x,y)
relacionesValidas (x:xs) = relacionesValidas2 x && relacionesValidas3 x xs && relacionesValidas xs

relacionesValidas2 :: (String,String) -> Bool
--compara coord x y de una tupla entre si  
relacionesValidas2 (x,y) 
    |x==y = False
    |otherwise = True

relacionesValidas3 :: (String,String) -> [(String,String)] -> Bool
--compara la primera tupla de la lista con el resto
relacionesValidas3 (x,y) [] = True
relacionesValidas3 (x,y) (z:zs)
    |(x,y) /= z && (y,x) /= z && relacionesValidas3 (x,y) zs = True
    |otherwise = False

--
--problema personas (relaciones: seq⟨String × String⟩) : seq⟨String⟩ {
--requiere: {relacionesV alidas(relaciones)}
--asegura: {resu tiene exactamente los elementos que figuran en alguna tupla de relaciones en cualquiera de las dos
--posiciones, sin repetir}
--

personas :: [(String,String)] -> [String]
personas [] = []
personas (l) = personas4 (personas3 l)  
    
personas2 :: (String,String) -> [String]
--desarma tuplas en listas de 2
personas2 (x,y) = [x,y]

personas3 :: [(String,String)]  -> [String]
--junta todas las tuplas en una lista
personas3 [] = []
personas3 (x:xs) = personas2 x ++ personas3 xs

personas4 :: [String] -> [String] 
--devuelve la lista sin repetidos
personas4 [x] = [x]
personas4 (x:xs) = personas5 x xs ++ personas4 xs

personas5 :: String -> [String] -> [String] 
personas5 x [] = [x]
personas5 x (y:ys) 
    |x /= y = personas5 x ys
    |otherwise = []


--
--problema amigosDe (persona: String, relaciones: seq⟨String × String⟩) : seq⟨String⟩ {
--requiere: {relacionesV alidas(relaciones)}
--asegura: {resu tiene exactamente los elementos que figuran en alguna tupla de relaciones en las que alguna de las
--componentes es persona}
--

amigosDe :: String -> [(String,String)] -> [String]
amigosDe _ [] =[]
amigosDe y (x:xs) = amigosDe2 y x ++ amigosDe y xs

amigosDe2 :: String -> (String,String) -> [String]
amigosDe2 y (a,b) 
    |y==a = [b] 
    |y==b = [a]
    |otherwise = []

--
--problema personaConMasAmigos (relaciones: seq⟨String × String⟩) : String {
--requiere: {relaciones no vacıa}
--requiere: {relacionesValidas(relaciones)}
--asegura: {resu es el Strings que aparece mas veces en las tuplas de relaciones (o alguno de ellos si hay empate)}
--

personaConMasAmigos :: [(String,String)] -> String
personaConMasAmigos l = p (personas l) l 
    where p [x] _ = x
          p [a,b] _ |length(amigosDe a l)> length (amigosDe b l) = a
                    |otherwise = b
          p (x:xs) l |length(amigosDe x l)> length (p xs l) = x
                     |otherwise = p xs l