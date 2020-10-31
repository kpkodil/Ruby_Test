puts "Программа выводит хэш с товарами, содержащий вложенные хэши с ценой и количеством товара, также итоговую сумму покупок в корзине."
puts ''
puts "Для остановки программы введите 'стоп'"
puts ''
list = {}
product = nil
sum_cost = 0

loop do
	puts "Введите товар"
	product = gets.chomp
	if product == "стоп"
		break
	end
	puts "Введите цену"
	cost = gets.to_f
	puts "Введите количество"
	quantity = gets.to_f
	list[product] = { "цена" => cost, "количество" => quantity}
	sum_cost += cost * quantity
end

puts list
puts "Сумма покупок составила #{sum_cost}"