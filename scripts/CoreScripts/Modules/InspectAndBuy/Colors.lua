local CorePackages = game:GetService("CorePackages")
local Color = require(CorePackages.AppTempCommon.Common.Color)

local Colors = {
	Obsidian = Color.Color3FromHex(0x18191B),
	Carbon = Color.Color3FromHex(0x1F2123),
	Slate = Color.Color3FromHex(0x232527),
	Flint = Color.Color3FromHex(0x393B3D),
	Graphite = Color.Color3FromHex(0x656668),
	Pumice = Color.Color3FromHex(0xBDBEBE),

	Black = Color3.fromRGB(0, 0, 0),
	White = Color3.fromRGB(255, 255, 255),

	Gray1 = Color.Color3FromHex(0x191919),
	Gray2 = Color.Color3FromHex(0x757575),
	Gray4 = Color.Color3FromHex(0xE3E3E3),

	GrayBackground = Color.Color3FromHex(0xD8D8D8),
	Green = Color.Color3FromHex(0x00B06F),
	DisabledGreen = Color.Color3FromHex(0x9CC4A4),
}

setmetatable(Colors,
	{
		__newindex = function(t, key, index)
		end,
		__index = function(t, index)
			error("Colors table has no value: " .. tostring(index))
		end
	}
)

return Colors