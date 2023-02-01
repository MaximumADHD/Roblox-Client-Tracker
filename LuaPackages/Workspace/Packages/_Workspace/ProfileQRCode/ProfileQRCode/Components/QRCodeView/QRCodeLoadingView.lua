local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local React = require(Packages.React)
local UIBlox = require(Packages.UIBlox)

local ShimmerPanel = UIBlox.App.Loading.ShimmerPanel

export type Props = {}

local QRCodeLoadingView = function()
	return React.createElement(ShimmerPanel, {
		Size = UDim2.new(1, 0, 1, 0),
		cornerRadius = UDim.new(0.05, 0),
	})
end

return QRCodeLoadingView
