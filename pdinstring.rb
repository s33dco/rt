class String

  def palindrome?
    processed_content == processed_content.reverse
  end

  private
      def processed_content
        downcase
      end

end
