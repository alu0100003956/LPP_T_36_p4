#! usr/bin/ruby

#definición de una clase complejos para trabajar con numeros complejos
class Complejos
	attr_reader :real, :imaginaria
	def initialize(real, imaginaria)
		@real,@imaginaria = real, imaginaria
	end

	def to_s
		"#{@real}+#{@imaginaria}i"
	end
	def +(other)
		if (other.is_a? Complejos)
			Complejos.new(@real + other.real, @imaginaria + other.imaginaria)
		end
	end
	def -(other)
		if (other.is_a? Complejos)
			Complejos.new(@real - other.real, @imaginaria - other.imaginaria) 
		end
	end
	def *(other)
		if (other.is_a? Complejos)
			Complejos.new(@real * other.real - @imaginaria * other.imaginaria, 
				@real * other.imaginaria + @imaginaria * other.real)
		elsif (other.is_a? Numeric)
			Complejos.new( other * @real, other * @imaginaria)		
		end
	end
	def /(other)
		if (other.is_a? Complejos)
			denominador = (other.real * other.real - other.imaginaria * other.imaginaria).to_f
			Complejos.new((@real * other.real - @imaginaria * other.imaginaria)) / denominador, 
				(@imaginaria * other.real . @real * other.imaginaria) / denominador)
		end
	end
end
