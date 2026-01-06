local Root = script:FindFirstAncestor("Components").Parent
local Packages = Root.Parent
local InlineLayoutElements = script:FindFirstAncestor("InlineLayoutElements")

local React = require(Packages.React)
local Foundation = require(Packages.Foundation)

local useTokens = Foundation.Hooks.useTokens
local InlineSpanElement = require(InlineLayoutElements.InlineSpanElement)
local HoverContext = require(InlineLayoutElements.HoverContext)
local RenderableInlineElement = require(InlineLayoutElements.RenderableInlineElement)

local LinkElement = {}

type Props = {
	onActivated: () -> (),
}

type ElementProps = Props & {
	children: { React.ReactNode }?,
	LayoutOrder: number,
	id: number,
}

function HoverContextWrapper(props: ElementProps)
	local isHovered, onHover = HoverContext.useHoverContext(props.id)
	local onStateChanged = React.useCallback(function(state)
		onHover(state == Foundation.Enums.ControlState.Hover)
	end, { onHover })
	local tokens = useTokens()
	local hoverColor = tokens.Color.State.Hover

	return React.createElement(Foundation.View, {
		tag = "size-0-0 auto-xy row",
		LayoutOrder = props.LayoutOrder,
		onActivated = props.onActivated,
		backgroundStyle = if isHovered then hoverColor else nil,
		onStateChanged = onStateChanged,
		stateLayer = {
			affordance = Foundation.Enums.StateLayerAffordance.None,
		},
	}, props.children)
end

function LinkElement.new(elements: { RenderableInlineElement.RenderableInlineElement }, props: Props)
	return InlineSpanElement.new(HoverContextWrapper, props :: ElementProps, elements)
end

return LinkElement
