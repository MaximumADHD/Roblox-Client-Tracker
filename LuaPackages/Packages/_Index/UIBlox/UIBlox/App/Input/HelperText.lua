local Input = script.Parent
local App = Input.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local Foundation = require(Packages.Foundation)
local normalizeFontFace = Foundation.Utility.normalizeFontFace

local useStyle = require(UIBlox.Core.Style.useStyle)

local FFlagFoundationFontFaceMigration = Foundation.Utility.Flags.FoundationFontFaceMigration

type HelperTextProps = {
	-- Determines the string rendered by the UI element
	text: string,
	-- Whether the input is in an error state
	error: boolean?,
	LayoutOrder: number?,
}

local function HelperText(props: HelperTextProps)
	local style = useStyle()

	local typography = style.Tokens.Typography.CaptionSmall
	local textColor = if props.error
		then style.Tokens.Color.ActionAlert.Foreground
		else style.Tokens.Color.Content.Default

	return React.createElement("TextLabel", {
		Text = props.text,
		TextTransparency = textColor.Transparency,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Top,
		TextWrapped = true,
		BackgroundTransparency = 1,
		TextColor3 = textColor.Color3,
		Font = if FFlagFoundationFontFaceMigration then nil else typography.Font,
		FontFace = if FFlagFoundationFontFaceMigration then normalizeFontFace(typography.Font) else nil,
		TextSize = typography.FontSize,
		LineHeight = typography.LineHeight,
		Size = UDim2.new(1, 0, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		LayoutOrder = props.LayoutOrder,
	})
end

return HelperText
