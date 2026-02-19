--Escribir una función usando foldr que reciba un número n y una lista, y devuelva cuántos elementos son mayores que n.

pepe :: Int -> [Int] -> Int
pepe n xs = foldr (\x c -> if x > n then c + 1 else c ) 0 xs -- puedo definir directamen la funcion entre ()
-- en ves de hacer la funcion aparte la estructura es asi (\(aca va las variable que le paso)->(defino la funcion normal ya sea if for mod <> etc))


main :: IO()
main = do
    putStrLn "ingrese un numero "
    num <- getLine 
    putStrLn "ingrese un numero separados por espacios"
    l <- getLine 

    let a = read num :: Int 
    let lista = map read (words l) :: [Int]

    putStrLn ("resultado es " ++ show (pepe a lista))


