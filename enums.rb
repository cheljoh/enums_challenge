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


puts "Start of the any? proc code"
puts "------------------"


def p_any?(compare_value, comparator)
  result = false
  case comparator
  when :>
    return Proc.new do |array|
      array.each { |element| result = true if element > compare_value }
      result
    end
  when :<
    return Proc.new do |array|
      array.each { |element| result = true if element < compare_value }
      result
    end
  when :==
    return Proc.new do |array|
      array.each { |element| result = true if element == compare_value}
      result
    end
  end
end

any_less_than18 = p_any?(18, :<)

x = [25, 30, 22, 19, 55, 83]
puts "\n\nany less than 18 for array #{x} returns #{any_less_than18.call(x)}\n\n"

x = [10, 34, 22, 73, 84]
puts "any less than 18 for array #{x} returns #{any_less_than18.call(x)}\n\n"

x = [10, 3, 5, 7, 17]
puts "any less than 18 for array #{x} returns #{any_less_than18.call(x)}\n\n"






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
