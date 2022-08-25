local Root = script:FindFirstAncestor("rodux-aliases")
local Packages = Root.Parent
local Rodux = require(Packages.Rodux)

local byUserId = require(script.byUserId)

return function(options)
	return Rodux.combineReducers({
		byUserId = byUserId(options),
	})
end
