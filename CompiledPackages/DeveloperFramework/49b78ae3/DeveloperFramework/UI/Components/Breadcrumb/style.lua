local Framework = script:FindFirstAncestor("UI").Parent

local StyleKey = require(Framework.Style.StyleKey)

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local default = {
	Spacing = 5,
}

local propertyCellError = {
	TextColor = StyleKey.ErrorText,
	ErrorImage = {
		Image = "rbxasset://textures/DeveloperFramework/StudioTheme/clear.png",
		ImageColor3 = StyleKey.ErrorText,
		Size = UDim2.fromOffset(16, 16),
	},
}

return join(default, {
	["&PropertyCellError"] = propertyCellError,
})
