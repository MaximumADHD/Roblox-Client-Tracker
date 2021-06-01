local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)

local Roact = dependencies.Roact
local BaseCell = require(SocialLibraries.Components.Cells.BaseCell)

return Roact.createElement("Frame", {
	Size = UDim2.new(0, 400, 0, 600),
}, {
	layout = Roact.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
	}),
	cell = Roact.createElement(BaseCell, {
		LayoutOrder = 1,
		BackgroundColor3 = Color3.new(0, 100, 0),
		onPressedBackgroundColor3 = Color3.fromRGB(146, 66, 0),
		showDivider = false,
	}),
	cell2 = Roact.createElement(BaseCell, {
		LayoutOrder = 2,
	}),
})
