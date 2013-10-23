require "lib/frac.rb"

describe Frac do
	before	:each do
		@f1 = Frac.new(1,1)
		@f2 = Frac.new(2,2)
		@f3 = Frac.new(1,2)
	end
	describe "# almacenamiento del numerador y denominador." do
		it "se almacena correctamente el numerador." do
			@f1.numerador.should eq(1)
		end
		it "se almacena correctamente el denominador" do
			@f1.denominador.should eq(1)		
		end
	end
	describe "# debe estar en su forma reducida" do
		it "Se reducen el numerador" do
			@f2.numerador.should eq(1)
		end
		it "Se reduce el denominador" do
			@f2.denominador.should eq(1)
		end
	end
	describe "# se debe invocar al metodo." do
		it "num() para obtener el numerador." do
			@f1.num().should eq(1)
		end
		it "dem() para obtener el denominador" do
			@f1.denom().should eq(1)		
		end
	end
	describe "# se debe imprimir" do
		it "numerador/denominador" do
			@f1.to_s.should eq("1/1")
		end
	end
	describe "# se debe imprimir" do
		it " la fraccion en coma flotante" do
			@f3.to_f.should eq(0.5)
		end
	end
end