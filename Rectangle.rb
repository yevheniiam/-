class Rectangle
  attr_accessor :length, :width

  def initialize(length, width)
    @length = length
    @width = width
  end

  # Метод для обчислення площі
  def area
    length * width
  end
end

# Запит довжини і ширини у користувача
puts "Введіть довжину прямокутника:"
length = gets.chomp.to_f

puts "Введіть ширину прямокутника:"
width = gets.chomp.to_f

# Створення об'єкта класу Rectangle
rectangle = Rectangle.new(length, width)

# Виведення площі
puts "Площа прямокутника: #{rectangle.area}"
