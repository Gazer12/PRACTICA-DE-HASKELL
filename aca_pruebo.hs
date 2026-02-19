pepe :: [a]->Int-> a 
pepe (x:_)1=x 
pepe (_:xs)n= pepe xs (n-1)



main ::IO()
main=do 
        putStrLn"ingrese string"
        a <- getLine 
        putStrLn"ingrese pos"
        b <- getLine 
        let num = read b :: Int

        putStrLn ("resltado"++ show (pepe a num))


        