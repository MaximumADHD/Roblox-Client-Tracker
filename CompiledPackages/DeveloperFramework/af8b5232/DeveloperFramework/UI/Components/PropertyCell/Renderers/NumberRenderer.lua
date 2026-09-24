local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local StyleModifier = require(Framework.Util.StyleModifier)

local Util = Framework.Util
local numberToString = require(Util.numberToString)

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else nil
local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)

local TextInput = require(Framework.UI.Components.TextInput)

local Types = require(script.Parent.Parent.Types)
type Props = Types.PropertyCellProps

local function NumberRenderer(props: Props)
	local schema = props.Schema :: Types.NumberSchema
	local hasError = props.HasError
	return Roact.createElement(
		TextInput,
		join(
			{
				Disabled = props.Disabled,
				OnFocusLost = function(text: string)
					if text then
						props.OnChanged(tonumber(text))
					end
				end,
				PlaceholderText = schema.PlaceholderText,
				Size = if props.AutomaticSize
					then UDim2.new(1, 0, 0, props.MinimumHeight or 24)
					else UDim2.fromScale(1, 1),
				StyleModifier = if not supportsStyleSheets and hasError then StyleModifier.Error else nil,
				Text = numberToString(props.Value, schema.Precision or 2),
			},
			if supportsStyleSheets
				then {
					[React.Tag] = if hasError then schema.ErrorStyle else nil,
				}
				else nil
		)
	)
end

return NumberRenderer
