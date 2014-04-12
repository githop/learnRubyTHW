def check_password?(str)
  regex = /^(?=.*(\d|[!@#$%&*+:?]))(?=.*[a-z])(?=.*[A-Z])([\x41\x42\x43\x44\x45\x46\x47\x48\x49\x4A\x4B\x4C\x4D\x4E\x4F\x50\x51\x52\x53\x54\x55\x56\x57\x58\x59\x5A\x61\x62\x63\x64\x65\x66\x67\x68\x69\x6A\x6B\x6C\x6D\x6E\x6F\x70\x71\x72\x73\x74\x75\x76\x77\x78\x79\x7A\x31\x32\x33\x34\x35\x36\x37\x38\x39\x30\x21\x40\x23\x24\x25\x26\x2A\x2B\x3A\x3F]){6,20}$/
    if str =~ regex
      true
    else
      false
    end
end

p check_password?("pasword!@") == false #no caps
p check_password?("Password") == false #no special char or digit
p check_password?("Pas2!") == false # too short
p check_password?("PasOind#(2jfkdaldFFDe") == false #too long
p check_password?("Pasword!@") == true
p check_password?("Pasword01") == true
p check_password?("pasWord!") == true

  


