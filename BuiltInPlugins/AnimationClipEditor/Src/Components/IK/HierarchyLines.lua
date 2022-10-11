--[[
	Displays lines and controls for hierarchy tree view. Vertical lines are
	displayed if the associated node has children, as well as a collapse/expand
	button.

	Props:
		bool IsLeafNode = if the associated node has no children
		bool inActiveChain = if the node is currently part of an IK chain being manipulated
		bool IsChildNode = if the node is a child of another node, aka, is not the root
		bool IsExpanded = if the node is currently expanded in the hierarchy view
		bool IsSelected = if this joint is currently selected in the hierarchy
		bool Highlight = if the joint can become part of an active IK chain
		int Indent = numerical representation of node's depth in tree
		float Height = height of the vertical line (if node has children)
		float IKHeight = height of the vertical line if in active IK chain
		int LayoutOrder = display order of element within a layout

		function ToggleExpanded(element) = callback function for UILibrary TreeView when
			an element becomes expanded.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local GetFFlagExtendPluginTheme = require(Plugin.LuaFlags.GetFFlagExtendPluginTheme)

local HierarchyLines = Roact.PureComponent:extend("HierarchyLines")

local LEAF_NODE_SIZE = 6
local TOGGLE_SIZE = 12
local WIDTH = 20

function HierarchyLines:render()
	local props = self.props
	local theme = GetFFlagExtendPluginTheme() and props.Stylizer or props.Stylizer.PluginTheme
	local isLeafNode = props.IsLeafNode
	local inActiveChain = props.InActiveChain
	local isChildNode = props.IsChildNode
	local isExpanded = props.IsExpanded
	local indent = props.Indent
	local height = props.Height
	local ikHeight = props.IKHeight
	local layoutOrder = props.LayoutOrder
	local highlight = props.Highlight
	local isSelected = props.IsSelected

	local width = indent > 0 and WIDTH or 0
	local leafNodeOffset = LEAF_NODE_SIZE / 2
	local toggleOffset = TOGGLE_SIZE / 2
	local offset = isLeafNode and leafNodeOffset or toggleOffset

	local indentSize = indent > 1 and (indent - 1) * WIDTH or 0

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(0, indentSize + width, 0, 0),
		LayoutOrder = layoutOrder,
	}, {
		Indent = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			LayoutOrder = 0,
			Size = UDim2.new(0, indentSize, 1, 0),
		}),

		VerticalLine = not isLeafNode and isExpanded and Roact.createElement("Frame", {
			Size = UDim2.new(0, 1, 0, height - toggleOffset),
			BorderSizePixel = 0,
			BackgroundTransparency = theme.ikTheme.transparency,
			Position = UDim2.new(0, indentSize + width + toggleOffset, 0, toggleOffset),
			BackgroundColor3 = highlight and theme.ikTheme.ikLineColor or theme.ikTheme.lineColor,
			ZIndex = 2,
		}),

		IKVerticalLine = not isLeafNode and isExpanded and inActiveChain and Roact.createElement("Frame", {
			Size = UDim2.new(0, 1, 0, math.max(ikHeight - toggleOffset, 0)),
			BorderSizePixel = 0,
			Position = UDim2.new(0, indentSize + width + toggleOffset, 0, toggleOffset),
			BackgroundColor3 = theme.ikTheme.ikLineColor,
			BorderColor3 = theme.ikTheme.ikLineColor,
			ZIndex = 3,
		}),

		HorizontalLine = isChildNode and Roact.createElement("Frame", {
			Size = UDim2.new(0, width - offset, 0, 1),
			BorderSizePixel = 0,
			BackgroundTransparency = (not highlight or not inActiveChain) and theme.ikTheme.transparency or 0,
			BackgroundColor3 = highlight and theme.ikTheme.ikLineColor or theme.ikTheme.lineColor,
			Position = UDim2.new(0, indentSize + toggleOffset, 0, 0),
			ZIndex = 2,
		}),

		LeafNode = isLeafNode and Roact.createElement("ImageLabel", {
			Size = UDim2.new(0, LEAF_NODE_SIZE, 0, LEAF_NODE_SIZE),
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			Image = theme.ikTheme.leafNodeImage,
			ImageColor3 = isSelected and theme.ikTheme.primaryTextColor or theme.ikTheme.lineColor,
			Position = UDim2.new(0, indentSize + width, 0.5, 0),
			AnchorPoint = Vector2.new(0, 0.5),
			ZIndex = 4,
		}),

		Toggle = not isLeafNode and Roact.createElement("ImageButton", {
			Size = UDim2.new(0, TOGGLE_SIZE, 0, TOGGLE_SIZE),
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			Image = isExpanded and theme.ikTheme.collapseImage or theme.ikTheme.expandImage,
			ImageColor3 = isSelected and theme.ikTheme.primaryTextColor or theme.ikTheme.lineColor,
			Position = UDim2.new(0, indentSize + width, 0.5, 0),
			AnchorPoint = Vector2.new(0, 0.5),
			AutoButtonColor = false,
			ZIndex = 4,
			[Roact.Event.MouseButton1Click] = function()
				props.ToggleExpanded(props.Element)
			end,
		}),
	})
end

HierarchyLines = withContext({
	Stylizer = ContextServices.Stylizer,
})(HierarchyLines)

return HierarchyLines
