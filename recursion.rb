# Function returning fibonaci number coresponding to num position
def fib(num)
    i, j = 0, 1
    while i <= num
      puts i
      i, j = j, i + j
    end
  end
  
  
  
  # Recursive function returning an ordered array.
  def merge_sort(arr)
    arr_length = arr.length
    if arr_length <= 1
      return arr
    else
      # passing the divided array backe to merge_sort to 
      # compare and order an array
      first_half = merge_sort(arr.take(arr_length/2))
      second_half = merge_sort(arr.drop(arr_length/2))
      # Indicies for left, right and array elements
      i, j, k = 0, 0, 0
      while i < first_half.length && j < second_half.length
        if first_half[i] < second_half[j]
          arr[k] = first_half[i]
          i += 1
        else
          arr[k] = second_half[j]
          j += 1
        end
        k += 1
      end
      # Store remaining digits not stored above. Only one loop should run.
      while i < first_half.length do
        arr[k] = first_half[i]
        i += 1
        k += 1
      end
      while j < second_half.length do
        arr[k] = second_half[j]
        j += 1
        k += 1
      end
      
      return arr
    end
  end  