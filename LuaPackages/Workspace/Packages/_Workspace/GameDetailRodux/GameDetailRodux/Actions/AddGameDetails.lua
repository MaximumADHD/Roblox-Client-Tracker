local GameDetailRodux = script:FindFirstAncestor("GameDetailRodux")
local Packages = GameDetailRodux.Parent

local Action = require(Packages.Rodux).makeActionCreator

--[[
	{
		gameDetails : table of GameDetail models
    }
]]

return Action(script.Name, function(gameDetails)
	return {
		gameDetails = gameDetails,
	}
end)
