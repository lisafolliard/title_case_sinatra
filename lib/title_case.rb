class String
  define_method(:title_case) do
    split_sentence = self.split
    split_sentence.each do |word|
      case word
      when "nor", "the", "and", "but", "an", "a", "or", "for"
        if(word === split_sentence[0])
          word.capitalize!()
        end
        break
      else
        word.capitalize!()
      end
    end
    split_sentence.join(" ")
  end
end
