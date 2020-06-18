product_status = 'closed'

# pode usar o if not tambem
unless product_status == 'open'
  check_change = 'can'
else
  check_change = 'can not'
end
 
puts "You #{check_change} change the product"