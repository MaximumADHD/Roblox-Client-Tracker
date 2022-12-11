local Root = script:FindFirstAncestor("RoduxAliases")
local Packages = Root.Parent
local Rodux = require(Packages.Rodux)

return Rodux.makeActionCreator(script.Name, function(showUserAlias)
	return {
		payload = {
			showUserAlias = showUserAlias,
		}
	}
end)
