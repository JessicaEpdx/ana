class String
  define_method(:ana) do |words|
    letters = ((self.split("")).sort()).join()
    original_words=words.split(',')
    sorted_words=[ ]
    result=[ ]

    original_words.each() do |word|
    sorted_words.push(((word.split("")).sort()).join())
    end

      sorted_words.each() do |word|
        if letters.length()==word.length()&&letters.eql?(word)
          index_ana=sorted_words.index(word)
          result.push(original_words.at(index_ana))
        end
    end
    result
  end
end
