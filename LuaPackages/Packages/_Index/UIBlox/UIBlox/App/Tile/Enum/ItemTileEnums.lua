local Tile = script.Parent.Parent
local App = Tile.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local enumerate = require(Packages.enumerate)

local strict = require(UIBlox.Utility.strict)

local ItemIconType = enumerate("ItemIconType", {
	"AnimationBundle",
	"Bundle",
	"DynamicHead",
})

local Restriction = enumerate("Restriction", {
	"Limited",
	"LimitedUnique",
	"Collectible",
})

local StatusStyle = enumerate("StatusStyle", {
	"Alert",
	"Info",
	"PendingIcon",
	"AlertIcon",
})

return strict({
	ItemIconType = ItemIconType,
	Restriction = Restriction,
	StatusStyle = StatusStyle,
}, script.Name)
