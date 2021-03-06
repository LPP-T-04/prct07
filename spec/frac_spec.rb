require "frac.rb"

describe Frac do
	#Tipos de datos Frac
	before	:each do
		@f1 = Frac.new(1,1)
		@f2 = Frac.new(2,2)
		@f3 = Frac.new(1,2)
		@f4 = Frac.new(1,1)
		@f5 = Frac.new(-1,1)
		@f6 = Frac.new(1,-1)
		@f7 = Frac.new(-1,-1)
		@f8 = Frac.new(2,1)
		@f9 = Frac.new(4,2)
		@f10 = Frac.new(3,1)
		@f11 = Frac.new(5,3)
		@f12 = Frac.new(1,3)
		@f13 = Frac.new(-1,2)
		@f14 = Frac.new(5,6)
		@f15 = Frac.new(-5,3)
	end
	
	#Lista de espectativas que deben cumplirse:
	
	describe "# almacenamiento del numerador y denominador." do
		it "se almacena correctamente el numerador." do
			@f1.numerador.should eq(1) # El numerador debe ser igual a 1
		end
		it "se almacena correctamente el denominador" do
			@f1.denominador.should eq(1) # El denominador debe ser igual a 1
		end
	end
	
	describe "# debe estar en su forma reducida" do
		it "Se reducen el numerador" do
			@f2.numerador.should eq(1) # El numerador debe ser igual a 1
		end
		it "Se reduce el denominador" do
			@f2.denominador.should eq(1) # El denominador debe ser igual a 1
		end
	end
	
	describe "# se debe invocar al metodo." do
		it "num() para obtener el numerador." do
			@f1.num().should eq(1) # El numerador debe ser igual a 1
		end
		it "dem() para obtener el denominador" do
			@f1.denom().should eq(1) # El denominador debe ser igual a 1		
		end
	end
	
	describe "# se debe imprimir" do
		it "numerador/denominador" do
			@f1.to_s.should eq("1/1") # El resultado de imprimir debe ser 1/1
		end
	end
	
	describe "# se debe imprimir" do
		it " la fraccion en coma flotante" do
			@f3.to_f.should eq(0.5) # El resultado debe ser un numero en coma flotante y ser 0.5
		end
	end
	
	describe "# se debe comparar" do
		it "si dos fracciones son iguales" do
			(@f1 == @f4).should be(true) # Compara si las dos fracciones pasadas son iguales
		end
		it "si una fraccion es menor que otra" do
			(@f3 < @f1).should be(true) # Compara si la primera fraccion es mmenor que la segunda
		end
		it "si una fraccion es mayor que otra" do
			(@f1 > @f3).should be(true) # Compara si la primera fraccion es mayor que la segunda
		end
		it "si una fraccion es menor o igual que otra" do
			(@f3 <= @f1).should be(true) # Compara si la primera fraccion es menor o igual que la segunda
		end
		it "si una fraccion es mayor o igual que otra" do 
			(@f1 >= @f3).should be(true) # Compara si la primera fraccion es mayor o igual que la segunda
		end
		it "si una fraccion es menor o igual que otra" do
			(@f1 <= @f4).should be(true) # Compara si la primera fraccion es menor o igual que la segunda
		end
		it "si una fraccion es mayor o igual que otra" do
			(@f1 >= @f4).should be(true) # Compara si la primera fraccion es mayor o igual que la segunda
		end
	end
	
	describe "se debe calcular el valor absoluto de una fraccion" do
		it "siendo positivo numerador y denominador" do
			(@f4.abs.should eq(@f1.to_s)) # El valor absoluto debe ser "1/1"
		end
		it "siendo negativo numerador" do
			(@f5.abs.should eq (@f1.to_s)) # El valor absoluto debe ser "1/1"
		end
		it "siendo negativo denominador" do
			(@f6.abs.should eq (@f1.to_s)) # El valor absoluto debe ser "1/1"
		end
		it "siendo negativo numerador y denominador" do
			(@f7.abs.should eq (@f1.to_s)) # El valor absoluto debe ser "1/1"
		end
	end
	
	describe "se debe calcular" do
		it "reciproco de una fraccion" do
			(@f3.reciprocal.to_s.should eq (@f8.to_s)) # Comprueba el reciproco de una fraccion
		end
	end
	
	describe "se debe calcular el opuesto de una fraccion" do
		it "siendo positivo numerador y denominador" do
			(@f4.-.to_s.should eq (@f5.to_s)) # Se comprueba el opuesto de una fraccion
		end
		it "siendo negativo numerador" do
			(@f5.-.to_s.should eq (@f4.to_s)) # Se comprueba el opuesto de una fraccion
		end
		it "siendo negativo el denominador" do 
			(@f6.-.to_s.should eq (@f4.to_s)) # Se comprueba el opuesto de una fraccion
		end
		it "el opuesto de una fraccion" do
			(@f7.-.to_s.should eq (@f5.to_s)) # Se comprueba el opuesto de una fraccion
		end
	end

	describe "Se debe sumar dos fracciones" do
		it "y dar el resultado en forma reducida" do
			(@f9.+(@f2).to_s.should eq (@f10.to_s)) # Se comprueba la suma de dos fracciones
		end
	end

	describe "Se debe restar dos fracciones" do
		it "y dar el resultado en forma reducida" do
			(@f9.-(@f2).to_s.should eq (@f1.to_s)) # Se comprueba la resta de dos fracciones
		end
	end

	describe "Se debe multiplicar dos fracciones" do
		it "y dar el resultado en forma reducida" do
			(@f8.*(@f2).to_s.should eq (@f9.to_s)) # Se comprueba la multiplicacion de dos fracciones
		end
	end

	describe "Se debe dividir dos fracciones" do
		it "y dar el resultado en forma reducida" do
			(@f9./(@f2).to_s.should eq (@f8.to_s)) # Se comprueba la division de dos fracciones
		end
	end

	describe "Se debe calcular " do
		it "el resto de la division de dos fracciones y dar el resultado en forma reducida" do
			(@f3.%(@f11).to_i.should eq (3)) # Se comprueba el resto al dividir dos fracciones
		end
	end

	describe "Se debe calcular el valor absoluto de la multiplicacionde dos fracciones." do
		it "La primera positiva y la segunda positiva." do
			(@f11.*(@f3)).abs.should eq (@f14.to_s)
		end
		it "La primera positiva y la segunda negativa." do
			(@f11.*(@f13)).abs.should eq (@f14.to_s)
		end
		it "La primera negativa y la segunda positiva." do
			(@f13.*(@f11)).abs.should eq (@f14.to_s)
		end
		it "La primera negativa y la segunda negativa." do
			(@f15.*(@f13)).abs.should eq (@f14.to_s)
		end
	end
end