local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact

local EmptyResultsView = require(script.Parent)

return function(props)
	return Roact.createElement(EmptyResultsView, props)
end
