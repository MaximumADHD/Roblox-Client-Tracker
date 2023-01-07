local ShareLinkInvalidModal = script:FindFirstAncestor("ShareLinkInvalidModal")
local dependencies = require(ShareLinkInvalidModal.dependencies)
local Roact = dependencies.Roact
local ShareLinkInvalidModalComponent = require(ShareLinkInvalidModal.ShareLinkInvalidModal)
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux
local llama = dependencies.llama

return {
	controls = {},
	stories = {
		ShareLinkInvalidModal = function(storyProps)
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
						ShareLinkInvalidModalComponent,
						llama.Dictionary.join({
							screenSize = Vector2.new(450, 200),
							closeModal = function() end,
						}, storyProps)
					),
				}),
			})
		end,
	},
}
