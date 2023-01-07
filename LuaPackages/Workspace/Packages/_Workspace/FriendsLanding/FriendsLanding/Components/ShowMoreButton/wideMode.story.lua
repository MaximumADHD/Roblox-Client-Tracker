local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local llama = dependencies.llama

local ShowMoreButton = require(script.Parent)

return function(props)
	return Roact.createElement(
		ShowMoreButton,
		llama.Dictionary.join({
			onActivated = function() end,
			wideMode = true,
		}, props)
	)
end
