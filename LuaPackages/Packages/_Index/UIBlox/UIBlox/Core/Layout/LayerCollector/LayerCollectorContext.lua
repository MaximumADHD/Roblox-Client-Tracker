local LayerCollector = script.Parent
local UIBlox = LayerCollector.Parent.Parent.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)

local LayerCollectorContext = Roact.createContext({
	absoluteSize = Vector2.new(0, 0),
})

return LayerCollectorContext
