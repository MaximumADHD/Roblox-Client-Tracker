local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else nil
local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)

local Components = Framework.UI.Components
local SelectInput = require(Components.SelectInput)
local StyleModifier = require(Framework.Util.StyleModifier)

local Types = require(script.Parent.Parent.Types)
type Props = Types.PropertyCellProps

local function SelectRenderer(props: Props)
	local schema = props.Schema :: Types.SelectSchema
	local hasError = props.ErrorMessage and props.ErrorMessage ~= ""
	local size = UDim2.fromScale(1, 1)
	if props.Size then
		size = props.Size
	elseif props.AutomaticSize then
		size = UDim2.new(1, 0, 0, props.MinimumHeight or 24)
	end
	return Roact.createElement(
		SelectInput,
		join(
			{
				Enabled = not props.Disabled,
				Items = schema.Items,
				ItemHeight = schema.ItemHeight,
				OnRenderItem = props.OnRenderItem,
				PlaceholderText = props.PlaceholderText or schema.PlaceholderText,
				SelectedId = props.Value,
				Size = size,
				StyleModifier = if not supportsStyleSheets and hasError then StyleModifier.Error else nil,
				OnItemActivated = function(item: Types.SelectItem)
					props.OnChanged(item.Id)
				end,
			},
			if supportsStyleSheets
				then {
					[React.Tag] = if hasError then schema.ErrorStyle else nil,
				}
				else nil
		)
	)
end

return SelectRenderer
