class String
	def numeric?
		Float(self) != nil rescue false 
	end
end


puts "Квадратное уравнение имеет вид ax + bx^2 + c"
puts "Введите коэффициент a (число типа float)"
a = gets
puts "Введите коэффициент b (число типа float)"
b = gets
puts "Введите коэффициент c (число типа float)"
c = gets

if a.numeric? && b.numeric? && c.numeric?

	a = a.to_f
	b = b.to_f
	c = c.to_f

	d = b.to_i**2 - 4*a*c
	puts "Дискриминант (D) равен #{d}"

	if d > 0 
		x_1 = (-b + d**(0.5))/(2*a)
		x_2 = (-b - d**(0.5))/(2*a)
		puts "D > 0, корня два, x1 = #{x_1}; x2 =#{x_2}"
	elsif d == 0 
			x = - b /(2*a)
			puts "D = 0, корень один, x = #{x}"
	elsif d < 0
			puts "D < 0, вещественных корней нет"
	end

else 
	puts "Перезагрузите программу и введите численные коэффициенты!"
end