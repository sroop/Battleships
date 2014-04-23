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

	def register_shot(at_coordinates)

		@location = (columns.flatten(1)).assoc(at_coordinates)
		if @location[1] = "" 
			then @location[1]<<"o"

		elsif @location[1] = "s"
			then @location[1]<<"x" 	

	end
	@location
	end


end
