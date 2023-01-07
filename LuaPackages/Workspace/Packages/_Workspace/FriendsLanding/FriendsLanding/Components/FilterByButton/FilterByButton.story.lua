local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact

local FilterByButton = require(script.Parent)

return function()
	return Roact.createElement(FilterByButton, {
		onActivated = function() end,
		isDisabled = false,
		friendCount = 200,
	})
end
