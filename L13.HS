---Definir recursivamente una función reversa que invierta el orden de los elementos de una lista. 

pepe :: [a] -> [a]
pepe [] =[]
pepe (x:xs) = pepe xs ++ [x]

main :: IO()
main =do 
        putStrLn "ingrese la frase" 
        frase <- getLine 

        --let a = map read (words frase) :: [Integer]

        putStrLn("la frase invetida es " ++ show (pepe frase))