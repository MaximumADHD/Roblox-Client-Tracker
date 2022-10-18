local Src = script.Parent.Parent
local Plugin = Src.Parent
local Packages = Plugin.Packages

local enumerate = require(Packages.enumerate)

return enumerate("EditingMode", {
	"None",
	"Transform",
	"SelectGeometry",
	"SelectSurface",
	"SelectPart",
})
