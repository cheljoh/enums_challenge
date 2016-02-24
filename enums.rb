require 'pry'

# ANY

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

# puts ages.any? {|age| age > 15}

#need Proc implementation?

def compareAge(ages, i)
  ages.map do |age|
    if Proc.new { |i| i > age }
      true
    end
  end
end

# puts compareAge(ages, 10);

# SELECT

# condition = Proc.new { |a| a % 2 == 0 }


def select(collection_of_people, num)
  result = []
  collection_of_people.map do |age|
    result << age if age > num
  end
  return result
end

puts select([12, 11, 13, 14, 16, 20], 15)

# Enums.select(ages, condition)

# def add(num)
#   return Proc.new {|i| i + num }
# end
# add5 = add(5)
# add5.call(10)
# => 15

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
