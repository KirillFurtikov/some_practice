points = []

print 'Введите X и Y координаты точки центра окружности через пробел: '
center = gets.chomp.split(' ').map(&:to_f)

print 'Введите радиус окружности: '
radius = gets.chomp.to_f

print 'Введите количество проверяемых точек: '
points_count = gets.chomp.to_i

points_count.times do |i|
  print "Введите координаты X и Y точки #{i + 1}: "
  points << gets.chomp.split(' ').map(&:to_f)
end

included =
  points.select do |x1, y1|
    [x1, y1] if radius >= Math.sqrt((center[0] - x1)**2 + (center[1] - y1)**2)
  end

puts 'Точки, входящие в окружность:'
included.each_with_index { |xy, i| puts "#{i+1}) X: #{xy[0]}, Y: #{xy[1]}" }
