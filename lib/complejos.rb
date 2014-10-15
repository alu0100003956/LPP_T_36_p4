#! usr/bin/ruby

#definición de una clase complejos para trabajar con numeros complejos
class Complejos
	attr_reader :real, :imaginaria
	def initialize(real, imaginaria)
		@real,@imaginaria = real, imaginaria
	end

	def to_s
		"#{@real}+#{@imaginaria}"
	end
	def +(other)
		Complejos.new(@real+other.real,@imaginaria+other.imaginaria)
	end
end