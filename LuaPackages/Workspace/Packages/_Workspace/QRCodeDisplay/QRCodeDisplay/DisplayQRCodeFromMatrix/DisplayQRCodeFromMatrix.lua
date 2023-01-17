local QRCodeDisplay = script:FindFirstAncestor("QRCodeDisplay")
local Packages = QRCodeDisplay.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)
local generatePixels = require(script.Parent.generatePixels)

export type Props = {
	backgroundColor3: Color3?,
	backgroundTransparency: number?,
	pixelColor3: Color3?,
	pixelTransparency: number?,
	qrCodeMatrix: { [number]: { [number]: number } },
	sideLength: number,
}

local DEFAULT_PROPS = {
	backgroundColor3 = Color3.fromRGB(255, 255, 255),
	backgroundTransparency = 0,
	pixelColor3 = Color3.fromRGB(0, 0, 0),
	pixelTransparency = 0,
}

return function(passedProps: Props)
	local props = Dash.join(DEFAULT_PROPS, passedProps)
	local pixels = generatePixels(props)

	return React.createElement("Frame", {
		BackgroundColor3 = props.backgroundColor3,
		BackgroundTransparency = props.backgroundTransparency,
		BorderSizePixel = 0,
		Size = UDim2.fromOffset(props.sideLength, props.sideLength),
	}, pixels)
end
