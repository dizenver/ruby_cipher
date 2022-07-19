def stock_picker2(arr)
  #initilize counts
  max_diff = arr[1]-arr[0]
  buy_day = 0
  buy_price = 0
  sell_day = 0
  sell_price = 0

  # begin loop for checking buy day
  arr.each_with_index do |price_x, day_x|
    # begin inner loop for sell day
    arr.each_with_index do |price_y, day_y|
      # check if current price difference is higher than max_diff 
      # AND day_x(day to buy) is BEFORE day_y (day to sell)
      if arr[day_y] - arr[day_x] > max_diff && day_y > day_x
        max_diff = arr[day_y] - arr[day_x]
        # assign variables when optimal days are met
        buy_day = day_x
        buy_price = price_x
        sell_day = day_y
        sell_price = price_y
      end
    end
  end
  puts "Buy stock on day: #{buy_day} for $#{buy_price}"
  puts "Sell it day: #{sell_day} for $#{sell_price}"
  puts "Profit: $ #{max_diff}"
  [buy_day, sell_day]
end


stocks1 = [7,3,6,9,15,8,6,1,10]
stocks2 = [3,1,2,37,10,41,2,24,2]
stocks3 = [8,12,3,5,19,7,10,4,11]

puts "Example 1: "
p stock_picker2(stocks1)

puts "\nExample 2: "
p stock_picker2(stocks2)

puts "\nExample 3: "
p stock_picker2(stocks3)
