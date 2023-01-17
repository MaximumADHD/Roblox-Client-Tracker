local QRCodeDisplay = script:FindFirstAncestor("QRCodeDisplay")
local Packages = QRCodeDisplay.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)
local DisplayQRCodeFromMatrix = require(script.Parent.Parent.DisplayQRCodeFromMatrix.DisplayQRCodeFromMatrix)
local ECLevels = require(QRCodeDisplay.Common.ECLevels)
local useQRCode = require(script.Parent.useQRCode)

export type Props = {
	backgroundColor: Color3?,
	backgroundTransparency: number?,
	ecLevel: ECLevels.ECLevel,
	isLoading: boolean?,
	pixelColor: Color3?,
	pixelTransparency: number?,
	sideLength: number,
	toEncode: string,
}

return function(props: Props)
	local matrix = useQRCode(props)
	return React.createElement(
		DisplayQRCodeFromMatrix,
		Dash.join(props, {
			qrCodeMatrix = matrix,
			sideLength = 200,
		})
	)
end
