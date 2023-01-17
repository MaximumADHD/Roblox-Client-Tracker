local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local ProfileQRCodePage = require(script.Parent)
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
			Wrapper = React.createElement("Frame", {
				BackgroundTransparency = 0,
				Size = UDim2.fromOffset(400, 500),
				BorderSizePixel = 0,
			}, {
				ProfileQRCodePageElement = React.createElement(ProfileQRCodePage, {
					layoutOrder = 1,
					onClose = if props.onClose then props.onClose else Dash.noop,
				}),
			}),
		})
	end,
}
