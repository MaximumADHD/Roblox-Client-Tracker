--[[
	A simple row of a tree which can be hovered, disabled & selected.

	Required Props:
		any Item: The item being displayed by this row
		number Index: The index of the row to display
		number Depth: The offset of the row
		any Children: The child items of this row
		callback OnToggle: Called when the toggle icon is pressed (props) -> ()
	
	Optional Props:
		any BeforeToggle: An optional component to render before the toggle. Passed the Row props and the expected LayoutOrder.
		any BeforeIcon: An optional component to render before the icon. Passed the Row props and the expected LayoutOrder.
		any BeforeIndentItem: An optional component that renders before the row adds any indentation. Passed the Row props and the expected LayoutOrder.
		any WrapperProps: Props inherited from withControl to be passed to the underlying Pane.
		any Expanded: An optional variable indicating if the row is expanded
		any Checked: An optional variable indicating whether an associated checkbox is checked
		callback OnCheck: An optional function which gets called when the component checked state changes
		callback OnPress: An optional function which gets called when a button is pressed
		any Stylizer: An optional value which is used to apply themes
		any StyleModifier: Describes any changes to the style
		callback GetContents: An optional function describing how to get the contents of a row - (item: Item) => string, string
		boolean ExpandableRoot: Defines whether or not the root can be expanded, this determines indent depth for each row
]]

local FFlagDeveloperFrameworkWithContext = game:GetFastFlag("DeveloperFrameworkWithContext")
local FFlagDevFrameworkLeftAlignedCheckboxTreeView = game:GetFastFlag("DevFrameworkLeftAlignedCheckboxTreeView")

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext

local Util = require(Framework.Util)
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR
local Typecheck = Util.Typecheck

local Dash = require(Framework.packages.Dash)
local assign = Dash.assign
local join = Dash.join

local withControl = require(Framework.Wrappers.withControl)

local UI = Framework.UI
local Image = require(UI.Image)
local Pane = require(UI.Pane)
local TextLabel = require(UI.TextLabel)

local TreeViewRow = Roact.PureComponent:extend("TreeViewRow")
Typecheck.wrap(TreeViewRow, script)

function TreeViewRow:init()
	self.onToggle = function()
		self.props.OnToggle(self.props)
	end
end

function TreeViewRow:render()
	local props = self.props
	local style = THEME_REFACTOR and props.Stylizer or props.Theme:getStyle("Framework", self)
	local index = props.Index
	local item = props.Item
	local depth = props.Depth
	local hasChildren = #props.Children > 0
	local isExpanded = props.Expanded
	local arrowSize = style.Arrow.Size
	local beforeToggle = props.BeforeToggle
	local beforeIcon = props.BeforeIcon
	local text, icon
	local beforeIndentItem
	local expandableRoot

	if FFlagDevFrameworkLeftAlignedCheckboxTreeView then
		beforeIndentItem = props.BeforeIndentItem
		expandableRoot = props.ExpandableRoot
	end

	if props.GetContents then
		text, icon = props.GetContents(item)
	else
		text = item.text
		icon = item.icon
	end

	if FFlagDevFrameworkLeftAlignedCheckboxTreeView then
		local isNotRootOrExpandable = depth ~= 0 or expandableRoot
		local trueDepth = depth - (not expandableRoot and 1 or 0)
		local indent = trueDepth * style.Indent

		local padding = {
			Top = style.Padding.Top,
			Left = style.Padding.Left,
			Right = style.Padding.Right,
			Bottom = style.Padding.Bottom,
		}

		return Roact.createElement(Pane, assign({
			LayoutOrder = beforeIndentItem and 2 or index,
			Size = UDim2.new(1, 0, 0, style.RowHeight),
			AutomaticSize = Enum.AutomaticSize.X,
			Style = "Box",
			Layout = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			BackgroundColor3 = style.Background,
			Padding = padding,
			Spacing = style.Spacing
		}, props.WrapperProps), {
			BeforeIndentItem = beforeIndentItem and Roact.createElement(beforeIndentItem, join(props, {
				LayoutOrder = 1,
			})) or nil,
			Spacer = isNotRootOrExpandable and Roact.createElement(Pane, {
				LayoutOrder = 2,
				Size = UDim2.new(0, indent, 0, 0)
			}) or nil,
			BeforeToggle = beforeToggle and Roact.createElement(beforeToggle, join(props, {
				LayoutOrder = 3,
			})) or nil,
			Toggle = isNotRootOrExpandable
				and (hasChildren
					and Roact.createElement("ImageButton", {
						LayoutOrder = 4,
						Size = UDim2.new(0, arrowSize, 0, arrowSize),
						BackgroundTransparency = 1,
						Image = style.Arrow.Image,
						ImageColor3 = style.Arrow.Color,
						ImageRectSize = Vector2.new(arrowSize, arrowSize),
						ImageRectOffset = isExpanded and style.Arrow.ExpandedOffset or style.Arrow.CollapsedOffset,
						[Roact.Event.Activated] = self.onToggle
					})
					or Roact.createElement(Pane, {
						LayoutOrder = 4,
						Size = UDim2.new(0, arrowSize, 0, arrowSize),
					})
				) or nil,
			BeforeIcon = beforeIcon and Roact.createElement(beforeIcon, join(props, {
				LayoutOrder = 5,
			})) or nil,
			LeftIcon = icon and Roact.createElement(Image, join({
				LayoutOrder = 6,
			}, icon)) or nil,
			Text = text and Roact.createElement(TextLabel, {
				TextColor = style.TextColor,
				LayoutOrder = 7,
				Text = text,
				AutomaticSize = Enum.AutomaticSize.XY,
			}) or nil,
		})
	else
		local indent = depth * style.Indent

		local padding = {
			Top = style.Padding.Top,
			Left = style.Padding.Left + indent,
			Right = style.Padding.Right,
			Bottom = style.Padding.Bottom,
		}
		return Roact.createElement(Pane, assign({
			LayoutOrder = index,
			Size = UDim2.new(1, 0, 0, style.RowHeight),
			AutomaticSize = Enum.AutomaticSize.X,
			Style = "Box",
			Layout = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			BackgroundColor3 = style.Background,
			Padding = padding,
			Spacing = style.Spacing
		}, props.WrapperProps), {
			BeforeToggle = beforeToggle and Roact.createElement(beforeToggle, join(props, {
				LayoutOrder = 1,
			})) or nil,
			Toggle = hasChildren and Roact.createElement("ImageButton", {
				LayoutOrder = 2,
				Size = UDim2.new(0, arrowSize, 0, arrowSize),
				BackgroundTransparency = 1,
				Image = style.Arrow.Image,
				ImageColor3 = style.Arrow.Color,
				ImageRectSize = Vector2.new(arrowSize, arrowSize),
				ImageRectOffset = isExpanded and style.Arrow.ExpandedOffset or style.Arrow.CollapsedOffset,
				[Roact.Event.Activated] = self.onToggle
			}) or nil,
			BeforeIcon = beforeIcon and Roact.createElement(beforeIcon, join(props, {
				LayoutOrder = 3,
			})) or nil,
			LeftIcon = icon and Roact.createElement(Image, join({
				LayoutOrder = 4,
			}, icon)) or nil,
			Text = text and Roact.createElement(TextLabel, {
				TextColor = style.TextColor,
				LayoutOrder = 5,
				Text = text,
				AutomaticSize = Enum.AutomaticSize.XY,
			}) or nil,
		})
	end
end

TreeViewRow.defaultProps = {
	ExpandableRoot = FFlagDevFrameworkLeftAlignedCheckboxTreeView and true or nil,
}

if FFlagDeveloperFrameworkWithContext then
	TreeViewRow = withContext({
		Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
		Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
	})(TreeViewRow)
else
	ContextServices.mapToProps(TreeViewRow, {
		Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
		Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
	})
end


return withControl(TreeViewRow)
