local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Rodux = dependencies.Rodux

return Rodux.makeActionCreator(script.Name, function()
	return {}
end)
