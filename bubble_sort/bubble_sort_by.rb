def bubble_sort_by(tosort)
    sorted = tosort
    count = sorted.length
    while count > 0
        for i in 1..(count-1)
            if yield(sorted[i-1], sorted[i]) > 0
                #swap them
                sorted[i], sorted[i-1] = sorted[i-1], sorted[i]
            end
        end
        count -= 1
    end
    return puts sorted.to_s
end

bubble_sort_by(["hi","hello","hey"]) do |left, right|
    left.length - right.length
end