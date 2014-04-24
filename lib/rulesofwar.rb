module RulesOfWar

	def register_shot(coordinates)
		@grid[coordinates].content.hit!
	end
	

end