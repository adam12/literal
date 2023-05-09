# frozen_string_literal: true

class Literal::Maybe
	include Literal::Monads

	def handle(&block)
		Literal::Switch.new(Literal::Some, Literal::Nothing, &block).call(self, @value)
	end
end
