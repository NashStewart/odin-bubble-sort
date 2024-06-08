def bubble_sort(array)
  is_sorted = false
  runs_left = array.size - 1

  until is_sorted || runs_left == 0
    is_sorted = true
    runs_left -= 1

    (0..runs_left).each do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        is_sorted = false
      end
    end
  end
  array
end

array1 = [4, 3, 78, 2, 0, 2]
array2 = [7, 3, 5, 4, 17, 3, 5, 35, 9, 16, 100, 1, 7, 8]
array3 = [0, 2, 2, 3, 4, 78]

p bubble_sort(array1) # [0,2,2,3,4,78]
p bubble_sort(array2) # [1, 3, 3, 4, 5, 5, 7, 7, 8, 9, 16, 17, 35, 100]
p bubble_sort(array3) # [0,2,2,3,4,78]
