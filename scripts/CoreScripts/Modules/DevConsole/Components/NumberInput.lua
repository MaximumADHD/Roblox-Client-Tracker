local CorePackages = game:GetService("CorePackages")

local Constants = require(script.Parent.Parent.Constants)
local Roact = require(CorePackages.Packages.Roact)

local NumberInput = Roact.Component:extend("NumberInput")

export type NumberInputProps = {
	Size: UDim2,
	Range: NumberRange,
	DefaultValue: number,
	LayoutOrder: number?,
	IntegerOnly: boolean?,
	OnNumberInputChanged: ((number) -> ())?,
	TextXAlignment: Enum.TextXAlignment?,
}

function NumberInput:init()
	local props = self.props :: NumberInputProps

	self.state = {
		Value = props.DefaultValue,
	}
end

function NumberInput:render()
	local props = self.props :: NumberInputProps

	return Roact.createElement("TextBox", {
		Font = Constants.Font.Log,
		Text = `{self.state.Value}`,
		TextColor3 = Constants.Color.Text,
		TextSize = Constants.GeneralFormatting.NumberInputTextSize,
		TextXAlignment = props.TextXAlignment or Enum.TextXAlignment.Center,
		BackgroundColor3 = Constants.Color.TextBoxGray,
		BorderColor3 = Constants.GeneralFormatting.LineColor,
		LayoutOrder = props.LayoutOrder,
		Size = props.Size,

		-- Will default to previous value on focus lost if invalid input, so clearing will not result in lost work
		ClearTextOnFocus = true,

		[Roact.Event.FocusLost] = function(rbx: TextBox)
			local newValue = tonumber(rbx.Text)

			if newValue == nil or newValue ~= newValue then
				rbx.Text = `{self.state.Value}`
				return
			end

			if props.IntegerOnly then
				newValue = math.floor(newValue)
			end

			newValue = math.clamp(newValue, props.Range.Min, props.Range.Max)

			self:setState({
				Value = newValue,
			})

			rbx.Text = `{newValue}`

			if props.OnNumberInputChanged then
				props.OnNumberInputChanged(newValue)
			end
		end,
	})
end

return NumberInput
