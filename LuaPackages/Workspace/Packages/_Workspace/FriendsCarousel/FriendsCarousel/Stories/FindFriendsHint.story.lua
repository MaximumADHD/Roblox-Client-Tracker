local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local dependencies = require(FriendsCarousel.dependencies)
local Roact = dependencies.Roact
local llama = dependencies.llama
local FindFriendsHint = require(FriendsCarousel.Components.FindFriendsHint)

return {
	controls = nil,
	stories = {
		FindFriendsHint = function(storyProps)
			return Roact.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
			}, {
				Roact.createElement(
					FindFriendsHint,
					llama.Dictionary.join({
						layoutOrder = 0,
					}, storyProps)
				),
			})
		end,
	},
}
