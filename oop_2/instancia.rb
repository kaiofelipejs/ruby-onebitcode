# Esse é mais comum de ser usado. Ela é semelhante a variável de classe, mas a diferência é que não compartilha o valor entre todas as instâncias da classe.

class User
  def add(name)
    @name = name
    puts 'User adicionado'
    hello
  end

  def hello
    puts "Seja bem vindo, #{@name}!"
  end
end

first_user = User.new
first_user.add('Kaio')

second_user = User.new
second_user.add('Felipe')