local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local dependencies = require(FriendsCarousel.dependencies)
local Roact = dependencies.Roact
local llama = dependencies.llama
local FindFriendsTile = require(FriendsCarousel.Components.FindFriendsTile)

return {
	controls = {},
	stories = {
		FindFriendsTile = function(storyProps)
			return Roact.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
			}, {
				Roact.createElement(FindFriendsTile, llama.Dictionary.join({}, storyProps)),
			})
		end,
	},
}
