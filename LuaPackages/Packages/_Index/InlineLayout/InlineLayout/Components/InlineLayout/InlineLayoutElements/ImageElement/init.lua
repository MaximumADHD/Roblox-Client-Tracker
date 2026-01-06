local Root = script:FindFirstAncestor("Components").Parent
local Packages = Root.Parent
local InlineLayoutElements = script:FindFirstAncestor("InlineLayoutElements")

local Foundation = require(Packages.Foundation)
local Dash = require(Packages.Dash)

local RenderableInlineElement = require(InlineLayoutElements.RenderableInlineElement)
local Image = Foundation.Image

local ImageElement = {}

local function mapProps(props)
	return Dash.omit(props, { "id" })
end

function ImageElement.new(props: { [any]: any })
	return RenderableInlineElement.new(Image, props, mapProps)
end

return ImageElement
