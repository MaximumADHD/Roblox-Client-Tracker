local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local ProfileQRCodePageV2 = require(script.Parent.ProfileQRCodePageV2)
local React = require(Packages.React)
local RoactRodux = require(Packages.RoactRodux)
local mockStore = require(ProfileQRCode.TestHelpers.mockStore)
local mockState = require(ProfileQRCode.TestHelpers.mockState)
local Dash = require(Packages.Dash)
local Constants = require(ProfileQRCode.Common.Constants)
local createMockRobloxEventReceiver = require(ProfileQRCode.TestHelpers.createMockRobloxEventReceiver)
local FormFactor = require(Packages.Dev.FormFactor)

return {
	default = function(props)
		local receiver = createMockRobloxEventReceiver().mockEventReceiver

		return React.createElement(RoactRodux.StoreProvider, {
			store = mockStore(mockState({
				LocalUserId = "156",
				FormFactor = FormFactor.Enums.FormFactor.WIDE,
			})),
		}, {
			AvatarBackground = React.createElement("Frame", {
				Size = UDim2.new(0, 1200, 0, 800),
				BackgroundColor3 = Color3.new(1, 0, 1),
			}, {
				ProfileQRCodePageV2 = React.createElement(ProfileQRCodePageV2, {
					isProfile3DAvatarEnabled = true,
					profileQRCodeFriendRequestAlertsEnabled = if props.profileQRCodeFriendRequestAlertsEnabled
						then props.profileQRCodeFriendRequestAlertsEnabled
						else nil,
					onClose = if props and props.onClose then props.onClose else Dash.noop,
					robloxEventReceiver = if props.robloxEventReceiver then props.robloxEventReceiver else receiver,
				}),
			}),
		})
	end,

	loading = function(props)
		return React.createElement(RoactRodux.StoreProvider, {
			store = mockStore(mockState({
				LocalUserId = "156",
				FormFactor = FormFactor.Enums.FormFactor.WIDE,
				[Constants.RODUX_KEY] = {
					Users = {},
					NetworkStatus = {},
				},
			})),
		}, {

			AvatarBackground = React.createElement("Frame", {
				Size = UDim2.new(0, 1200, 0, 800),
				BackgroundColor3 = Color3.new(1, 0, 1),
			}, {
				ProfileQRCodePage = React.createElement(ProfileQRCodePageV2, {
					isProfile3DAvatarEnabled = true,
					profileQRCodeFriendRequestAlertsEnabled = true,
					onClose = if props and props.onClose then props.onClose else Dash.noop,
					robloxEventReceiver = createMockRobloxEventReceiver().mockEventReceiver,
				}),
			}),
		})
	end,
}
