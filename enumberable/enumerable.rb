module Enumerable
    def my_each
        return enum_for(__method__) unless block_given?
        for i in 0...self.to_a.length
            yield(self.to_a[i])
        end
        return self
    end
    
    def my_each_with_index
        return enum_for(__method__) unless block_given?
        for i in 0...self.to_a.length
            yield(self.to_a[i], i)
        end
        return self
    end
    
    def my_select
        return enum_for(__method__) unless block_given?
        output = []
        self.to_a.my_each { |num|
            if yield(num)
                output.push(num)
            end
        }
        return output
    end
    
    def my_all?
        return enum_for(__method__) unless block_given?
        output = true
        self.to_a.my_each { |num|
            if !yield(num)
                output = false
                break
            end
        }
        return output
    end
    
    def my_any?
        return enum_for(__method__) unless block_given?
        output = false
        self.to_a.my_each { |num|
            if yield(num)
                output = true
                break
            end
        }
        return output
    end
    
    def my_none?
        return enum_for(__method__) unless block_given?
        output = true
        self.to_a.my_each { |num|
            if yield(num)
                output = false
                break
            end
        }
        return output
    end
    
    def my_count
        return enum_for(__method__) unless block_given?
        output = 0
        self.to_a.my_each { |num|
            if yield(num)
                output += 1
                break
            end
        }
        return output
    end
    
    def my_map
        return enum_for(__method__) unless block_given?
        output = []
        self.to_a.my_each { |num|
            output.push(yield(num))
        }
        return output
    end
    
    def my_map(proc=nil)
        output = []
        if proc==nil && block_given?
            self.to_a.my_each { |num|
                output.push(yield(num))
            }
        elsif proc
            self.to_a.my_each { |num|
                output.push(proc.call(num))
            }
        else
            return enum_for(__method__)
        end
        return output
    end
    
    def my_inject
        return enum_for(__method__) unless block_given?
        array = self.to_a
        output = array[0]
        for i in 1...array.length
            output = yield(output, array[i])
        end
        return output
    end
end

def multiply_els(array)
    array.my_inject { |product, num| product*num}
end