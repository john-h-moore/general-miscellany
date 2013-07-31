=begin
John H Moore  john@jhmwebdesign.com

Mergesort implementation in ruby
=end

def mergesort(myList, first=0, last=myList.length)
  if last > 1
    lLast = last/2
    rLast = last - lLast
    mergesort(myList, first, lLast)
    mergesort(myList, first + lLast, rLast)
    merge(myList, first, lLast, rLast)
  end
end


def merge(myList, first, lLast, rLast)
  temp = []
  l, r = 0, 0
  while l < lLast and r < rLast
    if myList[first + l] < myList[first + lLast + r]
      temp << myList[first + l]
      l+=1
    else
      temp << myList[first + lLast + r]
      r+=1
    end
  end
  while l < lLast
    temp << myList[first + l]
    l+=1
  end
  while r < rLast
    temp << myList[first + lLast + r]
    r+=1
  end
  for i in 0..temp.length-1
    myList[first + i] = temp[i]
  end
end