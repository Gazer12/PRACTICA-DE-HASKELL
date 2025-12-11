--Dado un numero calcular a partir del 5 y devolver una lista con los cubos de cada numero par de la-lista de entrada

cubo :: Integer -> [Integer]
cubo n = [x^3|x <- [5 ..n], x `mod` 2 == 0]

---lo agrego yo para probar no es necesario hacerlo 
main :: IO()
main = do 
    putStrLn "ingrese un nunmero mayor a 5"
    numero <- getLine 

    let n = read numero :: Integer 

    putStrLn ("EL RESULTADO DE LA OPERACION ES " ++ show (cubo n))