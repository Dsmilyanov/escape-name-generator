class NameGenerator
  def self.generate(pool)
    words_taken = pool.shuffle.take(rand(2..5))

    if words_taken.size == 2 && rand(1)
      words_taken.insert(1, 'of')
    end

    return words_taken.join(" ")
  end
end
