def caesar_cipher(input_string, shift)
  result = ""
  
  input_string.each_char do |char|
    if char.match(/[a-zA-Z]/)
      shift_amount = shift % 26  # Ensure shift is within the alphabet range
      ascii_offset = char =~ /[a-z]/ ? 97 : 65  # Determine ASCII offset for lowercase or uppercase

      shifted_char = (char.ord - ascii_offset + shift_amount) % 26 + ascii_offset
      result << shifted_char.chr
    else
      result << char
    end
  end

  return result
end

# Example usage with "hello" and a shift of 5
input_string = "What a string!"
shift = 5
ciphered_text = caesar_cipher(input_string, shift)

puts "Original text: #{input_string}"
puts "Ciphered text: #{ciphered_text}"
