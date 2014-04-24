require "board"

class Player

	attr_reader :name

	def initialize(name)
		@name = name
		@board = Board.new(self)
	end

	def has_board?
		@board
	end

	# def has_ships_still_floating?
	# 	rows.each { |cell| cell.content.status == "s"}
	# end

end