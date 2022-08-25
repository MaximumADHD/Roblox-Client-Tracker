local Root = script:FindFirstAncestor("RoduxFriends")
local Packages = Root.Parent
local Rodux = require(Packages.Rodux)

return Rodux.makeActionCreator(script.Name, function(userId1, userId2)
	return {
		payload = {
			userId1 = userId1,
			userId2 = userId2,
		},
	}
end)
