#
require "lib/complejos.rb"
require "test/unit"

class TestComplejos < Test::Unit::TestCase
	def test_operaciones_basicas
		assert_not_nil( Complejos.new(2,3), "No se puede crear un complejo" )
	end
	def setup
		@coma = Complejos.new(1,2)
		@comb = Complejos.new(2,3)
		@comab = Complejos.new(3,5)
	end

	def test_operaciones_aritmeticas
		assert_equal(@comab.to_s, (@coma + @comb).to_s  )
	end
end