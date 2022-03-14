local Root = script:FindFirstAncestor("rodux-users")
local Packages = Root.Parent
local Rodux = require(Packages.Rodux)

return Rodux.makeActionCreator(script.Name, function(user)
	return {
		payload = user,
	}
end)
