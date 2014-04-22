class Board

	attr_reader :player

	def initialize(player)
		@player = player
	end

	def rows
		@rows = Array.new(10) { Array.new(10, " ") }
	end

	def columns
		@columns = rows.transpose
	end

end
