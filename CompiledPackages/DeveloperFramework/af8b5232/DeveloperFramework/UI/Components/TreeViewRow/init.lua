--[[
	(USES STYLESHEETS)
	A simple row of a tree which can be hovered, disabled & selected.

	Required Props:
		any Item: The item being displayed by this row
		number Index: The index of the row to display
		number Depth: The offset of the row
		any Children: The child items of this row
		callback OnToggle: Called when the toggle icon is pressed (props) -> ()

	Optional Props:
		any Key: A unique key used by Roact.
		any Position: The Position of the pane.
		any Size: The Size of the pane.
		any BeforeToggle: An optional component to render before the toggle. Passed the Row props and the expected LayoutOrder.
		any BeforeIcon: An optional component to render before the icon. Passed the Row props and the expected LayoutOrder.
		any BeforeIndentItem: An optional component that renders before the row adds any indentation. Passed the Row props and the expected LayoutOrder.
		any AfterItem: An optional component that renders after the row label. Passed the Row props and the expected LayoutOrder.
		any TailItem: An optional component that renders at the tail end of the row. Passed the Row props and the expected LayoutOrder.
		any WrapperProps: Props inherited from withControl to be passed to the underlying Pane.
		any Expanded: An optional variable indicating if the row is expanded
		any Checked: An optional variable indicating whether an associated checkbox is checked
		callback OnCheck: An optional function which gets called when the component checked state changes
		callback OnPress: An optional function which gets called when the row is pressed
		callback OnSecondaryPress: An optional function which gets called when the row is right-clicked
		any Selected: An optional variable indicating whether a row has been selected or not
		any Stylizer: An optional value which is used to apply themes
		any StyleModifier: Describes any changes to the style
		callback GetContents: An optional function describing how to get the contents of a row - (item: Item) => string, string
		boolean ExpandableRoot: Defines whether or not the root can be expanded, this determines indent depth for each row
]]
local Framework = script:FindFirstAncestor("UI").Parent

local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else nil
local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)
local joinTags = require(Framework.Styling.joinTags)
local styles = require(script.styles)

local Typecheck = require(Framework.Util.Typecheck)

local Dash = require(Framework.Parent.Dash)
local assign = Dash.assign
local join = Dash.join

local withControl = require(Framework.Wrappers.withControl)

local UI = Framework.UI
local Image = require(UI.Components.Image)
local Pane = require(UI.Components.Pane)
local TextLabel = require(UI.Components.TextLabel)
local Tooltip = require(UI.Components.Tooltip)

local TreeViewRow = Roact.PureComponent:extend("TreeViewRow")
Typecheck.wrap(TreeViewRow, script)

function TreeViewRow:init()
	self.onToggle = function()
		self.props.OnToggle(self.props)
	end
end

function TreeViewRow:render()
	local props = self.props
	local style = if supportsStyleSheets then props.Style or {} else props.Stylizer
	local index = props.Index
	local item = props.Item
	local depth = props.Depth
	local hasChildren = #props.Children > 0
	local isExpanded = props.Expanded
	local arrowSize = if supportsStyleSheets then styles:GetAttribute("ArrowSize") else style.Arrow.Size
	local beforeToggle = props.BeforeToggle
	local beforeIcon = props.BeforeIcon
	local afterItem = props.AfterItem
	local tailItem = props.TailItem
	local beforeIndentItem = props.BeforeIndentItem
	local expandableRoot = props.ExpandableRoot
	local position = props.Position
	local text, icon, tooltip

	local expandedOffset = if supportsStyleSheets
		then styles:GetAttribute("ArrowExpandedOffset")
		else style.Arrow.ExpandedOffset
	local collapsedOffset = if supportsStyleSheets
		then styles:GetAttribute("ArrowCollapsedOffset")
		else style.Arrow.CollapsedOffset

	if props.GetContents then
		text, icon = props.GetContents(item)
	else
		text = item.text
		icon = item.icon
		tooltip = item.tooltip
	end

	local isNotRootOrExpandable = depth ~= 0 or expandableRoot
	local trueDepth = depth - (not expandableRoot and 1 or 0)
	local indent = trueDepth * (if supportsStyleSheets then styles:GetAttribute("Indent") else style.Indent)

	local padding = if supportsStyleSheets
		then nil
		else {
			Top = style.Padding.Top,
			Left = style.Padding.Left,
			Right = style.Padding.Right,
			Bottom = style.Padding.Bottom,
		}

	local children = {
		BeforeIndentItem = if beforeIndentItem
			then Roact.createElement(
				beforeIndentItem,
				join(props, {
					LayoutOrder = 1,
				})
			)
			else nil,
		Spacer = if isNotRootOrExpandable
			then Roact.createElement(Pane, {
				LayoutOrder = 2,
				Size = UDim2.new(0, indent, 0, 0),
			})
			else nil,
		BeforeToggle = if beforeToggle
			then Roact.createElement(
				beforeToggle,
				join(props, {
					LayoutOrder = 3,
				})
			)
			else nil,
		Toggle = if isNotRootOrExpandable
			then (if hasChildren
				then Roact.createElement(
					"ImageButton",
					if supportsStyleSheets
						then {
							ImageRectOffset = if isExpanded then expandedOffset else collapsedOffset,
							LayoutOrder = 4,
							[Roact.Event.Activated] = self.onToggle,
							[React.Tag] = "Arrow",
						}
						else {
							LayoutOrder = 4,
							Size = UDim2.new(0, arrowSize, 0, arrowSize),
							BackgroundTransparency = 1,
							Image = style.Arrow.Image,
							ImageColor3 = style.Arrow.Color,
							ImageRectSize = Vector2.new(arrowSize, arrowSize),
							ImageRectOffset = if isExpanded then expandedOffset else collapsedOffset,
							[Roact.Event.Activated] = self.onToggle,
						}
				)
				else Roact.createElement(Pane, {
					LayoutOrder = 4,
					Size = UDim2.new(0, arrowSize, 0, arrowSize),
				}))
			else nil,
		BeforeIcon = if beforeIcon
			then Roact.createElement(
				beforeIcon,
				join(props, {
					LayoutOrder = 5,
				})
			)
			else nil,
		LeftIcon = if icon
			then Roact.createElement(
				Image,
				join({
					LayoutOrder = 6,
				}, icon)
			)
			else nil,
		Text = if text
			then Roact.createElement(
				TextLabel,
				{
					TextColor = style.TextColor,
					LayoutOrder = 7,
					Text = text,
					AutomaticSize = Enum.AutomaticSize.XY,
				},
				if tooltip
					then {
						Tooltip = Roact.createElement(Tooltip, {
							Text = tooltip,
						}),
					}
					else nil
			)
			else nil,
		AfterItem = if afterItem
			then Roact.createElement(
				afterItem,
				join(props, {
					LayoutOrder = 8,
				})
			)
			else nil,
	}

	return Roact.createElement(
		Pane,
		assign(
			{
				OnClick = function() end,
				LayoutOrder = if beforeIndentItem then 2 else index,
				Position = position,
				Size = props.Size,
			},
			props.WrapperProps,
			if supportsStyleSheets
				then {
					[React.Tag] = joinTags(
						"Component-TreeViewRow",
						props[React.Tag] or "Row Fit-X X-Stroke X-Corner X-RowM X-Middle"
					),
				}
				else {
					AutomaticSize = Enum.AutomaticSize.X,
					Style = "Box",
					Layout = if tailItem then nil else Enum.FillDirection.Horizontal,
					HorizontalAlignment = if tailItem then nil else Enum.HorizontalAlignment.Left,
					BackgroundColor3 = style.Background,
					Padding = padding,
					Size = props.Size or UDim2.new(1, 0, 0, style.RowHeight),
					Spacing = style.Spacing,
				}
		),
		if tailItem
			then {
				Row = Roact.createElement(Pane, {
					Layout = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
				}, children),
				Tail = Roact.createElement(
					Pane,
					if supportsStyleSheets
						then {
							[React.Tag] = "Tail",
						}
						else {
							AnchorPoint = Vector2.new(1, 0),
							AutomaticSize = Enum.AutomaticSize.X,
							Padding = style.TailPadding,
							Position = UDim2.fromScale(1, 0),
							Size = UDim2.fromScale(0, 1),
							BackgroundColor3 = style.Background,
							ZIndex = 2,
						},
					{
						Child = Roact.createElement(tailItem, props),
					}
				),
			}
			else children
	)
end

TreeViewRow.defaultProps = {
	ExpandableRoot = true,
}

TreeViewRow = withContext({
	Stylizer = if supportsStyleSheets then nil else ContextServices.Stylizer,
})(TreeViewRow)

return withControl(TreeViewRow)
