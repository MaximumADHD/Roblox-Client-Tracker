local ColorSystem = require(script.Parent)

local function isColorSystemColor(color: Color3)
	for _, colorSystemCategory in pairs(ColorSystem) do
		for _, colorSystemColor in pairs(colorSystemCategory) do
			if color == colorSystemColor then
				return true
			end
		end
	end
	return false
end

return isColorSystemColor
