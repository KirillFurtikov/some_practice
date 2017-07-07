class RandomTaker
  attr_reader :numbers_count

  def initialize
    @numbers = []

    print 'Введите количество чисел: '
    @numbers_count = gets.to_i
    print 'Введите максимально возможное число: '
    max_number = gets.to_i
    until max_number >= @numbers_count
      print 'Введите число больше, чем их количество: '
      max_number = gets.to_i
    end

    while @numbers.size < @numbers_count
      @numbers << Random.new.rand(0..max_number)
      @numbers.uniq!
    end
  end

  def take
    if @numbers.any?
      @numbers_count -= 1
      @numbers.delete_at(Random.new.rand(0..@numbers_count))
    else
      puts 'Числа закончились!'
    end
  end
end
