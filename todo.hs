-- Julia Gersey & Hannah Ogden

addTask task list = list ++ [task]

printTaskList [] = do
  putStrLn ""

printTaskList (x:xs) = do
  putStrLn $ "\t" ++ x
  printTaskList xs

searchTaskList task [] = False

searchTaskList task (x:xs) =
  if task == x
    then True
    else searchTaskList task xs
 
buildTaskList list = do
  putStrLn "Below are the options: \n\tadd\n\tprint\n\tsearch\nEnter option: "
  option <- getLine

  if option == "add" then do
    putStrLn "Enter Task to Add: "
    task <- getLine
    let updatedList = addTask task list
    buildTaskList updatedList
  else if option == "print" then do
    putStrLn $ "Here are your tasks: " 
    printTaskList list
  else if option == "search" then do
    putStrLn "Enter Task to Search: "
    task <- getLine
    let found = searchTaskList task list
    if found
      then putStrLn $ "Found: " ++ task
      else putStrLn $ "Could not find: " ++ task
  else putStrLn "Error"

  buildTaskList list

main :: IO ()
main = do
  putStrLn $ "Welcome to Task Manager 3000"
  buildTaskList []
