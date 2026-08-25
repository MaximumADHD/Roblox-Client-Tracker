local Input = script.Parent
local App = Input.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)

local useStyle = require(UIBlox.Core.Style.useStyle)
local UIBloxConfig = require(UIBlox.UIBloxConfig)

type HelperTextProps = {
	-- Determines the string rendered by the UI element
	text: string,
	-- Whether the input is in an error state
	error: boolean?,
	LayoutOrder: number?,
}

local function HelperText(props: HelperTextProps)
	local style = useStyle()

	local typography = if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
		then style.Tokens.Typography.CaptionSmall
		else style.Tokens.Component.HelperText.Base.Typography
	local textColor = if props.error
		then (if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
			then style.Tokens.Color.ActionAlert.Foreground
			else style.Tokens.Component.HelperText.Error.ContentColor)
		else (if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
			then style.Tokens.Color.Content.Default
			else style.Tokens.Component.HelperText.Base.ContentColor)

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
