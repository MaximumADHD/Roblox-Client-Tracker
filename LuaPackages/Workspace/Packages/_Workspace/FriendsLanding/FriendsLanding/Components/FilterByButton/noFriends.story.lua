local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local filterStates = require(FriendsLanding.Friends.filterStates)
local Roact = dependencies.Roact

local FilterByButton = require(script.Parent)

return function()
	return Roact.createElement(FilterByButton, {
		onActivated = function() end,
		isDisabled = false,
		friendCount = 0,
		filter = filterStates.InExperience,
	})
end
