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