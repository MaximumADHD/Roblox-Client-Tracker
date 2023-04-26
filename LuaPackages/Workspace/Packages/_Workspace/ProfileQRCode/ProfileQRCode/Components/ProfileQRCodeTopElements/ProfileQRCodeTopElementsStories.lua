local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local ProfileQRCodeTopElements = require(script.Parent)
local React = require(Packages.React)
local RoactRodux = require(Packages.RoactRodux)
local mockStore = require(ProfileQRCode.TestHelpers.mockStore)
local mockState = require(ProfileQRCode.TestHelpers.mockState)
local createMockRobloxEventReceiver = require(ProfileQRCode.TestHelpers.createMockRobloxEventReceiver)
local Dash = require(Packages.Dash)

return {
	default = function(props)
		local receiver = createMockRobloxEventReceiver().mockEventReceiver
		return React.createElement(RoactRodux.StoreProvider, {
			store = mockStore(mockState({
				LocalUserId = "156",
			})),
		}, {
			Wrapper = React.createElement("Frame", {
				BackgroundTransparency = 0,
				Size = UDim2.fromOffset(400, 500),
				BorderSizePixel = 0,
			}, {
				ProfileQRCodeTopElements = React.createElement(ProfileQRCodeTopElements, {
					onClose = if props.onClose then props.onClose else Dash.noop,
					profileQRCodeFriendRequestAlertsEnabled = if props.profileQRCodeFriendRequestAlertsEnabled
						then props.profileQRCodeFriendRequestAlertsEnabled
						else nil,
					robloxEventReceiver = if props.robloxEventReceiver then props.robloxEventReceiver else receiver,
				}),
			}),
		})
	end,
}
