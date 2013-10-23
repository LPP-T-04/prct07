require "./lib/gcd.rb"

class Frac
	attr_reader :numerador, :denominador
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
end

