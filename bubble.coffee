bubble = (array) -> 
  k = array.length - 1
  for j in [k..0] by -1
    for i in [1..j]
      if array[i] < array[i-1]
        tmp = array[i-1]
        array[i-1] = array[i]
        array[i] = tmp
  array