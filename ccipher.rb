ALPHA_RANGE = 26

def ceasar_cipher(plain_word, cipher_offset)
    new_word = ""
    plain_word.each_char do |char|
        if !char.match(/[[:alpha:]]/)
            new_word += char
            next
        end

        if char == char.downcase
            new_word += (((char.ord + cipher_offset) - 'a'.ord) % ALPHA_RANGE + 'a'.ord).chr #(((char + offset) - range_start) % range_length) + range_start
        elsif char == char.upcase
            new_word += (((char.ord + cipher_offset) - 'A'.ord) % ALPHA_RANGE + 'A'.ord).chr
        end
    end
    return new_word
end

#Expected output: kwnjsi
cipher_word = ceasar_cipher("friend", 5)
puts cipher_word

#Expected output: helpful
cipher_word = ceasar_cipher("helpful", 26)
puts cipher_word

#Expected output: K aesmu lbygx pyh tewzon yfob dro vkji nyq.
cipher_word = ceasar_cipher("A quick brown fox jumped over the lazy dog.", 10)
puts cipher_word

#Expected output: Bmfy f xywnsl!
puts ceasar_cipher("What a string!", 5)