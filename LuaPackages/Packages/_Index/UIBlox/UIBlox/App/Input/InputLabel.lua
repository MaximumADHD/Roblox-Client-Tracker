local Input = script.Parent
local App = Input.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Translator = require(UIBlox.Translations.Translator)
local React = require(Packages.React)

local useStyle = require(UIBlox.Core.Style.useStyle)

local REQUIRED_INDICATOR = "*"

type InputLabelProps = {
	-- Determines the string rendered by the UI element
	text: string,
	-- Whether the input is required or not. Leave nil for the majority case
	required: boolean?,
	LayoutOrder: number?,
}

local function labelText(text: string, required: boolean?): string
	if required == nil or required == React.None then
		return text
	end

	return if required
		then text .. REQUIRED_INDICATOR
		else Translator:FormatByKey("CommonUI.Controls.Input.Optional", { inputLabel = text })
end

local function InputLabel(props: InputLabelProps)
	local style = useStyle()

	local inputLabelStyle = style.Tokens.Component.InputLabel
	local typography = inputLabelStyle.Base.Typography
	local textColor = inputLabelStyle.Base.ContentColor

	return React.createElement("TextLabel", {
		Text = labelText(props.text, props.required),
		TextTransparency = textColor.Transparency,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Top,
		TextWrapped = true,
		BackgroundTransparency = 1,
		TextColor3 = textColor.Color3,
		Font = typography.Font,
		TextSize = typography.FontSize,
		LineHeight = typography.LineHeight,
		Size = UDim2.new(1, 0, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		LayoutOrder = props.LayoutOrder,
	})
end

return InputLabel
