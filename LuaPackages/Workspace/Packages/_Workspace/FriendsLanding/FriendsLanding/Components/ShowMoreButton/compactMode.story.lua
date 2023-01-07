local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local llama = dependencies.llama

local ShowMoreButton = require(script.Parent)

return function(props)
	return Roact.createElement("Frame", { Size = UDim2.new(0, props.width or 200, 1, 0), BackgroundTransparency = 1 }, {
		StoryElement = Roact.createElement(
			ShowMoreButton,
			llama.Dictionary.join({
				onActivated = function() end,
				wideMode = false,
			}, props)
		),
	})
end
