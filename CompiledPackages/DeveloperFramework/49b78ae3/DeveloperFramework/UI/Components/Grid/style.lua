local Framework = script:FindFirstAncestor("UI").Parent
local StyleKey = require(Framework.Style.StyleKey)

local UIFolderData = require(Framework.UI.Components.UIFolderData)
local ExpandablePaneStyle = require(UIFolderData.ExpandablePane.style)

local ArrowStyle = ExpandablePaneStyle.Header.Arrow

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

return {
	BackgroundColor = StyleKey.ScrollBarBackground,
	CellGroupHeader = {
		Arrow = join(ArrowStyle, {
			ImageColor3 = StyleKey.TextSecondary,
		}),
		ArrowButtonSize = UDim2.fromOffset(16, 16),
		BackgroundColor = StyleKey.CategoryItem,
		Padding = {
			Left = 8,
		},
		Size = UDim2.new(1, 0, 0, 28),
		Spacing = 6,
		Style = "RoundBox",
		TextColor = StyleKey.TextSecondary,
		TextSize = 16,
	},
	CellSize = UDim2.fromOffset(64, 64),
	CellPadding = UDim2.fromScale(0, 0),
	GridCell = {
		Padding = 5,
		Spacing = 10,
	},
	ScrollingFrame = {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		TopImage = "rbxasset://textures/StudioSharedUI/ScrollBarTop.png",
		MidImage = "rbxasset://textures/StudioSharedUI/ScrollBarMiddle.png",
		BottomImage = "rbxasset://textures/StudioSharedUI/ScrollBarBottom.png",
		ScrollBarThickness = 8,
		ScrollBarImageTransparency = 0,
		ScrollBarImageColor3 = StyleKey.ScrollBar,
		VerticalScrollBarInset = Enum.ScrollBarInset.Always,
		HorizontalScrollBarInset = Enum.ScrollBarInset.ScrollBar,
	},
}
