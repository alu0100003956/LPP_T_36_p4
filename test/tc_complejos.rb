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
		@comc = Complejos.new(-4,7)
		@comd = Complejos.new(1.6,-0.2)
		@come = Complejos.new(4,6)
	end

	def test_operaciones_aritmeticas
		assert_equal(@comab.to_s, (@coma + @comb).to_s )
		assert_equal(@comb.to_s, (@comab - @coma).to_s )
		assert_equal(@comc.to_s, (@coma * @comb).to_s )
		assert_equal(@comd.to_s, (@comb / @coma).to_s )
		assert_equal(@come.to_s, (@comb * 2).to_s)
	end
end