local Root = script:FindFirstAncestor("RoduxFriends")
local Packages = Root.Parent
local Rodux = require(Packages.Rodux)

return Rodux.makeActionCreator(script.Name, function(count)
	assert(type(count) == "number", "Request count must be a number")

	return {
		payload = {
			count = count,
		},
	}
end)
