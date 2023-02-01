local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local dependencies = require(FriendsCarousel.dependencies)
local Roact = dependencies.Roact
local llama = dependencies.llama
local UIVariants = require(FriendsCarousel.Common.UIVariants)

local getFFlagFriendsCarouselRemoveVariant = dependencies.getFFlagFriendsCarouselRemoveVariant

local FindFriendsTile = require(FriendsCarousel.Components.FindFriendsTile)

return {
	controls = {},
	stories = {
		FindFriendsTile = function(storyProps)
			return Roact.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
			}, {
				Roact.createElement(
					FindFriendsTile,
					llama.Dictionary.join({
						friendsCarouselExperimentVariant = if getFFlagFriendsCarouselRemoveVariant()
							then nil
							else UIVariants.CIRCULAR_TILES,
					}, storyProps)
				),
			})
		end,
	},
}
