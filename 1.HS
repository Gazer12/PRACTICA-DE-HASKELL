--Definir recursivamente el producto en función de la suma.
producto :: Int -> Int -> Int --para la funcion es asi le pasos el tipo de tu valor el otro tipo y despues que devuelve 
producto a 0 = 0 --caso base va a ser cuando ax0=0 es decir cuando B=0
producto a b = a + producto a (b - 1) --mi caso recursivo "a" pasa como esta y a "b" se le resta 1 

main :: IO ()
--main = print (producto 5 3)
main = do 
    putStrLn "ingrese un numero a"
    baseStr <- getLine 
    putStrLn "ingrese un numero b"
    base2Str <- getLine 

    let a = read baseStr :: Int
    let b = read base2Str :: Int

    let resultado = producto a b 

    putStrLn ("resultado es " ++ show resultado)


