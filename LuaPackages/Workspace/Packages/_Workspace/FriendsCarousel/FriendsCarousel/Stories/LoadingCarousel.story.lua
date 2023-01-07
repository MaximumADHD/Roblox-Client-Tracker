local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local dependencies = require(FriendsCarousel.dependencies)
local Roact = dependencies.Roact
local LoadingCarousel = require(FriendsCarousel.Components.LoadingCarousel)
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux

return {
	controls = nil,
	stories = {
		LoadingCarousel = function(storyProps)
			local store = Rodux.Store.new(function()
				return {
					ScreenSize = Vector2.new(450, 200) or storyProps.screenSize,
				}
			end, {}, { Rodux.thunkMiddleware })

			return Roact.createElement("Frame", {
				Size = UDim2.fromOffset(350, 200),
				ClipsDescendants = true,
				BackgroundTransparency = 1,
			}, {
				storeProvider = Roact.createElement(RoactRodux.StoreProvider, {
					store = store,
				}, {
					Roact.createElement(LoadingCarousel, storyProps.props),
				}),
			})
		end,
	},
}
