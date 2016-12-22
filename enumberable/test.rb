require "./enumerable.rb"

puts "***my_each***"
my_each = [3, 5].my_each {|num| puts "cool #{num}"}
puts "-----"
each = [3, 5].each {|num| puts "cool #{num}"}
puts "#{my_each} =? #{each} "+(my_each == each).to_s

my_each = [3, 5].my_each
each = [3, 5].each
puts "#{my_each} =? #{each} "
puts

puts "***my_each_with_index***"
my_each_with_index = [3, 5].my_each_with_index {|num, index| puts "cool #{num} & #{index}"}
puts "-----"
each_with_index = [3, 5].each_with_index {|num, index| puts "cool #{num} & #{index}"}
puts "#{my_each_with_index} =? #{each_with_index} "+(my_each_with_index == each_with_index).to_s
puts

puts "***my_select***"
my_selectit = [3, 5, 4].my_select {|num| num.even?}
selectit = [3, 5, 4].select {|num| num.even?}
puts "#{my_selectit} =? #{selectit} "+(my_selectit == selectit).to_s
puts

puts "***my_all?***"
my_all= [3, 5, 4].my_all? {|num| num.even?}
all = [3, 5, 4].all? {|num| num.even?}
puts "#{my_all} =? #{all} "+(my_all == all).to_s
puts

my_all= [3, 5, 4].my_all? {|num| num < 10}
all = [3, 5, 4].all? {|num| num < 10}
puts "#{my_all} =? #{all} "+(my_all == all).to_s
puts

puts "***my_any?***"
my_any= [3, 5, 4].my_any? {|num| num.even?}
any = [3, 5, 4].any? {|num| num.even?}
puts "#{my_any} =? #{any} "+(my_any == any).to_s
puts

puts "***my_none?***"
my_none= [3, 5, 4].my_none? {|num| num.even?}
none = [3, 5, 4].none? {|num| num.even?}
puts "#{my_none} =? #{none} "+(my_none == none).to_s
puts

puts "***my_count***"
my_count= [3, 5, 4].my_count {|num| num.even?}
count = [3, 5, 4].count {|num| num.even?}
puts "#{my_count} =? #{count} "+(my_count == count).to_s
puts

puts "***my_map***"
my_map= [3, 5, 4].my_map {|num| num.even?}
map = [3, 5, 4].map {|num| num.even?}
puts "#{my_map} =? #{map} "+(my_map == map).to_s
puts

puts "***my_inject***"
my_inject= [3, 5, 4].my_inject {|sum, num| sum * num}
inject = [3, 5, 4].inject {|sum, num| sum * num}
puts "#{my_inject} =? #{inject} "+(my_inject == inject).to_s
puts

puts "***multiply_els***"
puts multiply_els([3, 5, 4])

#Create Proc
def gen_times(factor)
  return Proc.new {|n| n*factor }
end

puts "***my_map proc or block***"
my_map= [3, 5, 4].my_map {|num| num*2}
map = [3, 5, 4].my_map(gen_times(2))
puts "#{my_map} =? #{map} "+(my_map == map).to_s
puts