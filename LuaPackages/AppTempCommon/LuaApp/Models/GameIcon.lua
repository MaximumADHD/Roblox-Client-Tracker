--[[
	{
		universeId : string,
		state : string,
		url : string,
	}
]]
local GameIcon = {}

function GameIcon.new()
	local self = {}

	return self
end

function GameIcon.fromGameIconData(gameIconData)
	local self = GameIcon.new()

	self.universeId = tostring(gameIconData.targetId)
	self.state = gameIconData.state
	self.url = gameIconData.imageUrl

	return self
end

return GameIcon