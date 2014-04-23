class Board

	attr_reader :player

	def initialize(player)
		@player = player
		
	end

	def grid_hash
		@grid = {}
		('A'..'J').to_a.each{|key| 1.upto(10).each{|num| @grid["#{key}#{num}"] = ''}}
		@grid
	end


	def rows
		@rows = grid_hash.each_slice(10).map{|ele| ele}
	end

	def columns
		@columns = rows.transpose
	end

	def at_coordinates(coordinate)
		(columns.flatten(1)).assoc(coordinate)
	end

end
