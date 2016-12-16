def caesar_cipher (string, shift_factor)
    #puts string
    #puts shift_factor
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    ciphered_string = ""
    string.each_char { |letter|
        letter_index = alphabet.index(letter.downcase)
        if letter_index == nil
            ciphered_string += letter
        else
            new_letter_index = letter_index + shift_factor
            while new_letter_index > 25
                new_letter_index -= 26
            end
            
            if /[[:upper:]]/.match(letter).to_s == ""
                ciphered_string += alphabet[new_letter_index].downcase
            else
                ciphered_string += alphabet[new_letter_index].upcase
            end
        end
    }
    return ciphered_string
end

ciphered = caesar_cipher("What a string!", 5)
puts ciphered

ciphered2 = caesar_cipher("What a string!", 31)
puts ciphered2