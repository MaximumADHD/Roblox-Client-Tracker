local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local RoundBox = require(Framework.UI.Components.RoundBox)
local Container = require(Framework.UI.Components.Container)

return Roact.createElement(Container, {
	Size = UDim2.fromOffset(100, 100),
}, {
	Decoration = Roact.createElement(RoundBox),
})
