local Src = script.Parent.Parent
local Plugin = Src.Parent
local Packages = Plugin.Packages
local Framework = Packages.Framework

local enumerate = require(Framework.Util.enumerate)

return enumerate("EditingMode", {
	"None",
	"Transform",
	"SelectGeometry",
	"SelectSurface",
	"SelectPart",
})