--[[
	{
		"sorts" : array<sortToken>
	}
]]

local GameSortGroup = {}

function GameSortGroup.new()
	local self = {}
	self.sorts = {}

	return self
end

function GameSortGroup.mock()
	local self = GameSortGroup.new()
	self.sorts = {}

	return self
end

return GameSortGroup