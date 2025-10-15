local BuilderIcons = script.Parent
local BuilderIconsFallback = require(BuilderIcons.BuilderIconsFallback)

local familyAsset = "rbxasset://LuaPackages/Packages/_Index/BuilderIcons/BuilderIcons/BuilderIcons.json"
local fallbackAsset = `rbxassetid://{BuilderIconsFallback}`

return {
	Regular = Font.new(familyAsset, Enum.FontWeight.Regular),
	Filled = Font.new(familyAsset, Enum.FontWeight.Bold),
	Fallback = {
		Regular = Font.new(fallbackAsset, Enum.FontWeight.Regular),
		Filled = Font.new(fallbackAsset, Enum.FontWeight.Bold),
	},
}
