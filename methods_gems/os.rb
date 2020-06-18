require 'os'

def my_os
   case
   when OS.windows?
      "Windows"
   when OS.linux?
      "Linux"
   when OS.mac?
      "Osx"
   else 
      "Não consegui identificar"
   end
end

puts "Meu PC possui #{OS.cpu_count} cores, é #{OS.bits} bits e o sistema operacional é #{my_os}"