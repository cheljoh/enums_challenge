

  def any?(&block)
    found = false
    each do |element|
      if block.call(element)
        found = true
        break
      end
    end
  end


ages = [12, 11, 13, 14, 16, 20]

puts ages.any? {|age| age > 15}

#need Proc implementation?

# ages = [12, 11, 13, 14, 16, 20]
# ages.any? { |age| age > 18 }
# => true
#
# ages = [25, 53, 31, 41, 43, 20]
# ages.any? { |age| age < 18 }
# => false
# Example behavior:
#
# require './enums'
# => true
# collection = [1, 2, 3, 4, 5]
# => [1, 2, 3, 4, 5]
# condition = Proc.new { |a| a > 6 }
# => #<Proc:0x007facc939d4b0@(pry):22>
# Enums.any?(collection, condition)
# => false
