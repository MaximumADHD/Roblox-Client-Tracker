local Root = script:FindFirstAncestor("Markdown")
local Packages = Root.Parent
local Types = require(Root.Types)
local React = require(Packages.React)
local Foundation = require(Packages.Foundation)

local InlineLayout = require(Packages.InlineLayout)
local ImageElement = InlineLayout.Components.InlineLayoutElements.ImageElement
local joinTags = require(Root.Utils.joinTags)
local mergeContexts = require(Root.Utils.mergeContexts)

local function renderTag(
	node: Types.Node,
	context: Types.Context
): (
	React.ReactElement | InlineLayout.InlineElement | { React.ReactElement | InlineLayout.InlineElement }
)?
	if node.text == "img" then
		local imageSize = context.imageStyles.size
		local width = if node.attributes and node.attributes.width
			then node.attributes.width
			else imageSize.Width.Offset
		local height = if node.attributes and node.attributes.height
			then node.attributes.height
			else imageSize.Height.Offset

		if context.isInline then
			return ImageElement.new({
				LayoutOrder = node.index,
				Image = if node.attributes and node.attributes.src then node.attributes.src else "",
				Size = UDim2.fromOffset(width, height),
				backgroundStyle = {
					Transparency = context.imageStyles.backgroundTransparency,
					Color3 = context.imageStyles.backgroundColor3,
				},
				imageStyle = {
					Transparency = context.imageStyles.transparency,
				},
				ScaleType = context.imageStyles.scaleType,
				ResampleMode = context.imageStyles.resampleMode,
				tag = context.imageStyles.tags,
			})
		else
			return React.createElement("ImageLabel", {
				key = tostring(node.index),
				LayoutOrder = node.index,
				Image = if node.attributes and node.attributes.src then node.attributes.src else "",
				Size = UDim2.fromOffset(width, height),
				BackgroundColor3 = context.imageStyles.backgroundColor3,
				BackgroundTransparency = context.imageStyles.backgroundTransparency,
				ImageTransparency = context.imageStyles.transparency,
				ScaleType = context.imageStyles.scaleType,
				ResampleMode = context.imageStyles.resampleMode,
				-- Does vertical alignment have any meaning in block context? Not sure we render images inside list layout.
				[React.Tag] = joinTags("X-PadS X-Middle", context.imageStyles.tags),
			})
		end
	elseif node.text == "Button" then
		if not node.attributes or not node.attributes.text or not node.attributes.url then
			warn("Button tag misses required text and url attributes")
			return nil
		end
		return React.createElement(Foundation.Button, {
			key = tostring(node.index),
			LayoutOrder = node.index,
			text = node.attributes.text,
			icon = node.attributes.icon,
			onActivated = function()
				context.linkCallback(node.attributes.url :: string)
			end,
			tag = "auto-xy",
		})
	elseif node.text == "font" then
		local color = if node.attributes and node.attributes.color then node.attributes.color else nil
		return context.processChildren(node, mergeContexts(context, { textStyles = { color = color } }))
	else
		return nil
	end
end

return renderTag
