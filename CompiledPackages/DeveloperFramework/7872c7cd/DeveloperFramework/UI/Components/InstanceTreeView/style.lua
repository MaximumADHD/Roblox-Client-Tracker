local Framework = script:FindFirstAncestor("UI").Parent

local Util = require(Framework.Util)
local deepCopy = Util.deepCopy

local StyleKey = require(Framework.Style.StyleKey)

local UIFolderData = require(Framework.UI.Components.UIFolderData)
local TreeView = require(UIFolderData.TreeView.style)

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local treeView = deepCopy(TreeView)

local borderBox = treeView["&BorderBox"]

return join(treeView, {
	Text = {
		Font = Enum.Font.SourceSans,
		TextColor = StyleKey.MainText,
		TextSize = 18,
	},
	Indent = 20,
	RowHeight = 24,
	Arrow = {
		Image = "rbxasset://textures/StudioSharedUI/arrowSpritesheet.png",
		Size = 12,
		ExpandedOffset = Vector2.new(24, 0),
		CollapsedOffset = Vector2.new(12, 0),
		Color = StyleKey.MainText,
	},
	IconPadding = 5,
	HoverColor = StyleKey.ButtonHover,
	SelectedColor = StyleKey.DialogMainButton,
	SelectedTextColor = StyleKey.DialogMainButtonText,

	["&Compact"] = join(borderBox, {
		Text = {
			Font = Enum.Font.SourceSans,
			TextColor = StyleKey.MainText,
			TextSize = 16,
		},
		IconPadding = 3,
		RowHeight = 20,
		Indent = 16,
	}),
})
