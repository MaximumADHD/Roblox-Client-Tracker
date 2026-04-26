local Framework = script:FindFirstAncestor("UI").Parent
local React = require(Framework.Util.React)
local Dash = require(Framework.Parent.Dash)

local LinkText = require(Framework.UI.Components.LinkText)

local BaseTextElement = require(Framework.UI.Components.InlineLayout.BaseTextElement)
local HoverContext = require(Framework.UI.Components.InlineLayout.HoverContext)

type BaseTextElementProps = BaseTextElement.BaseTextElementProps
type LinkElementProps = LinkText.Props

local LinkElement = {}

type Props = BaseTextElementProps & LinkElementProps

function HoverContextWrapper(props: Props & { id: number })
	local isHovered, onHover = HoverContext.useHoverContext(props.id)

	return React.createElement(LinkText, Dash.join(props, { isHovered = isHovered, onHover = onHover }))
end

function LinkElement.new(props: Props)
	return BaseTextElement.new(HoverContextWrapper, props)
end

return LinkElement
