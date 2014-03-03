def is_fib?(i, a = 0, b = 1)  
  if i == a || i == b
    return true
  elsif b > i
    return false
  else
    is_fib?(i, b, a + b)
  end
end



puts is_fib?(927372692193078999171)
puts is_fib?(5)
puts is_fib?(4)

