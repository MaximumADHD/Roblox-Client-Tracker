local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local enumerate = Framework.Util.enumerate

local Orientation = enumerate("Orientation", {
	Undefined = 0,
	Left = 1,
	Right = 2,
	Top = 3,
	Bottom = 4,
})

return Orientation
