local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local QRCodeFriendRequestNotification = require(script.Parent)
local React = require(Packages.React)
local RoactRodux = require(Packages.RoactRodux)
local mockStore = require(ProfileQRCode.TestHelpers.mockStore)
local mockState = require(ProfileQRCode.TestHelpers.mockState)
local Dash = require(Packages.Dash)

return {
	default = function(props)
		return React.createElement(RoactRodux.StoreProvider, {
			store = mockStore(mockState()),
		}, {
			QRCodeFriendRequestNotificationElement = React.createElement(QRCodeFriendRequestNotification, {
				onClose = if props.onClose then props.onClose else Dash.noop,
			}),
		})
	end,
}
