local PlayabilityRodux = script:FindFirstAncestor("PlayabilityRodux")
local Packages = PlayabilityRodux.Parent

local Action = require(Packages.Rodux).makeActionCreator

--[[
	Passes a table that looks like this... { "universeId" = { playabilityStatus }, ... }

	{
		"149757" : {
			universeId  :  "149757" ,
			isPlayable  :  true ,
			playableStatus  :  "Playable"
		}, {...}, ...
	}
]]

return Action(script.Name, function(playabilityStatus)
	assert(type(playabilityStatus) == "table", "SetPlayabilityStatus action expects playabilityStatus to be a table")

	return {
		playabilityStatus = playabilityStatus,
	}
end)
