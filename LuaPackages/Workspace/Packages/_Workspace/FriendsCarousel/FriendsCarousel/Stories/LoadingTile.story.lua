local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local dependencies = require(FriendsCarousel.dependencies)
local Roact = dependencies.Roact
local llama = dependencies.llama
local LoadingTile = require(FriendsCarousel.Components.LoadingTile)

return {
	controls = nil,
	stories = {
		LoadingTile = function(storyProps)
			return Roact.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
			}, {
				Roact.createElement(
					LoadingTile,
					llama.Dictionary.join({
						layoutOrder = 0,
					}, storyProps)
				),
			})
		end,
	},
}
