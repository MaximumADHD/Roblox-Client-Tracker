local Root = script:FindFirstAncestor("RoduxAliases")
local Packages = Root.Parent
local Rodux = require(Packages.Rodux)
local ActionDomain = require(script.Parent.ActionDomain)

return Rodux.makeActionCreator(ActionDomain .. script.Name, function(showUserAlias)
	return {
		payload = {
			showUserAlias = showUserAlias,
		}
	}
end)
