local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local AssetRenderModel = require(script.Parent)

return function()
	local model = Instance.new("Model")
	local part = Instance.new("Part")
	part.Parent = model

	return {
		Model = Roact.createElement(AssetRenderModel, {
			Model = model,
			Size = UDim2.new(1, 0, 0, 200),
		}),

		Controls = Roact.createElement(AssetRenderModel, {
			Model = model,
			Size = UDim2.new(1, 0, 0, 200),
			ShowAxisIndicator = true,
			ShowResetCamera = true,
		}),
	}
end
