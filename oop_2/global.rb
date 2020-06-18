# A variável global (no caso, $global) fica disponível em todas as partes do programa e é extremamente perigosa e não recomendada.
# Como qualquer parte do programa pode alterá-la, fica difícil saber quem é o responsável pelo erro. 

class Bar
  def foo
    $global = 0
    puts $global
  end
end

class Baz
  def qux
    $global += 1
    puts $global
  end
end

bar = Bar.new
baz = Baz.new
bar.foo
baz.qux
baz.qux
puts $global

$global = 12345

puts $global