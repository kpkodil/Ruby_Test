require "matrix"

puts "Программа преобразует введенные строки в матрицу и проверяет ее на квадратность"
puts "Для выхода из программы введите пустую строку"

input = String.new
new_line = Array.new
matrix = Array.new
matrix_width_i = 0
matrix_width = Array.new

loop do 
	puts "Введите строку матрицы, использую числа типа Float/Integer"
	input = gets.chomp
	if input == ''
		break
	end	
	new_line = input.split(",").map { |s| s.to_f}
	matrix = matrix.push(new_line)
	matrix_width_i = new_line.length
	matrix_width = matrix_width.push(matrix_width_i)
end

for index in (0..matrix.size) do
	puts "#{matrix[index]}"
end	

if matrix_width.uniq.count == 1 && matrix_width[0] == matrix.length
	puts "Ваша матрица - квадратная"
	matrix = Matrix[*matrix]
	puts "Определитель равен #{matrix.determinant()}"
	
else
	puts "Ваша матрица не квадратная"

end
