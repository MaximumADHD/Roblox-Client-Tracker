local DiscoverabilityModal = script.Parent.Parent
local dependencies = require(DiscoverabilityModal.dependencies)
local Roact = dependencies.Roact
local RoactRodux = dependencies.RoactRodux
local Rodux = dependencies.Rodux
local DiscoverabilityOverlay = require(DiscoverabilityModal.Components.DiscoverabilityOverlay)

return {
	controls = nil,
	stories = {
		DiscoverabilityOverlay = function(storyProps)
			local store = Rodux.Store.new(function()
				return {
					ScreenSize = Vector2.new(450, 200) or storyProps.screenSize,
					LocalUserId = "1",
					DiscoverabilityModal = {
						UserPermissions = {
							userSettingsMetadata = {
								prefillDiscoverabilitySetting = true,
							},
						},
					},
				}
			end, {}, { Rodux.thunkMiddleware })

			return Roact.createElement("Frame", {
				Size = UDim2.fromOffset(800, 400),
				BackgroundTransparency = 1,
			}, {
				storeProvider = Roact.createElement(RoactRodux.StoreProvider, {
					store = store,
				}, {
					Roact.createElement(DiscoverabilityOverlay, storyProps),
				}),
			})
		end,
	},
}
