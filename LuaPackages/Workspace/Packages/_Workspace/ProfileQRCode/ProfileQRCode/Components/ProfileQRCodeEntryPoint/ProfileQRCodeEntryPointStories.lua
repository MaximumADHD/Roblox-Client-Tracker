local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local ProfileQRCodeEntryPoint = require(script.Parent.ProfileQRCodeEntryPoint)
local React = require(Packages.React)
local RoactRodux = require(Packages.RoactRodux)
local mockStore = require(ProfileQRCode.TestHelpers.mockStore)
local mockState = require(ProfileQRCode.TestHelpers.mockState)
local Dash = require(Packages.Dash)

return {
	default = function(props)
		return React.createElement(RoactRodux.StoreProvider, {
			store = mockStore(mockState({
				LocalUserId = "156",
			})),
		}, {
			ProfileQRCodeEntryPoint = React.createElement(ProfileQRCodeEntryPoint, {
				layoutOrder = 1,
				analyticsService = if props and props.analyticsService then props.analyticsService else nil,
				onClose = if props and props.onClose then props.onClose else Dash.noop,
			}),
		})
	end,
}
