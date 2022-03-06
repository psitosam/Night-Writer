

class Braille
  def translate(incoming_text)
    braille = incoming_text.chars.map do |char|
      BrailleHash::DICTIONARY[char]
    end
  end
end 
