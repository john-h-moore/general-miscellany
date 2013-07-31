# Not currently functioning

merge = (left, right) ->
  sorted = []
  lLen = left.length
  rLen = right.length
  l = 0
  r = 0
  while (l < lLen && r < rLen)
    if left[l] < right[r]
      sorted.push(left[l])
      l++
    else if left[l] > right[r]
      sorted.push(right[r])
      r++
    else
      sorted.push(left[l])
      sorted.push(right[r])
      l++
      r++
   while l < lLen
      sorted.push(left[l])
      l++
   while r < rLen
      sorted.push(right[r])
      r++
   return sorted

split = (array, start, end) ->
  half = []
  for i in [start..end]
    half.push(array[i])
  return half

mergesort = (unsorted) ->
  halfway = parseInt(unsorted.length/2)
  if unsorted.length > 3
     mergesort(split(unsorted, 0, halfway-1))
     mergesort(split(unsorted, halfway, unsorted.length-1))
  merge(split(unsorted, 0, halfway), split(unsorted, halfway,unsorted.length-1))