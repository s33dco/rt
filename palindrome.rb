# best in a module

module Palindrome

	# Returns true for a palindrome, false otherwise.

	def palindrome?
	  processed_content == processed_content.reverse
	end

	  private

	# Returns content for palindrome testing.
	def processed_content
		to_s.downcase
	end
end


class String
	include Palindrome
end

class Integer
	include Palindrome
end

# # alternatively extend String
# class String

# 	# Returns true for a palindrome, false otherwise.
# 	def palindrome?
# 	  processed_content == processed_content.reverse
# 	end

# 	# returns  returns true if the string is empty or consists solely of whitespace
# 	def blank?
# 		self.match(/^\s$/) ? true : false
# 	end

#   private
#   # Returns content for palindrome testing.
#   def processed_content
#     downcase
#   end

# end




# # Defines a Phrase class (inheriting from String).
# class Phrase < String

#   # Processes the string for palindrome testing.
#   def processor(string)
#     string.downcase
#   end

#   # Returns content for palindrome testing.
#   def processed_content
#     processor(self)
#   end

#   # Returns true for a palindrome, false otherwise.
#   def palindrome?
#     processed_content == processed_content.reverse
#   end
# end

# # Defines a translated Phrase.
# class TranslatedPhrase < Phrase
#   attr_accessor :translation

#   def initialize(content, translation)
#     super(content)
#     @translation = translation
#   end

#   # Processes the translation for palindrome testing.
#   def processed_content
#     processor(translation)
#   end
# end
