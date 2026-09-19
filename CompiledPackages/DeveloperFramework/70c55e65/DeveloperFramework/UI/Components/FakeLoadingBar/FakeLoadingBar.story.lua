local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local FakeLoadingBar = require(Framework.UI.Components.FakeLoadingBar)

return Roact.createElement(FakeLoadingBar, {
	LoadingTime = 5,
	Size = UDim2.fromOffset(120, 8),
})
