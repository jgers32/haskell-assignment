-- Julia Gersey & Hannah Ogden

addTask task list = do
  let updatedList = list ++ [task]
  printTaskList updatedList

printTaskList [] = do
  putStrLn "End"

printTaskList (x:xs) = do
  putStrLn $ " Task: " ++ x
  printTaskList xs
 
buildTaskList list = do
  --addTask "gersey" list           addTask works (hard coded)
  --printTaskList list              printTaskList works (hard coded)
  -- build & implement searchTaskList

  putStrLn "Enter option: "
  option <- getLine

  if option == "add" then do
    putStrLn "Enter task to add: "
    task <- getLine
    addTask task list
  else if option == "print" then do
    printTaskList list
  -- else if option == "search" then do
  --   searchTaskList task list
  else putStrLn "error"

  buildTaskList updatedList

main :: IO ()
main = do
  putStrLn "Below are the options: \n\tadd\n\tprint\n\tsearch"
  buildTaskList []
