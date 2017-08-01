class RandomTaker
  def initialize
    @numbers = []

    print 'Введите количество чисел: '
    numbers_count = gets.to_i

    print 'Введите максимально возможное число: '
    max_number = gets.to_i

    until max_number >= numbers_count
      print 'Введите число не меньше их количества: '
      max_number = gets.to_i
    end

    while @numbers.size < numbers_count
      @numbers << rand(0..max_number)
      @numbers.uniq!
    end
  end

  def take
    @numbers.delete(@numbers.sample)
  end
end
