require "./lib/frac.rb"

def main
	puts "Bienvenido al programa principal"
	puts "Se pediran dos fracciones al usuario y se le realizaran las distintas operaciones"
	puts "Introduzca una fraccion a del tipo \"a/b\" donde a y b son numeros enteros."
	puts "Introduzca el Numerador."
	num_a =  gets.chomp
	puts "Introduzca el Denominador."
	denom_a = gets.chomp
	a = Frac.new(num_a.to_i, denom_a.to_i)
	puts "Introduzca la segunda b fraccion del tipo \"a/b\" donde a y b son numeros enteros."
	num_b =  gets.chomp
	puts "Introduzca el Denominador."
	denom_b = gets.chomp
	b = Frac.new(num_b.to_i, denom_b.to_i)
	puts "Fraccion a:"
	puts a;
	puts "Fraccion b:"
	puts b;
	puts "Numerador de a"
	puts a.num
	puts "Denominador de a"
	puts a.denom
	puts "Fraccion a en forma flotante"
	puts a.to_f
	puts "Se comprueba si a es igual a b"
	puts a == b
	puts "Suma a + b:"
	puts a.+(b)
	puts "Resta a - b:"
	puts a.-(b)
	puts "Producto a * b"
	puts a.*(b)
	puts "Division a / b"
	puts a./(b)
	puts "Opuesto de a"
	puts a.-
	puts "valor absoluto de a"
	puts a.abs
	puts "Reciproco de a"
	puts a.reciprocal
	puts "Se comprueba si a es menor que b"
	puts a < b
	puts "Se comprueba si a es mayor que b"
	puts a > b
	puts "Se comprueba si a es menor o igual que b"
	puts a <= b
	puts "Se comprueba si a es mayor o igual que b"
	puts a >= b

end

main