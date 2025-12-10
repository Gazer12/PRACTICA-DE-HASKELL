--definir recursivamente una función que retorne la longitud de una cadena de caracteres.
long :: String -> Integer 
long []=0 --esto se pone asi para cuando la lista es vacia
long (x:xs) = 1 + long xs --aca el 1 te sirvede contador es decir te va incrimetnado por cada letra y la forma de avanzar lo hace automaticamente el "long xs"
-- "x" apunta siempre a la primer letra y "xs" a la cola que sigue
--palrabra= hola 
--x=h y xs= ola 
--x=o y xs=la 

main :: IO() 
main = do 

    putStrLn "ingrese palabra para cuentar"
    pal <- getLine 

    putStrLn ("la longuitud de la palabra es " ++ show (long pal))