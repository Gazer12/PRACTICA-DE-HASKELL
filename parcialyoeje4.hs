pepe :: Int -> Int ->[Int]
pepe a b = 
    [x| x <-[a..b],x>1,[n| n<-[2..x-1], x `mod` n == 0 ] == []]


main :: IO()
main = do
    putStrLn "Ingrese un numero:"
    p <- getLine
    putStrLn "Ingrese otro numero:"
    j <- getLine

    let a = read p :: Int
    let b = read j :: Int

    putStrLn ("Resultado: " ++ show (pepe a b))

