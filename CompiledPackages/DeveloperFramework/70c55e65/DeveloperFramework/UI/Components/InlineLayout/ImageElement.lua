local Framework = script:FindFirstAncestor("UI").Parent

local Dash = require(Framework.Parent.Dash)

local RenderableInlineElement = require(Framework.UI.Components.InlineLayout.RenderableInlineElement)
local Image = require(Framework.UI.Components.Image)

local ImageElement = {}

local function mapProps(props)
	return Dash.omit(props, { "id" })
end

function ImageElement.new(props: { [any]: any })
	return RenderableInlineElement.new(Image, props, mapProps)
end

return ImageElement
