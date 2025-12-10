--Definir recursivamente la potencia en función del producto. 
pro :: Integer -> Integer -> Integer
pro _ 0 = 1 -- la lienea acostada "_" siginifcia que no me importa que venga en se lugar solo lo que esta despues ya que la funcion va a recibir "base y exponete" significa que no me importa que venga en la base solo el exponente 
pro a n 
    | n > 0 = a * pro a (n-1)
    |otherwise = error "error ta mal en algooo jajaj"

main :: IO()
main = do 
        putStrLn "ingrese la base "
        baseStr <- getLine 
        putStrLn "ingrese el exponente"
        expoStr <- getLine 

        let a =read baseStr :: Integer
        let n =read expoStr :: Integer

        let resultado = pro a n 

        putStrLn ("el resultado de "++ show a ++ " ^ " ++ show n ++ " es " ++ show resultado)
