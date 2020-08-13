local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Cryo)

local function round(num, numDecimalPlaces)
	local mult = 10^(numDecimalPlaces or 0)
	return math.floor(num * mult + 0.5) / mult
end

local function valueToString(propValue)
	local valueType = typeof(propValue)
	if propValue == Cryo.None then
		return "not defined"
	elseif valueType == "Vector3" then
		return string.format(
			"%d, %d, %d",
			round(propValue.X, 2),
			round(propValue.Y, 2),
			round(propValue.Z, 2)
		)
	elseif valueType == "Color3" then
		return string.format(
			"%d, %d, %d",
			math.floor(propValue.r * 255),
			math.floor(propValue.g * 255),
			math.floor(propValue.b * 255)
		)
	else
		return tostring(propValue)
	end
end

return valueToString
