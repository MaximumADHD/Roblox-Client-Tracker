--[[
	pretty print Vector3
]]

local allFormats = {}

local function prettyPrintVector3(v: Vector3, decimalPlacesOpt: number?): string
	local decimalPlaces = if decimalPlacesOpt then decimalPlacesOpt :: number else 2
	if not allFormats[decimalPlaces] then
		local decimalPlacesFormat = string.format("%%.%df", decimalPlaces)
		allFormats[decimalPlaces] =
			string.format("%s, %s, %s", decimalPlacesFormat, decimalPlacesFormat, decimalPlacesFormat)
	end
	return string.format(allFormats[decimalPlaces], v.X, v.Y, v.Z)
end

return prettyPrintVector3
