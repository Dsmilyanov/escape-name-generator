class NameGenerator
  def self.generate(pool)
    words_taken = pool.shuffle.take(rand(2..5))

    if rand(2).zero?
      words_taken.insert(words_taken.size - 1, 'of')
    end

    return words_taken.join(" ")
  end
end
