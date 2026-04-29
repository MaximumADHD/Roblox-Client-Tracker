--[[
	(USES STYLESHEETS)
	A cell displays a visual and editable UI for a particular lua value.

	Required Props:
		table Schema: The schema of the cell
		any Value: The current value of the cell
		callback OnChanged: Called when cell value is changed by the user

	Optional Props:
		Vector2 AnchorPoint: The AnchorPoint of the cell
		Enum.AutomaticSize AutomaticSize: The AutomaticSize style of the cell
		boolean Disabled: Whether the cell is disabled
		string ErrorMessage: A message to display as tooltip when there is an error (Passed to child)
		callback GetAutocompleteItems: Return a list of autocomplete items to be chosen (text: string) -> { AutocompleteItem }? (Passed to child)
		boolean HasError: Whether there is an error with the cell (Passed to child)
		number Height: Passed to child
		number LayoutOrder: The LayoutOrder of the cell
		number MinimumHeight: Passed to child
		callback OnClick: Called when cell value is clicked
		callback OnDoubleClick: Called when cell value is double-clicked
		callback OnPressed: Called when cell is pressed (Passed to child)
		UDim2 Position: The Position of the cell
		boolean Selected: Whether the cell is selected
		UDim2 Size: The size of the cell
		table Renderers: A list of custom renderers to use when displaying a cell.
		string Tooltip: The tooltip to display when hovering over the cell
		Enum.VerticalAlignment VerticalAlignment: Specifies the VerticalAlignment for components withing the PropertyCell
]]
local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else nil
local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)
local joinTags = require(Framework.Styling.joinTags)

local Dash = require(Framework.Parent.Dash)
local assign = Dash.assign

local Components = Framework.UI.Components
local Pane = require(Components.Pane)
local Tooltip = require(Components.Tooltip)

local getFFlagDevFrameworkPropertyCellLayoutOrderFix =
	require(Framework.SharedFlags.getFFlagDevFrameworkPropertyCellLayoutOrderFix)
local getFFlagDevFrameworkFormAlignment = require(Framework.SharedFlags.getFFlagDevFrameworkFormAlignment)

local PropertyCell = Roact.PureComponent:extend("PropertyCell")

function PropertyCell:render()
	local props = self.props

	local Renderer = (props.Renderers and props.Renderers[props.Schema.Type])
		or PropertyCell.Renderers[props.Schema.Type]
	if not Renderer and props.Schema.Type ~= "Empty" then
		error("No renderer found for property schema " .. props.Schema.Type)
	end

	local pane = Roact.createElement(
		Pane,
		assign(
			{
				AnchorPoint = props.AnchorPoint,
				AutomaticSize = props.AutomaticSize,
				ClipsDescendants = not props.AutomaticSize,
				LayoutOrder = props.LayoutOrder,
				Position = props.Position,
				Size = props.Size,
				VerticalAlignment = props.VerticalAlignment or Enum.VerticalAlignment.Center,
			},
			if supportsStyleSheets
				then {
					[React.Tag] = joinTags("Component-PropertyCell", props[React.Tag]),
				}
				else nil
		),
		{
			Content = if Renderer then Roact.createElement(Renderer, props) else nil,
			Layout = if getFFlagDevFrameworkFormAlignment()
				then Roact.createElement("UIListLayout", {
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Center,
				})
				else nil,
		}
	)

	if props.Tooltip then
		return Roact.createElement(Tooltip, {
			Child = pane,
			Text = props.Tooltip,
			LayoutOrder = if getFFlagDevFrameworkPropertyCellLayoutOrderFix() then props.LayoutOrder else nil,
		})
	else
		return pane
	end
end

PropertyCell.Renderers = require(script.Renderers)

if not supportsStyleSheets then
	PropertyCell = withContext({
		Stylizer = ContextServices.Stylizer,
	})(PropertyCell)
end

return PropertyCell
