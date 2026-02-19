--multiplicar todo los elemento de una lista 

pepe :: [Int] -> Int 
pepe xs = foldr (*) 1 xs --para la suma se pone 0 y para la multiplicaion 1 


main :: IO()
main = do 
    putStrLn "ingrese un numero"
    num <- getLine 

    let n = read num :: Int 
    let a = [1..n]

    putStrLn ("resultado " ++ show (pepe a))