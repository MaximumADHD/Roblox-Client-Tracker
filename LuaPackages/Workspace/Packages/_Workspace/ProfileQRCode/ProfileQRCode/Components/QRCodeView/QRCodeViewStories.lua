local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local QRCodeView = require(script.Parent.QRCodeView)
local React = require(Packages.React)
local RoactRodux = require(Packages.RoactRodux)
local mockStore = require(ProfileQRCode.TestHelpers.mockStore)
local mockState = require(ProfileQRCode.TestHelpers.mockState)
local Constants = require(ProfileQRCode.Common.Constants)
local configuredRoduxNetworking = require(ProfileQRCode.Networking.configuredRoduxNetworking)
local NetworkStatus = configuredRoduxNetworking.Enum.NetworkStatus

return {
	default = function()
		return React.createElement(RoactRodux.StoreProvider, {
			store = mockStore(mockState({
				LocalUserId = "156",
			})),
		}, {
			QRCodeView = React.createElement(QRCodeView, {
				layoutOrder = 1,
			}),
		})
	end,
	loading = function()
		return React.createElement(RoactRodux.StoreProvider, {
			store = mockStore(mockState({
				LocalUserId = "156",
				[Constants.RODUX_KEY] = {
					Users = {},
					NetworkStatus = {},
					ShareUrl = {},
				},
			})),
		}, {
			QRCodeView = React.createElement(QRCodeView, {
				layoutOrder = 1,
			}),
		})
	end,
	failed = function()
		return React.createElement(RoactRodux.StoreProvider, {
			store = mockStore(mockState({
				LocalUserId = "156",
				[Constants.RODUX_KEY] = {
					Users = {},
					NetworkStatus = {
						["https://apis.roblox.com/sharelinks/v1/get-or-create-link"] = NetworkStatus.Failed,
					},
					ShareUrl = {},
				},
			})),
		}, {
			QRCodeView = React.createElement(QRCodeView, {
				layoutOrder = 1,
			}),
		})
	end,
}
