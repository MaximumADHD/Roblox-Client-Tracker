local Tile = script.Parent.Parent
local App = Tile.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local enumerate = require(Packages.enumerate)

local strict = require(UIBlox.Utility.strict)

local ItemIconType

ItemIconType = enumerate("ItemIconType", {
	"AnimationBundle",
	"Bundle",
	"DynamicHead",
})

local Restriction = enumerate("Restriction", {
	"Limited",
	"LimitedUnique",
	"Collectible",
})

return strict({
	ItemIconType = ItemIconType,
	StatusStyle = enumerate("StatusStyle", {
		"Alert",
		"Info",
	}),
	Restriction = Restriction,
}, script.Name)
