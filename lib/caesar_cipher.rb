def caesar_cipher(input_string, shift)
  result = ""

  input_string.each_char do |char|
    if char.match(/[a-zA-Z]/)
      ascii_offset = char =~ /[a-z]/ ? 'a'.ord : 'A'.ord

      # Calculate the effective shift within the range of 0-25
      effective_shift = shift % 26

      shifted_char = (((char.ord - ascii_offset + effective_shift) % 26 + 26) % 26 + ascii_offset).chr
      result << shifted_char
    else
      result << char  # Non-alphabetic characters are added as is
    end
  end

  return result
end


# Example usage with "hello" and a shift of 5
input_string = "What a string!"
shift = 31
ciphered_text = caesar_cipher(input_string, shift)

puts "Original text: #{input_string}"
puts "Ciphered text: #{ciphered_text}"
