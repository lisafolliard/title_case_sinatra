class String
  define_method(:title_case) do
    split_sentence = self.split
    split_sentence.each do |word|
      word.capitalize!()
      case word
      when "Nor", "The", "And", "But", "An", "A", "Or", "For"
        if(word != split_sentence[0])
          word.downcase!()
        end
      end
    end
    split_sentence.join(" ")
  end
end
