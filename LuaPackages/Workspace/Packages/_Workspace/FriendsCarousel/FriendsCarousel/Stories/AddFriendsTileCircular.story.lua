local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local dependencies = require(FriendsCarousel.dependencies)
local Roact = dependencies.Roact
local llama = dependencies.llama
local AddFriendsTileCircular = require(FriendsCarousel.Components.AddFriendsTileCircular)

return {
	controls = {
		badgeValue = "NEW",
	},
	stories = {
		AddFriendsTileCircular = function(storyProps)
			return Roact.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
			}, {
				Roact.createElement(
					AddFriendsTileCircular,
					llama.Dictionary.join({
						badgeValue = storyProps.controls.badgeValue,
						labelText = "Add Friends",
					}, storyProps)
				),
			})
		end,
	},
}
