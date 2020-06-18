class Animal
   def pular
      puts 'Toing! tóim! boim! poim!'
   end

   def dormir
      puts 'ZzZzzZ!'
   end   
end

class Cachorro < Animal
   def latir
      puts 'Au Au!'
   end
end

class Cachorro < Animal
   def meow
      puts 'Meow!'
   end
end

cachorro = Cachorro.new
cachorro.pular
cachorro.dormir