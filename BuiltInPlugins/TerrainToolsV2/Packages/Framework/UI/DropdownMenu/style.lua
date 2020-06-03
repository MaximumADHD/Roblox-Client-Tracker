local Framework = script.Parent.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local UI = require(script.Parent.Parent)
local Button = UI.Button
local RoundBox = UI.Decoration.RoundBox
local TextLabel = UI.Decoration.TextLabel

return function(theme, getColor)
	return {
		Default = {
			ShowBorder = true,
			BorderColor = theme:GetColor("Border"),
			BorderImage = "rbxasset://textures/StudioToolbox/RoundedBorder.png",
			BorderSliceCenter = Rect.new(3, 3, 13, 13),
			MenuBackgroundColor = theme:GetColor("Button"),
			Offset = Vector2.new(0, 0),
			OnRenderItem = function(item, index, activated)
				return Roact.createElement(Button, {
					Size = UDim2.new(1, 0, 0, 40),
					LayoutOrder = index,
					OnClick = activated,
				}, {
					Label = Roact.createElement(TextLabel, {
						Size = UDim2.new(1, 0, 1, 0),
						Font = Enum.Font.SourceSans,
						TextSize = 18,
						Text = item,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextColor3 = theme:GetColor("MainText"),
						BackgroundTransparency = 1,
					})
				})
			end,
		}
	}

end