local QRCodeDisplay = script:FindFirstAncestor("QRCodeDisplay")
local Packages = QRCodeDisplay.Parent
local React = require(Packages.React)
local QRCode = require(Packages.QRCode)
local ecToNumber = require(script.Parent.ecToNumber)
local ECLevels = require(QRCodeDisplay.Common.ECLevels)

return function(config: { toEncode: string, ecLevel: ECLevels.ECLevel })
	return React.useMemo(function()
		local _, matrix = QRCode.qrcode(config.toEncode, ecToNumber(config.ecLevel))

		return matrix
	end, { config.toEncode, config.ecLevel })
end
