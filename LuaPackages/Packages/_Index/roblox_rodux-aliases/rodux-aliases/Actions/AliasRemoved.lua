local Root = script:FindFirstAncestor("rodux-aliases")
local Packages = Root.Parent
local Rodux = require(Packages.Rodux)

return Rodux.makeActionCreator(script.Name, function(userId)
	return {
		payload = {
			userId = userId,
		}
	}
end)
