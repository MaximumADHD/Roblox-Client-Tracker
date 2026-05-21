local InlineLayout = script:FindFirstAncestor("InlineLayout")
local Packages = script:FindFirstAncestor("Packages")

local Foundation = require(Packages.Foundation)
local Dash = require(Packages.Dash)

local RenderableInlineElement = require(InlineLayout.InlineLayoutElements.RenderableInlineElement)
local Image = Foundation.Image

local ImageElement = {}

local function mapProps(props)
	return Dash.omit(props, { "id" })
end

function ImageElement.new(props: { [any]: any })
	return RenderableInlineElement.new(Image, props, mapProps)
end

return ImageElement
