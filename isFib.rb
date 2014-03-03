def is_fibonacci?(i, a = 0, b = 1)  
  if i == a || i == b
    return true
  elsif b > i
    return false
  else
    is_fibonacci?(i, b, a + b)
  end
end



puts is_fib?(927372692193078999171)
is_fib?(5)
is_fib?(4)

