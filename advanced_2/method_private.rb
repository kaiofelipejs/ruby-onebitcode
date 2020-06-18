# Por padrão todos os métodos definidos são publicos. Isso significa que podem ser acessados por qualquer um
# Além dos publicos, existem os métodos chamados de private e protected

class Foo
  def call_private
    bar
  end
  
  private
  
  def bar
    puts "private method"
  end
end
  
foo = Foo.new
foo.call_private