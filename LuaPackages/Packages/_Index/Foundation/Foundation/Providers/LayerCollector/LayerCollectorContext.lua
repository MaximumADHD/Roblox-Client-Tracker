local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Roact = require(Packages.Roact)

local LayerCollectorContext = Roact.createContext({
	absoluteSize = Vector2.new(0, 0),
})

return LayerCollectorContext
