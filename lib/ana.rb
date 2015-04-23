class String
  define_method(:ana) do |words|
    letters = ((self.split("")).sort()).join()
    original_words=words.split(',')
    sorted_words=[ ]

    original_words.each() do |word|
      sorted_words.push(((word.split("")).sort()).join())

    end
    sorted_words
  end
end
