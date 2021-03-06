dots = []

print 'Введите X и Y координаты точки центра окружности через пробел: '
center = gets.chomp.split(' ').map { |coords| coords.to_f }

print 'Введите радиус окружности: '
radius = gets.chomp.to_f

print 'Введите количество проверяемых точек: '
dots_count = gets.chomp.to_i

dots_count.times do
  puts 'Введите координаты X и Y всех точек'
  dots << gets.chomp.split(' ').map { |el| el.to_f }
end

included =
    dots.select do |x1,y1|
      [x1, y1] if radius > Math.sqrt((center[0] - x1)**2 + (center[1] - y1)**2)
    end

puts 'Точки, входящие в окружность:'
included.each {|x, y| puts "X: #{x}, Y: #{y}"}
