# Por padrão todos os métodos definidos são publicos. Isso significa que podem ser acessados por qualquer um
# Além dos publicos, existem os métodos chamados de private e protected

class Foo
  def call_protected(instance)
    instance.bar
  end

  protected

  def bar
    puts "protected method"
  end
end

instance_1 = Foo.new
instance_1.call_protected(instance_1)

instance_2 = Foo.new
instance_2.call_protected(instance_2)