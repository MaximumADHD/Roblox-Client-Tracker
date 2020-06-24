--[[
	A single item displayed in a TreeView component.

	Props:
		instance Instance = The instance to display.
		int Indentation = The level of indentation this item appears at.
		bool Expandable = Whether this item has children and can be expanded.
		bool Expanded = Whether this item is showing its children.
		bool Selected = Whether this item is the selected item.
		int LayoutOrder = The order in which this item appears in the list.
		function OnClick = A callback when this item is clicked.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local Constants = require(Plugin.Core.Util.Constants)
local Images = require(Plugin.Core.Util.Images)
local TooltipWrapper = require(Plugin.Core.Components.TooltipWrapper)
local withTheme = ContextHelper.withTheme

local ELEMENT_PADDING = 5

local TreeViewItem = Roact.PureComponent:extend("TreeViewItem")

function TreeViewItem:init()
	self.state = {
		Hovering = false,
	}

	self.mouseEnter = function()
		self:setState({
			Hovering = true,
		})
	end

	self.mouseLeave = function()
		self:setState({
			Hovering = false,
		})
	end

	self.onClick = function()
		self.props.OnClick()
	end
end

function TreeViewItem:render(props)
	return withTheme(function(theme)
		local treeViewTheme = theme.assetPreview.treeView
		local instance = self.props.Instance
		local name = instance.Name
		local iconInfo = Constants.getClassIcon(instance)

		local indent = self.props.Indentation
		local expandable = self.props.Expandable
		local expanded = self.props.Expanded
		local selected = self.props.Selected
		local layoutOrder = self.props.LayoutOrder or 1
		local height = Constants.TREE_ITEM_HEIGHT
		local hover = self.state.Hovering

		local selectionOffset = height

		local labelOffset = selectionOffset + ELEMENT_PADDING
			+ (iconInfo and (height + Constants.TREE_VIEW_INDENT) or 0)

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, height),
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, indent * Constants.TREE_VIEW_INDENT),
			}),

			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, ELEMENT_PADDING),
				FillDirection = Enum.FillDirection.Horizontal,
			}),

			Expand = Roact.createElement("ImageButton", {
				LayoutOrder = 0,
				Size = UDim2.new(0, height, 0, height),
				BackgroundTransparency = 1,
				ImageTransparency = 1,

				[Roact.Event.Activated] = self.props.ToggleExpanded,
			}, {
				ExpandIcon = expandable and Roact.createElement("ImageLabel", {
					BackgroundTransparency = 1,
					ScaleType = Enum.ScaleType.Fit,
					Size = UDim2.new(0, 9, 0, 9),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 1),
					ImageTransparency = expandable and 0 or 1,
					Image = expanded and Images.ARROW_EXPANDED or Images.ARROW_COLLAPSED,
					ImageColor3 = treeViewTheme.arrowColor,
				}),
			}),

			Icon = iconInfo and Roact.createElement("ImageLabel", {
				ZIndex = 2,
				LayoutOrder = 1,
				Size = UDim2.new(0, height, 0, height),
				BackgroundTransparency = 1,
				Image = iconInfo.Image,
				ImageRectSize = iconInfo.ImageRectSize,
				ImageRectOffset = iconInfo.ImageRectOffset,
			}),

			Name = Roact.createElement("TextLabel", {
				ZIndex = 2,
				LayoutOrder = 2,
				BackgroundTransparency = 1,
				Size = UDim2.new(1, -labelOffset, 0, height),
				Font = Constants.FONT,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextSize = Constants.FONT_SIZE_SMALL,
				TextTruncate = Enum.TextTruncate.AtEnd,
				Text = name,
				TextColor3 = selected and treeViewTheme.selectedText or treeViewTheme.textColor,
				BorderSizePixel = 0,
			}, {
				Tooltip = Roact.createElement(TooltipWrapper, {
					Text = name,
					isHovered = hover,
					canShowCurrentTooltip = true,
				}),
			}),

			-- We have to create a Folder so that the hover is not affected by the UIListLayout.
			HoverFolder = Roact.createElement("Folder", {}, {
				Hover = Roact.createElement("ImageButton", {
					Size = UDim2.new(1, -selectionOffset, 1, 4),
					Position = UDim2.new(0, selectionOffset, 0.5, 0),
					AnchorPoint = Vector2.new(0, 0.5),
					BackgroundTransparency = (hover or selected) and 0 or 1,
					BackgroundColor3 = selected and treeViewTheme.selected or treeViewTheme.hover,
					BorderSizePixel = 0,
					AutoButtonColor = false,

					[Roact.Event.MouseEnter] = self.mouseEnter,
					[Roact.Event.MouseLeave] = self.mouseLeave,
					[Roact.Event.Activated] = self.onClick,
				}),
			}),
		})
	end)
end

return TreeViewItem