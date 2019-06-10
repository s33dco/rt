class Phrase < String

  def processor(string)
    string.downcase
  end


  def processed_content
    processor(self)
  end

  def palindrome?
    processed_content == processed_content.reverse
  end

  def to_s
    "#{content}"
  end

end

phrase = Phrase.new("Madam, I'm Adam")

p phrase
puts phrase
puts phrase

# defines a translated PHrase

class TranslatedPhrase < Phrase

  attr_accessor :translation

  def initialize(content, translation)
    super(content)
    @translation = translation
  end

  def processed_content
    processor(translation)
  end

end
