module Person
  class Juridic
    def initialize(name, cnpj)
      @name = name
      @cnpj = cnpj 
    end

    def add
      puts 'Pessoa Jurídica adicionada'
      puts "nome: #{@name}"
      puts "cnpj: #{@cnpj}"
    end
  end

  class Physical
    def initialize(name, cpf)
      @name = name
      @cpf = cpf
    end

    def add 
      puts 'Pessoa Física adicionada'
      puts "nome: #{@name}"
      puts "cpf: #{@cpf}"
    end
  end
end

Person::Juridic.new('Aprender LTDA', '3333.123/0001').add
Person::Physical.new('Kaio Felipe José da Silva', '109.366.333.222.01').add