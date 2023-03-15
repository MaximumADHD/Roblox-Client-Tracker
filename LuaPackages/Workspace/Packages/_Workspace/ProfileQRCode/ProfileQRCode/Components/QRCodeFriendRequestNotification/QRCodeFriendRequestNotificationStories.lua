local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local QRCodeFriendRequestNotification = require(script.Parent)
local React = require(Packages.React)
local RoactRodux = require(Packages.RoactRodux)
local mockStore = require(ProfileQRCode.TestHelpers.mockStore)
local mockState = require(ProfileQRCode.TestHelpers.mockState)
local Dash = require(Packages.Dash)
local DefaultTestUserId = require(ProfileQRCode.TestHelpers.DefaultTestUserId)

return {
	default = function(props)
		return React.createElement(RoactRodux.StoreProvider, {
			store = mockStore(mockState()),
		}, {
			QRCodeFriendRequestNotificationElement = React.createElement(QRCodeFriendRequestNotification, {
				onClose = if props.onClose then props.onClose else Dash.noop,
				onAccept = if props.onAccept then props.onAccept else Dash.noop,
				userId = if props.userId then props.userId else DefaultTestUserId,
			}),
		})
	end,
}
