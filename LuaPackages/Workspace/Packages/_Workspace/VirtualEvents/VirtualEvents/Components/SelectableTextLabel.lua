local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local Cryo = require(VirtualEvents.Parent.Cryo)
local React = require(VirtualEvents.Parent.React)
local UIBlox = require(VirtualEvents.Parent.UIBlox)

local useStyle = UIBlox.Core.Style.useStyle

type Props = {
	fontStyle: any,
	colorStyle: any,
	[string]: any,
}

local function SelectableTextLabel(props: Props)
	local style = useStyle()

	local baseSize = style.Font.BaseSize
	local fontSizeMin = props.fontStyle.RelativeMinSize * baseSize
	local fontSizeMax = props.fontStyle.RelativeSize * baseSize

	local textProps = Cryo.Dictionary.join(
		{
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundTransparency = 1,
			ClearTextOnFocus = false,
			Font = props.fontStyle.Font,
			TextColor3 = props.colorStyle.Color,
			TextEditable = false,
			TextTransparency = props.colorStyle.Transparency,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			ClipsDescendants = true,
		},
		props,
		{
			fontStyle = Cryo.None,
			colorStyle = Cryo.None,
		}
	)

	return React.createElement("TextBox", textProps, {
		TextSizeConstraint = React.createElement("UITextSizeConstraint", {
			MaxTextSize = fontSizeMax,
			MinTextSize = fontSizeMin,
		}),
	})
end

return SelectableTextLabel
