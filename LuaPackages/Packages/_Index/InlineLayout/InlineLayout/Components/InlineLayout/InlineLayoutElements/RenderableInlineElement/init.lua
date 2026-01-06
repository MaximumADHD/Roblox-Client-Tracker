--[[
	Base abstract inline element implementation for non splittable non text nodes that can be rendered.
	Your element must have a UDim2 Size prop.

	Example:

	-- ImageElement now can be used in InlineLayout.
	function ImageElement.new(props)
		return RenderableInlineElement.new(Image, props)
	end
]]
local Root = script:FindFirstAncestor("Components").Parent
local Packages = Root.Parent

local React = require(Packages.React)
type ReactElement<T> = React.Element<T>

local Dash = require(Packages.Dash)

local InlineElementType = require(Root.Utils.InlineElementType)

local join = Dash.join

export type RenderableInlineElement = {
	props: { [any]: any } & { Size: UDim2 },
	getWidth: (self: RenderableInlineElement) -> number,
	split: (
		self: RenderableInlineElement,
		width: number,
		canForceSplit: boolean?
	) -> (RenderableInlineElement, RenderableInlineElement?),
	render: (self: RenderableInlineElement, id: string | number, layoutOrder: number) -> (),
	mapProps: (
		self: RenderableInlineElement,
		props: { [any]: any } & { layoutOrder: number, key: string, id: string | number }
	) -> { [any]: any },
	canForceSplit: boolean?,
}

local RenderableInlineElement = {}
RenderableInlineElement.__index = RenderableInlineElement
RenderableInlineElement.__type = InlineElementType

function RenderableInlineElement.new(Element, props, mapProps)
	local self = setmetatable({}, RenderableInlineElement)
	self.props = props
	self.mapProps = mapProps or Dash.identity
	self.Element = Element
	return self
end

function RenderableInlineElement:getWidth()
	return self.props.Size.Width.Offset
end

function RenderableInlineElement:split()
	return RenderableInlineElement.new(self.Element, join(self.props))
end

function RenderableInlineElement:render(id: string, layoutOrder: number)
	return React.createElement(
		self.Element,
		self.mapProps(Dash.assign(self.props, { id = id, key = tostring(layoutOrder), LayoutOrder = layoutOrder }))
	)
end

return RenderableInlineElement
