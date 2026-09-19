local Framework = script:FindFirstAncestor("UI").Parent
local rule = require(Framework.Styling.createStyleRule)

return rule(".Component-TreeTable", {}, {
	rule(">> .Component-TreeTableCell", {}, {
		rule("> .Left ::UIPadding", {
			PaddingTop = UDim.new(0, 1),
			PaddingBottom = UDim.new(0, 1),
			PaddingLeft = UDim.new(0, 5),
			PaddingRight = UDim.new(0, 5),
		}),
		rule(">> .Arrow", {
			BackgroundTransparency = 1,
			Image = "$ArrowRightImage",
			Size = UDim2.fromOffset(16, 16),
		}, {
			rule(".Invisible", {
				ImageTransparency = 1,
			}),
		}),
	}),
	rule(".modern", {}, {
		rule(">> .Component-TableHeaderBorder", {
			BackgroundColor3 = "$TableHeaderBorder",
			BackgroundTransparency = "$TableHeaderBorderTransparency",
		}),
		rule(">> .Component-TreeTableCell", { BackgroundTransparency = 1 }, {
			rule(">> .Component-TreeTableCellText", { TextTruncate = Enum.TextTruncate.AtEnd }),
		}),
		rule(">> .Component-TreeTableCell.Secondary", {
			BackgroundColor3 = "$TableRowEmphasisBackground",
			BackgroundTransparency = "$TableRowEmphasisBackgroundTransparency",
		}),
		rule(".enable-hover >> .Component-TableRow:hover >> .Component-TreeTableCell", {
			BackgroundColor3 = "$TableRowHoverBackground",
			BackgroundTransparency = "$TableRowHoverBackgroundTransparency",
		}),
	}),
	rule(".compact", {}, {
		rule(">> .Component-TreeTableCell", {}, {
			rule("> .Left ::UIPadding", {
				PaddingTop = UDim.new(0, 0),
				PaddingBottom = UDim.new(0, 0),
				PaddingLeft = UDim.new(0, 0),
				PaddingRight = UDim.new(0, 0),
			}),
			rule(">> .Arrow", {
				Image = "rbxasset://studio_svg_textures/Lua/Explorer/Light/Standard/collapsed.png",
				ImageColor3 = "$SemanticColorContentMuted",
			}),
			rule(">> TextBox", {
				TextSize = 16,
			}),
		}),
	}),
}, {
	ArrowSize = 16,
	CellPadding = 5,
	Indent = 20,

	CompactCellPadding = 0,
	CompactIndent = 14,
})
