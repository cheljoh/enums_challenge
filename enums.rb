require 'pry'
################################### ANY

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
# puts "\n\nany less than 18 for array #{x} returns #{any_less_than18.call(x)}\n\n"

x = [10, 34, 22, 73, 84]
# puts "any less than 18 for array #{x} returns #{any_less_than18.call(x)}\n\n"

x = [10, 3, 5, 7, 17]
# puts "any less than 18 for array #{x} returns #{any_less_than18.call(x)}\n\n"

#need Proc implementation?

def compareAge(ages, i)
  ages.map do |age|
    if Proc.new { |i| i > age }
      true
    end
  end
end

# puts compareAge(ages, 10);

################################################ SELECT

def select(collection_of_people, num)
  result = []
  collection_of_people.map do |age|
    result << age if age > num
  end
  return result
end

# puts select([12, 11, 13, 14, 16, 20], 15)

############################################### REJECT

def reject(collection_of_people, num)
  result = []
  collection_of_people.map do |age|
    result << age if age % 2 != num
  end
  return result
end

# puts reject([12, 11, 13, 14, 16, 20], 0)

############################################### REDUCE

def reduce(collection)
  result = 0
  collection.each do |age|
    result += age
  end
  puts result
end

reduce([12, 11, 13, 14, 16, 20])
