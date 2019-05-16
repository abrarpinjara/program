{--
This is the basic interface of the game:
need to add more options about the different Boxs
need to add more options inside the function description

Further development could be utilized the type declaration of the new data structure to store
the default Boxs' attributes, and enable the user to have the interactions with the Boxs' objects,
for example, pick up the swords, etc.
--}
import System.IO 

game :: IO ()
game = do putStrLn "Input which direction "
          direction <- getLine
          putStrLn "input which Box are you going to Open:"
          play direction

play :: String -> IO ()
play direction =
   do guess <- getLine
      if guess == "quit" then
         putStrLn "You won/game over!"
      else
         do putStrLn (match direction guess)
            play direction

match :: String -> String -> String
match xs ys = description xs ys

--need to add more options of the Boxs, for example
-- description "s" "Box4"= "you are inside Box4"
description :: String->String -> String
description "w" "Box1" =
    "You are in a Box1.  Brooooooooh !!!! Lolz\n" ++
    "of a Box2; You got another box Box5  Your\n" ++
    "assignment, should you decide to accept it, is to\n" ++
    "recover the famed Iphone X Max and return it to\n" ++
    "this Box3."
description "w" "Box2" = "Congratulations!!  You have Found Iphone X Max and won the game."
description "s" "Box1" =
    "Tada!! You got a Snake in Box2.  The exit is to\n" ++
    "Here is a large, dark, round passage to\n" ++
    "the east."
--description "s" "Box4"= "you are inside Box4"
description _ _ = "Dark Hole: Yuppy It's Empty Again!!!"




