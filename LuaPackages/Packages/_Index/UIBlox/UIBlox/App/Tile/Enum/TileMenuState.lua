local Tile = script.Parent.Parent
local App = Tile.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local enumerate = require(Packages.enumerate)

return enumerate("TileMenuState", {
	"Friends",
	"More",
})
