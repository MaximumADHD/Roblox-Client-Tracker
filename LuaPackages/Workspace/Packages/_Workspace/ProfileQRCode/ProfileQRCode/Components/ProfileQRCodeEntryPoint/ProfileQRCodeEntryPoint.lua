local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local React = require(Packages.React)
local UIBlox = require(Packages.UIBlox)
local FullPageModal = UIBlox.App.Dialog.Modal.FullPageModal

export type Props = {}

local ProfileQRCodeEntryPoint = function(props: Props)
	return React.createElement(FullPageModal, {
		position = UDim2.new(0.5, 0, 0.5, 0),
		isFullHeight = true,
		screenSize = Vector2.new(1920, 1080),
	}, {
		Custom = React.createElement("Frame", {
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 60),
		}, {
			CustomInner = React.createElement("TextLabel", {
				BackgroundTransparency = 1,
				LayoutOrder = 3,
				Text = "QRCode to come",
				TextSize = 13,
				TextWrapped = true,
				Size = UDim2.new(1, 0, 1, 0),
			}),
		}),
	})
end

return ProfileQRCodeEntryPoint
