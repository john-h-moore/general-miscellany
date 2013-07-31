=begin
John H Moore  john@jhmwebdesign.com
Quick sort implementation in ruby
=end
def choosePivot(myList, left, right)
  mid = myList[left..right].length/2
  if myList[left] <= myList[mid] and myList[mid] <= myList[right]
    return mid
  elsif myList[left] <= myList[right] and myList[right] <= myList[mid]
    return right
  else
    return left
  end
end

def partition(myList, left, right, pivotIndex)
  pivot = myList[pivotIndex]
  myList[pivotIndex], myList[right] = myList[right], myList[pivotIndex]
  newPivot = left
  for index in left..right-1
    if myList[index] <= pivot
      myList[index], myList[newPivot] = myList[newPivot], myList[index]
      newPivot += 1
    end
  end
  myList[newPivot], myList[right] = myList[right], myList[newPivot]
  return newPivot
end

def quicksort(myList, left, right)
  if left < right
    p = choosePivot(myList, left, right)
    pNew = partition(myList, left, right, p)
    quicksort(myList, left, pNew-1)
    quicksort(myList, pNew+1, right)
  end
end