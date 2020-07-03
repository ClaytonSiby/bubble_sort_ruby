def bubble_sort(arr)
    unless arr.is_a?Array
        puts "The argument is not an array." 
    else
      loop do
        so_rt = false
        (arr.length - 1).times do |i|
           if  arr[i] > arr[i + 1]
              arr[i], arr[i + 1] = arr[i + 1], arr[i]
              so_rt = true
           end
       end
       break if !(so_rt)
      end
      arr
    end
end

#This is the bubble_sort_by method.

def bubble_sort_by(array)
  unless array.is_a?Array
    puts "The argument is not an array."
  else
    loop do
      so_rt = false

      (array.length - 1).times do |i|
        if (yield array[i] , array[i + 1]) > 0
          array[i], array[i + 1] = array[i + 1], array[i]
          so_rt = true
        end
      end
      break if !(so_rt)
    end
    array
  end
end