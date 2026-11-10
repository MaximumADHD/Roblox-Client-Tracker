local UtilityRoot = script.Parent
local UIBlox = UtilityRoot.Parent
local Packages = UIBlox.Parent
local Foundation = require(Packages.Foundation)
local getTextSizeOffset = Foundation.Utility.getTextSizeOffset

return function(_font: Font | Enum.Font)
	local offset = getTextSizeOffset()
	return offset ~= nil, offset
end
