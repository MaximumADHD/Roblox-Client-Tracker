local Root = script:FindFirstAncestor("rodux-users")
local Packages = Root.Parent
local Rodux = require(Packages.Rodux)

return Rodux.makeActionCreator(script.Name, function(id)
	return {
		payload = {
			id = id,
		},
	}
end)
