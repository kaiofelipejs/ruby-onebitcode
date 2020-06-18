# Maneira não convencional e mais complicada de ler atributos

# class Dog
#   def name 
#     @name
#   end

#   def name= name
#     @name = name
#   end
# end

# dog = Dog.new
# dog.name = 'Zorá'
# puts dog.name

#  ================================

class Dog
  attr_accessor :name, :age
end

dog = Dog.new
dog.name = 'Zorá'
puts dog.name

dog.age = '2 anos'
puts dog.age