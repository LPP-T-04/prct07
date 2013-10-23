require "./lib/gcd.rb"

class Frac
	attr_reader :numerador, :denominador
	include Comparable
	def initialize(numerador, denominador)
		mcd = gcd(numerador,denominador)
		@numerador , @denominador = numerador/mcd, denominador/mcd
	end
	def num()
		@numerador
	end
	def denom()
		@denominador
	end
	def to_s()
		"#{@numerador}/#{@denominador}"
	end
	def to_f()
		@numerador.to_f/@denominador
	end
	def <=>(other)
    	@numerador.to_f/@denominador <=> other.numerador.to_f/other.denominador
    end

end

