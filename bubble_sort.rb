def bubble_sort(arr)
  #Display Input Array
  puts "\nInput: #{arr}"

  #Calculate the max number of cycles this needs to be run (n-1)
  max_cycles = arr.length
  # Run arr.each max_cycle amount of times
  max_cycles.times do
    #Interate each index excluding last index as it will be swapped on the second to last index with i+1 if needed
    arr[0..-2].each_with_index do |num,i|
      # Check if value is greater than next value 
        if arr[i] > arr[i+1]
          # Swap values if true
          arr[i], arr[i+1] = arr[i+1], arr[i] 
        end
    end
  end
  # Display bubble sorted array
  puts "Output: #{arr}"
end

arr1 = [4,3,78,2,0,2]
arr2 = [5,2,8,43,0,22]
arr3 = [9,2,31,-1,0,2]


bubble_sort(arr1)
bubble_sort(arr2)
bubble_sort(arr3)