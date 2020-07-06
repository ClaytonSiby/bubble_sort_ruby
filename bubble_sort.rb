def bubble_sort(arr)
  if arr.is_a? Array
    loop do
      so_rt = false
      (arr.length - 1).times do |i|
        if arr[i] > arr[i + 1]
          arr[i], arr[i + 1] = arr[i + 1], arr[i]
          so_rt = true
        end
      end
      break unless so_rt
    end
    arr
  else
    puts 'The argument is not an array.'
  end
end

# This is the bubble_sort_by method.

def bubble_sort_by(array)
  if array.is_a? Array
    loop do
      so_rt = false

      (array.length - 1).times do |i|
        if (yield array[i], array[i + 1]).positive?
          array[i], array[i + 1] = array[i + 1], array[i]
          so_rt = true
        end
      end
      break unless so_rt
    end
    array
  else
    puts 'The argument is not an array.'
  end
end
