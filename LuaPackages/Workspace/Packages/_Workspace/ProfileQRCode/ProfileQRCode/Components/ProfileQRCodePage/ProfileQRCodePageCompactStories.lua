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

return {
	default = function(props)
		local receiver = createMockRobloxEventReceiver().mockEventReceiver
		return React.createElement(RoactRodux.StoreProvider, {
			store = mockStore(mockState({
				LocalUserId = "156",
				FormFactor = nil,
			})),
		}, {
			AvatarBackground = React.createElement("Frame", {
				Size = UDim2.new(0, 500, 0, 700),
				BackgroundColor3 = Color3.new(1, 0, 1),
				ZIndex = -2,
			}, {
				AvatarImage = React.createElement("Frame", {
					Size = UDim2.new(0, 500, 0, 350),
					BackgroundColor3 = Color3.new(0, 1, 1),
					ZIndex = -1,
				}),
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

	longScreen = function(props)
		return React.createElement(RoactRodux.StoreProvider, {
			store = mockStore(mockState({
				LocalUserId = "156",
				FormFactor = nil,
			})),
		}, {
			AvatarBackground = React.createElement("Frame", {
				Size = UDim2.new(0, 500, 0, 900),
				BackgroundColor3 = Color3.new(1, 0, 1),
			}, {
				AvatarImage = React.createElement("Frame", {
					Size = UDim2.new(0, 500, 0, 450),
					BackgroundColor3 = Color3.new(0, 1, 1),
				}),
				ProfileQRCodePageV2 = React.createElement(ProfileQRCodePageV2, {
					isProfile3DAvatarEnabled = true,
					profileQRCodeFriendRequestAlertsEnabled = true,
					onClose = if props and props.onClose then props.onClose else Dash.noop,
					robloxEventReceiver = createMockRobloxEventReceiver().mockEventReceiver,
				}),
			}),
		})
	end,

	loading = function(props)
		return React.createElement(RoactRodux.StoreProvider, {
			store = mockStore(mockState({
				LocalUserId = "156",
				FormFactor = nil,
				[Constants.RODUX_KEY] = {
					Users = {},
					NetworkStatus = {},
				},
			})),
		}, {

			AvatarBackground = React.createElement("Frame", {
				Size = UDim2.new(0, 500, 0, 900),
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
