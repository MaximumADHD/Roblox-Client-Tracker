local Root = script:FindFirstAncestor("RoduxShareLinks")
local Packages = Root.Parent
local Rodux = require(Packages.Rodux)

local Invites = require(script.Invites)

return function(config)
	return Rodux.combineReducers({
		Invites = Invites(config),
	})
end
