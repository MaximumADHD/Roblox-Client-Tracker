local Grid = script.Parent
local UIBlox = Grid.Parent.Parent.Parent
local Packages = UIBlox.Parent
local Roact = require(Packages.Roact)

return Roact.createContext({
	-- row values
	config = {},
	breakpoint = nil,
	kind = nil,
	-- cell values
	scrollable = false,
	multiLine = false,
	relativeHeight = nil,
	subPixelOffset = 0,
})
