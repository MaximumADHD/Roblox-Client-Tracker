local Framework = script:FindFirstAncestor("UI").Parent

local StyleKey = require(Framework.Style.StyleKey)

return {
	ResetCameraButton = {
		Color = StyleKey.Icon,
		Image = StyleKey.ResetCameraImage,
		Position = UDim2.new(1, -10, 0, 10),
		Size = UDim2.fromOffset(28, 28),
	},

	AxisIndicator = {
		AnchorPoint = Vector2.new(1, 1),
		Position = UDim2.fromScale(1, 1),
		Size = UDim2.fromOffset(60, 60),
		ZIndex = 1,
	},

	Sky = {
		SkyboxBk = "rbxassetid://16358461871",
		SkyboxDn = "rbxassetid://16358249286",
		SkyboxFt = "rbxassetid://16358251874",
		SkyboxLf = "rbxassetid://16358461871",
		SkyboxRt = "rbxassetid://16358369477",
		SkyboxUp = "rbxassetid://16358379810",
	},
}
