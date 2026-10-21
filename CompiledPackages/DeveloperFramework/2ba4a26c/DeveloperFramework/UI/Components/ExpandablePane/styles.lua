local Framework = script:FindFirstAncestor("UI").Parent
local rule = require(Framework.Styling.createStyleRule)

return rule(".Component-ExpandablePane", {}, {
	rule("> .Header > .Arrow", {
		Image = "$ArrowRightImage",
		Size = UDim2.fromOffset(16, 16),
	}),
	rule(".Expanded > .Header > .Arrow", {
		Image = "$ArrowDownImage",
	}),
	rule(".compact", {}, {
		rule("> .Header > .Arrow", {
			Image = "rbxasset://studio_svg_textures/Lua/Explorer/Light/Standard/collapsed.png",
			ImageColor3 = "$SemanticColorContentMuted",
		}),
		rule(".Expanded > .Header > .Arrow", {
			Image = "rbxasset://studio_svg_textures/Lua/Explorer/Light/Standard/expanded.png",
		}),
	}),
}, {
	ArrowSize = 16,
	Spacing = 10,
})
