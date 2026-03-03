local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local Box = require(Framework.UI.Components.Box)
local Container = require(Framework.UI.Components.Container)

return Roact.createElement(Container, {
	Size = UDim2.fromOffset(100, 100),
}, {
	Decoration = Roact.createElement(Box),
})
