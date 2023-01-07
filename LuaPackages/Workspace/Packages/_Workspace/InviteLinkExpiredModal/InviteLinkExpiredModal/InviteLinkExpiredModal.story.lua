local InviteLinkExpiredModal = script:FindFirstAncestor("InviteLinkExpiredModal")
local dependencies = require(InviteLinkExpiredModal.dependencies)
local Roact = dependencies.Roact
local InviteLinkExpiredModalComponent = require(InviteLinkExpiredModal.InviteLinkExpiredModal)
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux
local llama = dependencies.llama

return {
	controls = {
		experienceName = "Super Cool Experience",
		isLoading = true,
		linkStatus = "Expired",
	},
	stories = {
		InviteLinkExpiredModal = function(storyProps)
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
						InviteLinkExpiredModalComponent,
						llama.Dictionary.join({
							experienceName = storyProps.controls.experienceName,
							isLoading = storyProps.controls.isLoading,
							linkStatus = storyProps.controls.linkStatus,
							screenSize = Vector2.new(450, 200),
							closeModal = function() end,
						}, storyProps)
					),
				}),
			})
		end,
	},
}
