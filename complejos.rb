#! usr/bin/ruby

#definición de una clase complejos para trabajar con numeros complejos
class Complejos
	def initialize(real,imaginaria = "i")
		@real,@imaginaria = real, imaginaria
	end
	def real()
		@real
	end
	def imaginaria()
		@imaginaria
	end
	
end