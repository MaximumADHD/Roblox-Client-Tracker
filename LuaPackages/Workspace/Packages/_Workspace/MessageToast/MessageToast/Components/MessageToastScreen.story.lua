local MessageToast = script:FindFirstAncestor("MessageToast")
local dependencies = require(MessageToast.dependencies)
local Roact = dependencies.Roact
local MessageToastScreen = require(MessageToast.Components.MessageToastScreen)
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux
local Dash = dependencies.Dash

return {
	controls = {},
	stories = {
		MessageToast = function(storyProps)
			local store = Rodux.Store.new(function()
				return {
					ScreenSize = Vector2.new(450, 200) or storyProps.screenSize,
				}
			end, {}, { Rodux.thunkMiddleware })

			return Roact.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
			}, {
				storeProvider = Roact.createElement(RoactRodux.StoreProvider, {
					store = store,
				}, {
					Roact.createElement(
						MessageToastScreen,
						Dash.join({
							screenSize = Vector2.new(450, 200),
							closeModal = function() end,
						}, storyProps)
					),
				}),
			})
		end,
	},
}
