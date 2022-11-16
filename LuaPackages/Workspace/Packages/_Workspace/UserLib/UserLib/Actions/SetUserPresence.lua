local UserLib = script:FindFirstAncestor("UserLib")
local Packages = UserLib.Parent

local Action = require(Packages.Rodux).makeActionCreator

return Action(script.Name, function(userId, presence, lastLocation)
	return {
		userId = tostring(userId),
		presence = presence,
		lastLocation = lastLocation,
	}
end)
