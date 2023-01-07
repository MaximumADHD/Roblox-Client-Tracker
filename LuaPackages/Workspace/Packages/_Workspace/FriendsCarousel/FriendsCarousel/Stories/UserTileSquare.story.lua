local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local dependencies = require(FriendsCarousel.dependencies)
local llama = dependencies.llama
local Roact = dependencies.Roact
local UserTileSquare = require(FriendsCarousel.Components.UserTileSquare)

local setupStory = function(props)
	return function(storyProps)
		return Roact.createElement("Frame", {
			Size = UDim2.new(0, 100, 0, 200),
			BackgroundTransparency = 1,
		}, {
			Roact.createElement(UserTileSquare, llama.Dictionary.join(storyProps or {}, props or {})),
		})
	end
end

return {
	controls = {},
	stories = {
		withOnlineIndicator = setupStory({
			username = "name",
			contextualText = "contextualText",
			showOnlineIndicator = true,
		}),
		withoutOnlineIndicator = setupStory({
			username = "username",
			contextualText = "contextualText",
		}),
		withLongUsername = setupStory({
			username = "usernameusernameusername",
			contextualText = "contextualText",
			showOnlineIndicator = true,
		}),
		withLongContextualText = setupStory({
			username = "username",
			contextualText = "contextualTextcontextualTextcontextualText",
			showOnlineIndicator = true,
		}),
		withContextualTextMuted = setupStory({
			username = "username",
			contextualText = "contextualText",
			isContextualTextMuted = true,
		}),
	},
}
