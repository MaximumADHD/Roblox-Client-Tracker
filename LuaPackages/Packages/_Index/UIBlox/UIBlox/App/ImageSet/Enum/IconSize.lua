local ImageSet = script.Parent.Parent
local AppRoot = ImageSet.Parent
local UIBlox = AppRoot.Parent
local Packages = UIBlox.Parent
local enumerate = require(Packages.enumerate)

return enumerate("IconSize", {
	"Small",
	"Medium",
	"Large",
	"XLarge",
	"XXLarge",
})
