local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local dependencies = require(FriendsCarousel.dependencies)
local Roact = dependencies.Roact
local llama = dependencies.llama
local UIVariants = require(FriendsCarousel.Common.UIVariants)

local FindFriendsTile = require(FriendsCarousel.Components.FindFriendsTile)

return {
	controls = {
		isVariantSquare = true,
	},
	stories = {
		FindFriendsTile = function(storyProps)
			return Roact.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
			}, {
				Roact.createElement(
					FindFriendsTile,
					llama.Dictionary.join({
						friendsCarouselExperimentVariant = storyProps.controls.isVariantSquare
								and UIVariants.SQUARE_TILES
							or UIVariants.CIRCULAR_TILES,
					}, storyProps)
				),
			})
		end,
	},
}
