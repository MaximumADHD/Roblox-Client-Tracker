local Framework = script:FindFirstAncestor("UI").Parent
local rule = require(Framework.Styling.createStyleRule)

local ICON_BASE = "rbxasset://textures/MaterialFramework/"

return rule(".Component-ViewTypeButton", {}, {
	rule("> .ButtonContainer", {
		Size = UDim2.fromOffset(100, 32),
	}, {
		rule(".Icon", {
			Size = UDim2.fromOffset(32, 32),
		}),
		rule("> .ImageContainer", {
			Size = UDim2.fromOffset(32, 32),
		}, {
			rule("> ImageLabel .Grid", {
				Image = "$GridImage",
			}),
			rule("> ImageLabel .List", {
				Image = "$ListImage",
			}),
		}),
	}),
	rule("> .SliderContainer", {
		Size = UDim2.fromOffset(100, 32),
	}),
}, {
	ListIcon = `{ICON_BASE}List.png`,
	GridIcon = `{ICON_BASE}Grid.png`,
	SliderValueMin = 60,
	SliderValueMax = 200,
	SliderSnapIncrement = 10,
	SliderVerticalDragTolerance = 300,
})
