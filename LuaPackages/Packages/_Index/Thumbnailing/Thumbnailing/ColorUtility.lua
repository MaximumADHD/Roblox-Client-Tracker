local module = {}

-- JSON string expresses color as "r/g/b" where r, g, and b are from 0 to 255
module.Color3FromString = function(jsonString)
	local r, g, b = unpack(jsonString:split("/"))
	local finalColor3 = Color3.fromRGB(tonumber(r), tonumber(g), tonumber(b))
	return finalColor3
end

return module
