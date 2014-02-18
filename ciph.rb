class Encryptor
	def cipher(rotation)
		characters = (' '..'z').to_a
		rotated = characters.rotate(rotation)
		Hash[characters.zip(rotated)]
	end

	def encrypt_letter(letter, rotation)
		cipher_for_rotation = cipher(rotation)
		cipher_for_rotation[letter]
	end

	def encrypt(string, rotation)
		letters = string.split("")

		results = []
		letters.each {|letter|
			encrypted_letter = encrypt_letter(letter, rotation)
			results.push(encrypted_letter)
		}
		results.join
	end

	def decrypt(string, rotation)
		letters = string.split("")
		results = []

		
	end


end

