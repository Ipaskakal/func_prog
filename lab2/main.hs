import Lab1

main :: IO ()
main = do
  print "hello, i'm gonna solve a system of equations using Gauss elimination."
  print "A * x == b  where"

  let mA = [[1, -2, 1], [2, 1, -3], [4, -7, 1]] :: Matrix
  putStr "A="
  print mA

  let mb = [0, 5, -1] :: Vector
  putStr "b="
  print mb

  let x = gauss mA mb
  putStr "x="
  print x

  putStr "next 2 lines are A*x and b. they should be equal which means that the solution is correct"
  print (mapMatrix mA x)
  print mb