local Root = script:FindFirstAncestor("Components").Parent
local Packages = Root.Parent
local InlineLayoutElements = script:FindFirstAncestor("InlineLayoutElements")

local Dash = require(Packages.Dash)
local Foundation = require(Packages.Foundation)
local React = require(Packages.React)

local BaseTextElement = require(InlineLayoutElements.BaseTextElement)
local getFontFace = require(Root.Utils.getFontFace)

local View = Foundation.View

type BaseTextElementProps = BaseTextElement.BaseTextElementProps

local SelectableTextElement = {}

type Props = BaseTextElementProps & {
	viewTags: (string | { [string]: boolean? })?,
	LayoutOrder: number?,
}

function mapProps(props: Props)
	return Dash.omit(props, { "id", "EngineTags" })
end

local function TextElementWrapper(props: Props)
	local fontFace = getFontFace(props.fontStyle)
	local textStyle = if typeof(props.textStyle) == "table" then props.textStyle else {}

	local viewTags = typeof(props.viewTags) == "string" and { [props.viewTags] = true } or props.viewTags or {}

	return React.createElement(View, {
		tag = Dash.join({
			["size-full-0 auto-y"] = true,
		}, viewTags),
		LayoutOrder = props.LayoutOrder,
	}, {
		SelectableText = React.createElement("TextBox", {
			Text = props.Text,
			FontFace = fontFace,
			TextSize = props.fontStyle and props.fontStyle.FontSize,
			TextColor3 = textStyle.Color3,
			TextTransparency = textStyle.Transparency,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			TextEditable = false,
			ZIndex = 0,
			-- Fill the measured frame InlineLayout places the element in, instead of an automatic width.
			Size = UDim2.fromScale(1, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			TextWrapped = false,
			ClearTextOnFocus = false,
			RichText = false,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
	})
end

function SelectableTextElement.new(props: Props)
	return BaseTextElement.new(TextElementWrapper, Dash.omit(props, { "EngineTags" }), mapProps)
end

return SelectableTextElement
