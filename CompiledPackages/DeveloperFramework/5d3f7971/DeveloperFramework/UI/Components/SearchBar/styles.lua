local Framework = script:FindFirstAncestor("UI").Parent
local rule = require(Framework.Styling.createStyleRule)

return rule(".Component-SearchBar", {}, {
	rule("> .Input > .Buttons", {
		AnchorPoint = Vector2.new(1, 0),
		Position = UDim2.new(1, 0, 0, 0),
	}, {
		rule("> .ClearButton >> ImageLabel", {
			Image = "rbxasset://textures/DeveloperFramework/StudioTheme/clear.png",
			Size = UDim2.fromOffset(12, 12),
		}),
		rule("> .SearchButton >> ImageLabel", {
			Image = "$SearchIcon",
			Size = UDim2.fromOffset(13, 13),
		}),
		rule("> .FilterButton >> ImageLabel", {
			-- TODO STM-3400 Add image for filter button
		}),
	}),
	rule("> .Input > .SearchIcon", {
		Image = "$SearchIcon",
	}),
}, {})
