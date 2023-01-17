local QRCodeDisplay = script:FindFirstAncestor("QRCodeDisplay")
local Packages = QRCodeDisplay.Parent
local React = require(Packages.React)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array

export type Props = {
	pixelColor3: Color3?,
	pixelTransparency: number?,
	qrCodeMatrix: { [number]: { [number]: number } },
	sideLength: number,
}

return function(props: Props): any
	local correctedPixelSize = props.sideLength / #props.qrCodeMatrix
	local pixelSize = math.max(math.floor(correctedPixelSize), 1)
	local padding = math.max((props.sideLength - (pixelSize * #props.qrCodeMatrix)) / 2, 0)

	local indexToPosition = function(luaIndex: number)
		return (luaIndex - 1) * pixelSize + padding
	end

	local pixels: any = {}
	Array.forEach(props.qrCodeMatrix, function(column, xIndex)
		Array.forEach(column, function(row, yIndex)
			if row > 0 then
				table.insert(
					pixels,
					React.createElement("Frame", {
						BackgroundColor3 = props.pixelColor3,
						BackgroundTransparency = props.pixelTransparency,
						BorderSizePixel = 0,
						Position = UDim2.fromOffset(indexToPosition(xIndex), indexToPosition(yIndex)),
						Size = UDim2.fromOffset(pixelSize, pixelSize),
					})
				)
			end
		end)
	end)

	return pixels
end
