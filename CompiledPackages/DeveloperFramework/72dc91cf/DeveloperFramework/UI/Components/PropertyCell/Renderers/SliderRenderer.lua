local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local StyleModifier = require(Framework.Util.StyleModifier)

local Components = Framework.UI.Components
local Slider = require(Components.Slider)

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else nil
local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)

local Types = require(script.Parent.Parent.Types)
type Props = Types.PropertyCellProps

local function SliderRenderer(props: Props)
	local schema = props.Schema :: Types.SliderSchema
	return Roact.createElement(
		Slider,
		join(
			{
				Disabled = props.Disabled,
				Max = schema.Max,
				Min = schema.Min,
				OnValueChanged = props.OnChanged,
				Size = if props.AutomaticSize
					then UDim2.new(1, 0, 0, props.MinimumHeight or 24)
					else UDim2.fromScale(1, 1),
				CustomValidation = props.CustomValidation,
				ShowInput = schema.ShowInput,
				SnapIncrement = schema.SnapIncrement,
				StyleModifier = if not supportsStyleSheets and props.HasError then StyleModifier.Error else nil,
				VerticalDragTolerance = 0,
				Value = props.Value,
			},
			if supportsStyleSheets
				then {
					[React.Tag] = if props.HasError then schema.ErrorStyle else nil,
				}
				else nil
		)
	)
end

return SliderRenderer
