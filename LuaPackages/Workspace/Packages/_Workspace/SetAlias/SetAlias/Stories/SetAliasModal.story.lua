local SetAlias = script.Parent.Parent
local dependencies = require(SetAlias.dependencies)
local Roact = dependencies.Roact
local RoactRodux = dependencies.RoactRodux
local Rodux = dependencies.Rodux
local SetAliasModal = require(SetAlias.Components.SetAliasModal)

return {
	controls = nil,
	stories = {
		SetAliasModal = function(storyProps)
			local store = Rodux.Store.new(function()
				return {
					ScreenSize = Vector2.new(450, 200) or storyProps.screenSize,
					LocalUserId = "1",
					SetAliasModal = {},
				}
			end, {}, { Rodux.thunkMiddleware })

			return Roact.createElement("Frame", {
				Size = UDim2.fromOffset(800, 400),
				BackgroundTransparency = 1,
			}, {
				storeProvider = Roact.createElement(RoactRodux.StoreProvider, {
					store = store,
				}, {
					Roact.createElement(SetAliasModal, storyProps),
				}),
			})
		end,
	},
}
