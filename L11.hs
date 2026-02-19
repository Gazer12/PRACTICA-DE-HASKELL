--Escribir una función recursiva que calcule el máximo elemento de la lista. 

pepe :: [Integer] -> Integer -> Integer  
pepe [] n = n --si la lista es vacioa devuevlo lo acumulado 
pepe (x:xs) n 
    | x > n = pepe xs x -- si se cumple la condicion tenemos que pasarle x para que n tome su valor 
    |otherwise = pepe xs n

main ::IO()
main = do 
    putStrLn "ingrese serie de numero separado por espacios"
    cadena <- getLine 

    let lista = map read (words cadena) :: [Integer]

    putStrLn ("el elemento mayor es " ++ show (pepe lista 0 ))