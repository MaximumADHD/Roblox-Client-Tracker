local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local dependencies = require(FriendsCarousel.dependencies)
local Roact = dependencies.Roact
local llama = dependencies.llama
local AddFriendsTileSquare = require(FriendsCarousel.Components.AddFriendsTileSquare)

return {
	controls = {
		badgeValue = "NEW",
		isUpdatedUI = true,
	},
	stories = {
		FindFriendsTile = function(storyProps)
			return Roact.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
			}, {
				Roact.createElement(
					AddFriendsTileSquare,
					llama.Dictionary.join({
						badgeValue = storyProps.controls.badgeValue,
						isUpdatedUI = storyProps.controls.isUpdatedUI,
						labelText = "Add Friends",
					}, storyProps)
				),
			})
		end,
	},
}
