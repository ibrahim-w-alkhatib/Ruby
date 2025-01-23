def caesar_cipher(text, key)
  alphabet = ('a'..'z').to_a
  plain_txt = text.chars
  cipher_text = ""

  plain_txt.each do |letter|
    if letter.downcase != letter.upcase
      cipher_letter = (alphabet.index(letter.downcase) + key) % alphabet.size
      cipher_text += alphabet[cipher_letter]
    else
      cipher_text += letter
    end  
  end

  p "#{cipher_text}"
end

caesar_cipher(gets.chomp, gets.chomp.to_i)