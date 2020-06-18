# Nesse exemplo o método puts (que foi criado) está dentro de um namespace e não tenta sobreescrever o "puts" nativo do Ruby

module ReserveWord
  def self.puts text
    print text.reverse.to_s
  end
end

ReserveWord::puts 'O resultado é'

# Podemos criar classes dentro de Modules

module NormalWord
  class Imprimir
    def call text
      puts text
      print '--- Imprimir ---'
    end
  end
end

imprimir = NormalWord::Imprimir.new
imprimir.call 'Testando...'