local Root = script:FindFirstAncestor("RoduxUsers")
local Packages = Root.Parent
local Rodux = require(Packages.Rodux)

local byUserId = require(script.Users.byUserId)
local byUsername = require(script.Users.byUsername)

return function(config)
	return Rodux.combineReducers({
		byUserId = byUserId(config),
		byUsername = byUsername(config),
	})
end
