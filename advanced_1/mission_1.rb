def capitalize_name lambda
  lambda.call('kaio')
  lambda.call('felipe')
end

lambda_capitalize = -> (word) { puts word.capitalize }

capitalize_name(lambda_capitalize)