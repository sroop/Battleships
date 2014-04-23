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




# 	def rows
# 		@rows = Array.new(10) { Array.new(10, " ") }
# 	end

# 	def columns
# 		@columns = rows.transpose
# 	end

# 	def row_and_column_for(location)
#     separate = location.chars 
#     row = separate[1].to_i - 1
#     column = separate[0].ord - 65
#     return { :row => row, :column => column }
# 	end

end
