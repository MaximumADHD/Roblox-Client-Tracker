local Root = script:FindFirstAncestor("RoduxUsers")
local Packages = Root.Parent
local Rodux = require(Packages.Rodux)

return Rodux.makeActionCreator(script.Name, function(user)
	return {
		payload = user,
	}
end)
