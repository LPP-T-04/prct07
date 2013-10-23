require "lib/frac.rb"

describe Frac do
	before	:each do
		@f1 = Frac.new(1,1)
		@f2 = Frac.new(2,2)
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
end