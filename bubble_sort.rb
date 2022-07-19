def bubble_sort(arr)
  puts "\nInput: #{arr}"
  max_times = arr.length
  max_times.times do
    arr[0..-2].each_with_index do |num,i|
        if arr[i] > arr[i+1]
          arr[i], arr[i+1] = arr[i+1], arr[i] 
        end
    end
  end
  puts "Output: #{arr}"
end

arr1 = [4,3,78,2,0,2]
arr2 = [5,2,8,43,0,22]
arr3 = [9,2,31,-1,0,2]


bubble_sort(arr1)
bubble_sort(arr2)
bubble_sort(arr3)