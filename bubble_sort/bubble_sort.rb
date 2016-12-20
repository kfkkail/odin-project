def bubble_sort(tosort)
    sorted = tosort
    count = sorted.length
    while count > 0
        for i in 1..(count-1)
            diff = sorted[i-1] - sorted[i]
            if diff > 0
                #swap them
                sorted[i], sorted[i-1] = sorted[i-1], sorted[i]
            end
        end
        count -= 1
    end
    return puts sorted.to_s
end

bubble_sort([4,3,78,2,0,2])