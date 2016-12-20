def stock_picker(array)
    buy_day = 0
    sell_day = 0
    diff_matrix = Array.new(array.length*4)
    buy_days = Array.new(array.length*4)
    sell_days = Array.new(array.length*4)
    count = 0
    
    for i in 0..(array.length-2)
        buy_value = array[i]
        for j in (i+1)..(array.length-1)
            sell_value = array[j]
            diff_matrix[count] = sell_value-buy_value
            buy_days[count] = i
            sell_days[count] = j
            count += 1
        end
    end
    index = diff_matrix.index {|x| x == diff_matrix.max}
    buy_day = buy_days[index]
    sell_day = sell_days[index]
    
    return puts "The best time to buy is day #{buy_day} and the best time to sell is day #{sell_day} with a profit of $#{diff_matrix.max}"
end

stock_picker([17,3,6,9,15,8,6,1,10])
stock_picker([17,3,6,9,15,8,6,1,300])