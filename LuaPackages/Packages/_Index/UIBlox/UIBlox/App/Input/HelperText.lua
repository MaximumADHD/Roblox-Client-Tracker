local Input = script.Parent
local App = Input.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)

local useStyle = require(UIBlox.Core.Style.useStyle)

type HelperTextProps = {
	-- Determines the string rendered by the UI element
	text: string,
	-- Whether the input is in an error state
	error: boolean?,
	LayoutOrder: number?,
}

local function HelperText(props: HelperTextProps)
	local style = useStyle()

	local helperTextStyle = style.Tokens.Component.HelperText
	local typography = helperTextStyle.Base.Typography
	local textColor = if props.error then helperTextStyle.Error.ContentColor else helperTextStyle.Base.ContentColor

	return React.createElement("TextLabel", {
		Text = props.text,
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

return HelperText
