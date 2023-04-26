local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local ProfileQRCodeTopBar = require(script.Parent.ProfileQRCodeTopBar)
local React = require(Packages.React)
local Dash = require(Packages.Dash)
local RoactRodux = require(Packages.RoactRodux)
local mockStore = require(ProfileQRCode.TestHelpers.mockStore)
local mockState = require(ProfileQRCode.TestHelpers.mockState)

return {
	default = function(props)
		return React.createElement(RoactRodux.StoreProvider, {
			store = mockStore(mockState()),
		}, {
			ProfileQRCodeTopBar = React.createElement(ProfileQRCodeTopBar, {
				layoutOrder = 1,
				onClose = if props.onClose then props.onClose else Dash.noop,
				isProfile3DAvatarEnabled = if props.isProfile3DAvatarEnabled
					then props.isProfile3DAvatarEnabled
					else false,
			}),
		})
	end,
}
