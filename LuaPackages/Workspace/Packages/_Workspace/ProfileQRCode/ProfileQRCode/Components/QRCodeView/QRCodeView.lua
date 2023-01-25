local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local React = require(Packages.React)
local useGetProfileShareUrl = require(script.Parent.useGetProfileShareUrl)
local QRCodeSucceededView = require(script.Parent.QRCodeSucceededView)

local QR_CODE_SIZE = 200
local PADDING = 24
local OFFSET = 80

export type Props = {
	layoutOrder: number,
}

local ProfileQRCodeEntryPoint = function(props: Props)
	local profileShareUrlInfo = useGetProfileShareUrl()

	return React.createElement("Frame", {
		Size = UDim2.new(0, QR_CODE_SIZE + PADDING + OFFSET, 0, QR_CODE_SIZE + PADDING + OFFSET),
		LayoutOrder = props.layoutOrder,
		BackgroundTransparency = 1,
	}, {
		View = React.createElement(QRCodeSucceededView, {
			qrCodeLength = QR_CODE_SIZE,
			toEncode = profileShareUrlInfo.shortUrl,
			padding = PADDING,
		}),
	})
end

return ProfileQRCodeEntryPoint
