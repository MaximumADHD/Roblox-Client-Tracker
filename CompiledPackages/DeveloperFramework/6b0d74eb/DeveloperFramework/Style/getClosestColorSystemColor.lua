local ColorSystem = require(script.Parent.ColorSystem)
local ColorSystem_Deprecated = require(script.Parent.ColorSystem.ColorSystem_Deprecated)

-- Function to calculate the Euclidean distance between two Color3 values
local function colorDistance(color1: Color3, color2: Color3)
	local r1, g1, b1 = color1.R, color1.G, color1.B
	local r2, g2, b2 = color2.R, color2.G, color2.B
	return math.sqrt((r1 - r2) ^ 2 + (g1 - g2) ^ 2 + (b1 - b2) ^ 2)
end

type ColorEntry = {
	color: Color3,
	category: string,
	value: string,
}

local closestColorMap: { [string]: ColorEntry } = {}

-- Populate the old color system colors
for colorCategory, oldColorValues in ColorSystem_Deprecated do
	for colorValue, oldColor in oldColorValues do
		closestColorMap[oldColor:ToHex()] = {
			color = ColorSystem[colorCategory][colorValue],
			category = colorCategory,
			value = colorValue,
		}
	end
end

local SURFACE_100 = ColorSystem.Gray[110]
local SURFACE_200 = ColorSystem.Gray[100]

closestColorMap["222222"] = {
	color = SURFACE_100,
	category = "Gray",
	value = "Surface_100",
}
closestColorMap["252525"] = {
	color = SURFACE_100,
	category = "Gray",
	value = "Surface_100",
}
closestColorMap["292929"] = {
	color = SURFACE_100,
	category = "Gray",
	value = "Surface_100",
}
closestColorMap["2c2c2c"] = {
	color = SURFACE_100,
	category = "Gray",
	value = "Surface_100",
}
closestColorMap["2e2e2e"] = {
	color = SURFACE_100,
	category = "Gray",
	value = "Surface_100",
}
closestColorMap["353535"] = {
	color = SURFACE_200,
	category = "Gray",
	value = "Surface_200",
}
closestColorMap["3b3b3b"] = {
	color = SURFACE_200,
	category = "Gray",
	value = "Surface_200",
}
-- Don't remap the muted action colors
closestColorMap["1b2859"] = {
	color = Color3.fromHex("1b2859"),
	category = "FoundationMigration",
	value = "MutedAction",
}
closestColorMap["c5d1ff"] = {
	color = Color3.fromHex("c5d1ff"),
	category = "FoundationMigration",
	value = "MutedAction",
}

-- Function to find the closest color in the palette
local function getClosestColorSystemColor(inputColor: Color3): (Color3, string, number)
	if closestColorMap[inputColor:ToHex()] ~= nil then
		local closestColor = closestColorMap[inputColor:ToHex()]
		return closestColor.color, closestColor.category, closestColor.value
	end

	local closestColor: Color3, closestColorCategory: string, closestColorIndex: number
	local minDistance = math.huge -- Start with a large value

	-- Iterate over all colors in the palette
	for colorCategory, colorValues in ColorSystem do
		-- Skip turqoise
		if colorCategory == "Turquoise" then
			continue
		end

		for colorName, color in colorValues do
			if inputColor == color then
				-- If the input color is in the palette, return it immediately
				closestColorMap[inputColor:ToHex()] = {
					color = inputColor,
					category = colorCategory,
					value = colorName,
				}
				return inputColor, colorCategory, colorName
			end

			local distance = colorDistance(inputColor, color)
			if distance < minDistance then
				minDistance = distance
				closestColor = color
				closestColorCategory = colorCategory
				closestColorIndex = colorName
			end
		end
	end

	closestColorMap[inputColor:ToHex()] = {
		color = closestColor,
		category = closestColorCategory,
		value = closestColorIndex,
	}
	return closestColor, closestColorCategory, closestColorIndex
end

return getClosestColorSystemColor
