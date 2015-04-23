class String
  define_method(:ana) do |words|
    letters = ((self.split("")).sort()).join()
    original_words=words.split(',')
    result=[ ]

    original_words.each() do |word|
      new_word=((word.split("")).sort()).join()
      if letters.length()==new_word.length()&&letters.eql?(new_word)
        result.push(word)
      end
    end
    end
    result
  end
end
