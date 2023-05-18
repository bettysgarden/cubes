# Вывести сумму кубов
# для заданного интервала натуральных чисел (например, для (1..3) должно возвращаться 36).
def sum_of_cubes(range)
  sum = 0
  range.each do |num|
    sum += num ** 3
  end
  sum
end

range = (1..3)
result = sum_of_cubes(range)

puts "Сумма кубов чисел в заданном интервале #{range} равна: #{result}"
