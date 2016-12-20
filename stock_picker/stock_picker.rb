def stock_picker(array)
    buy_day = 0
    sell_day = 0
    profit = 0
    
    for i in 0..(array.length-2)
        buy_value = array[i]
        for j in (i+1)..(array.length-1)
            sell_value = array[j]
            diff = sell_value-buy_value
            if diff > profit
                profit = diff
                buy_day = i
                sell_day = j
            end
        end
    end
    
    return puts "The best time to buy is day #{buy_day} and the best time to sell is day #{sell_day} with a profit of $#{profit}"
end

stock_picker([17,3,6,9,15,8,6,1,10])
stock_picker([17,3,6,9,15,8,6,1,300])