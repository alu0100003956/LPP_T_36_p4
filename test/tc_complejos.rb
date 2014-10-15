#
require "lib/complejos.rb"
require "test/unit"

class TestComplejos < Test::Unit::TestCase
	def setup
		@coma = Complejos.new(1,2)
		@comb = Complejos.new(2,3)
		@comab = Complejos.new(3,5)
	end
	def operaciones_aritmeticas
		assert_equal(@comab, @coma+@comb  )
	end
	def operaciones_basicas
		assert_not_nil( Complejos(2,3), "No se puede crear un complejo" )
	end
end