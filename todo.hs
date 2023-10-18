-- goal 1: get the option the user inputs (add, print, search)
optionSelect option
  | option == "add" = "then add"
  | otherwise = "other"

  

main = do
  putStrLn "Enter option:"
  input <- getLine
  let option = read input :: String

  let x = optionSelect option
  putStrLn $ "option:" ++ x



-- printTaskList (x:xs) = do
--   putStrLn & "Here are your tasks:" ++ x
--   printTaskList xs