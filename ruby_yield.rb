class Array
  def my_select2
    return self.dup unless block_given?

    ary = []

    self.each do |elem|
      if yield(elem) # == true
        ary << elem
      end
    end

    ary
  end

  def my_select
    #return self.dup unless block_given?
    if !block_given?
      #return self.dup # => return a copy
      return self # => return original array
      #return "Don't call me without a block you moron"
    end

    ary = []

    # for each element of array
    # if user defined statement/block is true
    # add to ary
    self.each_with_index do |elem, i| # this means call each element of the array "elem"
      # elem => s
      # result = s.size == 4

      # yield is whatever is defined between {THIS}
      # with every parameter replaced i.e. s becomes elem
      # this results in `yield(elem)` being equal to elem.size == 4
      result = yield(elem, i)
      puts "elem = #{elem}, index = #{i}, result = #{result}" # == elem.even?

      if result
        #elem << ary # How?!
        #number += sum # How?!

        #sum += number
        #sum = sum + number
        ary << elem
      end
    end

    return ary
  end

end

puts
puts ["aj", "koko", "mari"].my_select { |s, i| s.size == 4 && i.even? } # => [koko, mari]
puts
puts ["aj", "koko", "mari"].my_select { |s| s.size == 4 } # => [koko, mari]
#puts
#puts [15, 8, 23, 24, 4].my_select { |i| i % 4 == 0 } # => [8, 24, 4]

# [1, 2, 3, 4].select { |i| i.even? } # => [2, 4]
# [1, 2, 3, 4].select { |i| i.odd? } # => [1, 3]
# [1, 2, 3, 4].select { |i| i % 4 == 0 } # => [4]

# puts
# puts [1, 2, 3, 4].my_select { |i| i.even? } # => [2, 4]

# puts
# puts [1, 2, 3, 4].my_select { |i| i.odd? } # => [1, 3]

# puts
# puts [1, 2, 3, 4].my_select { |i| i % 4 == 0 } # => [4]
