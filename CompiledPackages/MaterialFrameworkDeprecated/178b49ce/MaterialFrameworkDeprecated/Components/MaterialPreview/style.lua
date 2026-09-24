local main = script.Parent.Parent.Parent
local Packages = main.Parent

local Framework = require(Packages.Framework)
local StyleKey = Framework.Style.StyleKey

return {
	BackgroundColor = StyleKey.ScrollBarBackground,
	InitialDistance = 6.3,

	-- Ambient and light color are tuned against the color of the
	-- default skybox, and are slightly over-exposed
	Ambient = Color3.fromRGB(120, 120, 120 + 15),
	AmbientColor = Color3.fromRGB(120, 120, 120 + 15),
	LightColor = Color3.fromRGB(256 + 60, 256 + 60, 256 + 60 + 15),
	LightDirection = Vector3.new(10, -10, 10),
	RecenterModelOnUpdate = true,
	Use2022Materials = true,

	["&CornerBox"] = {
		CornerRadius = UDim.new(0, 4),
	},
}
