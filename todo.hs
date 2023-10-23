getOption :: String -> Int
getOption option 
  | option == "add" = 1
  | option == "print" = 2
  | option == "search" = 3
  | otherwise = 4

printTaskList [] = do
  putStrLn "End"

printTaskList (x:xs) = do
  putStrLn $ " Task: " ++ x
  printTaskList xs
 
buildTaskList list = do
  putStrLn "Enter option: "
  input <- getLine
  let option = read input :: String

  let x = getOption option
  print x

  let updatedList = list ++ [x]

  printTaskList updatedList
  buildTaskList updatedList

main :: IO ()
main = do
  putStrLn "Below are the options: \n\tadd\n\tprint\n\tsearch"
  buildTaskList []



-- printTaskList (x:xs) = do
--   putStrLn & "Here are your tasks:" ++ x
--   printTaskList xs

-- reference this:
-- getLetterGrade score
--   | score >= 90 = "A"
--   | score >= 80 = "B"
--   | score >= 70 = "C"
--   | score >= 60 = "D"
--   | otherwise = "F"

-- printGradeList [] = do
--   putStrLn "That is all!"

-- printGradeList (x:xs) = do
--   putStrLn $ " Grade: " ++ x
--   printGradeList xs

-- buildGradeList list = do
--   putStrLn "Enter grade"
--   input <- getLine
--   let grade = read input :: Int

--   let x = getLetterGrade grade
--   print x

--   -- this adds it to the front of the list
--   -- let updatedList = x:list
--   let updatedList = list ++ [x]

--   --print updatedList
--   printGradeList updatedList
--   buildGradeList updatedList

-- main = do
--   buildGradeList []

