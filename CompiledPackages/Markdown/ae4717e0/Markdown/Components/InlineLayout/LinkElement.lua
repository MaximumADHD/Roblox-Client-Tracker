local InlineLayout = script:FindFirstAncestor("InlineLayout")
local Packages = script:FindFirstAncestor("Packages")

local React = require(Packages.React)
local Dash = require(Packages.Dash)
local Foundation = require(Packages.Foundation)

local Text = Foundation.Text
local useTokens = Foundation.Hooks.useTokens
local BaseTextElement = require(InlineLayout.InlineLayoutElements.BaseTextElement)
local HoverContext = require(InlineLayout.InlineLayoutElements.HoverContext)

type BaseTextElementProps = BaseTextElement.BaseTextElementProps

local LinkElement = {}

type Props = BaseTextElementProps

function HoverContextWrapper(props: Props & { id: number })
	local isHovered, onHover = HoverContext.useHoverContext(props.id)
	local tokens = useTokens()
	local linkColor = tokens.Color.Content.Link

	return React.createElement(
		Text,
		Dash.join(props, {
			text = props.Text,
			onActivated = props.OnActivated,
			isHovered = isHovered,
			onHover = onHover,
			textStyle = linkColor,
		})
	)
end

function LinkElement.new(props: Props)
	return BaseTextElement.new(HoverContextWrapper, props :: Props & { id: number })
end

return LinkElement
