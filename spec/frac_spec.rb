require "lib/frac.rb"

describe Frac do
	describe "# almacenamiento del numerador y denominador." do
		it "se almacena correctamente el numerador." do
			@f1.numerador.should eq(1)
		end
		it "se almacena correctamente el denominador" do
			@f1.denominador.should eq(1)		
		end
	end
end 