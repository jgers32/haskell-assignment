-- Julia Gersey & Hannah Ogden

addTask task list = list ++ [task]

printTaskList [] = do
  putStrLn ""

printTaskList (x:xs) = do
  putStrLn $ "\t" ++ x
  printTaskList xs

-- searchTaskList task (x:xs) = do
--   if task == x then putStrLn $ "Found: " ++ x 
--   else  x == xs "Could not find"
 
buildTaskList list = do
  putStrLn "Below are the options: \n\tadd\n\tprint\n\tsearch\nEnter option: "
  option <- getLine

  if option == "add" then do
    putStrLn "Enter task to add: "
    task <- getLine
    let updatedList = addTask task list
    buildTaskList updatedList
  else if option == "print" then do
    putStrLn $ "Here are your tasks: " 
    printTaskList list
  -- else if option == "search" then do
  --   putStrLn "Enter task to search: "
  --   task <- getLine
  --   let searchResult = searchTaskList task list
  --   putStrLn $ searchResult
  else putStrLn "Error"

  buildTaskList list

main :: IO ()
main = do
  buildTaskList []
