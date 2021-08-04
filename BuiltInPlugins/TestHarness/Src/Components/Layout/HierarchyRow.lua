--[[
	-- TODO: RIDE-3499 Create hierarchy row matching design specs
	The row displayed in the treeview
]]
local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local UI = Framework.UI
local Button = UI.Button
local Pane = UI.Pane
local TextLabel = UI.Decoration.TextLabel

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Stylizer = Framework.Style.Stylizer

local HierarchyRow = Roact.PureComponent:extend("HierarchyRow")

function HierarchyRow:render()
	local text = self.props.Text
	local indent = self.props.Indent
	local layoutOrder = self.props.LayoutOrder
	local hasChildren = self.props.HasChildren
	local onClick = self.props.OnClick
	local expanded = self.props.Expanded

	return Roact.createElement(Pane, {
		Size = UDim2.new(1, -indent, 0, 32),
		LayoutOrder = layoutOrder
	}, {
		Toggle = hasChildren and Roact.createElement(Button, {
			Text = expanded and "-" or "+",
			Position = UDim2.new(0, 5 + indent, 0, 4),
			Size = UDim2.new(0, 24, 0, 24),
			OnClick = onClick,
		}) or nil,
		-- TODO: RIDE-3499 Show test details on click
		Label = Roact.createElement(TextLabel, {
			Text = text,
			Size = UDim2.new(1, -40, 1, 0),
			Position = UDim2.new(0, 40 + indent, 0, 0),
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
	})
end

HierarchyRow = withContext({
	Stylizer = Stylizer,
})(HierarchyRow)

return HierarchyRow
