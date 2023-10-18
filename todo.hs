-- goal 1: get the option the user inputs (add, print, search)
optionSelect option
  putStrLn $ "Julia " ++ option

buildTaskList list = do
  putStrLn "Enter option:"
  input <- getLine
  let option = read input :: String

  let x = optionSelect input
  

main = do
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

