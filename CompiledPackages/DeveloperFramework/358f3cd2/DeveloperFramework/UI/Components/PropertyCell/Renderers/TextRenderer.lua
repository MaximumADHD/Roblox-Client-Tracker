local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local StyleModifier = require(Framework.Util.StyleModifier)

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else nil
local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)

local TextInput = require(Framework.UI.Components.TextInput)

local Types = require(script.Parent.Parent.Types)
type Props = Types.PropertyCellProps

local function TextRenderer(props: Props)
	local schema = props.Schema :: Types.TextSchema
	local hasError = props.HasError or (props.ErrorMessage and props.ErrorMessage ~= "")
	return Roact.createElement(
		TextInput,
		join(
			{
				AutomaticSize = Enum.AutomaticSize.None, -- The PropertyCell should not change size, so override TextInput default AutomaticSize.XY
				Disabled = props.Disabled,
				DropdownMenuProps = {
					ItemHeight = schema.ItemHeight,
				},
				GetAutocompleteItems = props.GetAutocompleteItems,
				OnFocused = props.OnPressed,
				OnFocusLost = function(text: string)
					if text then
						props.OnChanged(text)
					end
				end,
				PlaceholderText = schema.PlaceholderText,
				Size = if props.AutomaticSize
					then UDim2.new(1, 0, 0, props.MinimumHeight or 24)
					else UDim2.fromScale(1, 1),
				Style = if props.ErrorMessage and props.ErrorMessage ~= "" then schema.ErrorStyle else nil,
				StyleModifier = if not supportsStyleSheets and hasError then StyleModifier.Error else nil,
				Text = props.Value,
			},
			if supportsStyleSheets
				then {
					[React.Tag] = if hasError then schema.ErrorStyle else nil,
				}
				else nil
		)
	)
end

return TextRenderer
