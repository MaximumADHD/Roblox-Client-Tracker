local Tile = script.Parent.Parent
local App = Tile.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local enumerate = require(Packages.enumerate)

local strict = require(UIBlox.Utility.strict)

return strict({
	ItemIconType = enumerate("ItemIconType", {
		"AnimationBundle",
		"Bundle"
	}),
	StatusStyle = enumerate("StatusStyle", {
		"Alert",
		"Info"
	}),
	Restriction = enumerate("Restriction", {
		"Limited",
		"LimitedUnique"
	})
}, script.Name)