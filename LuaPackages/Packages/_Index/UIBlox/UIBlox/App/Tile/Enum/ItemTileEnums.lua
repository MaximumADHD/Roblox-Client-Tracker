local Tile = script.Parent.Parent
local App = Tile.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local enumerate = require(Packages.enumerate)
local UIBloxConfig = require(Packages.UIBlox.UIBloxConfig)

local strict = require(UIBlox.Utility.strict)

local ItemIconType

ItemIconType = enumerate("ItemIconType", {
	"AnimationBundle",
	"Bundle",
	"DynamicHead",
})

local Restriction
if UIBloxConfig.enableCollectibleItemRestriction then
	Restriction = enumerate("Restriction", {
		"Limited",
		"LimitedUnique",
		"Collectible",
	})
else
	Restriction = enumerate("Restriction", {
		"Limited",
		"LimitedUnique",
	})
end

return strict({
	ItemIconType = ItemIconType,
	StatusStyle = enumerate("StatusStyle", {
		"Alert",
		"Info",
	}),
	Restriction = Restriction,
}, script.Name)
