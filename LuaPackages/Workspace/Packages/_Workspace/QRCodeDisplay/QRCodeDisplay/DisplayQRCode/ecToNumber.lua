local QRCodeDisplay = script:FindFirstAncestor("QRCodeDisplay")
local ECLevels = require(QRCodeDisplay.Common.ECLevels)

return function(ecLevel: ECLevels.ECLevel)
	return tonumber(ecLevel)
end
