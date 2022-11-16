local UserLib = script:FindFirstAncestor("UserLib")
local Packages = UserLib.Parent

local Action = require(Packages.Rodux).makeActionCreator

return Action(script.Name, function(userId, displayName)
	return {
		userId = tostring(userId),
		displayName = displayName,
	}
end)
