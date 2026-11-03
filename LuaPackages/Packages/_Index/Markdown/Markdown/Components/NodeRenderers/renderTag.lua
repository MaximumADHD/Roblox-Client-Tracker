local Root = script:FindFirstAncestor("Markdown")
local Packages = Root.Parent
local Types = require(Root.Types)
local React = require(Packages.React)
local Foundation = require(Packages.Foundation)
local Dash = require(Packages.Dash)
local Flags = require(Packages.MarkdownCore).Flags

local InlineLayout = require(Packages.InlineLayout)
local ImageElement = InlineLayout.Components.InlineLayoutElements.ImageElement
local joinTags = require(Root.Utils.joinTags)
local mergeContexts = require(Root.Utils.mergeContexts)
local NodeType = require(Root.Enums.NodeType)

local function bold()
	return {
		bold = true,
	}
end

local function italic()
	return {
		italic = true,
	}
end

local function strike()
	return {
		strike = true,
	}
end

local function code(context: Types.Context)
	return Dash.joinDeep(context.codeStyles, {
		selectable = true,
	})
end

local HTML_TEXT_STYLES: { [string]: (context: Types.Context) -> any } = {
	b = bold,
	strong = bold,
	i = italic,
	em = italic,
	s = strike,
	del = strike,
	strike = strike,
	code = code,
	kbd = code,
}

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
	elseif Flags.FFlagMarkdownTagFallbacks then
		local href = node.attributes and node.attributes.href

		if node.text == "a" and href and context.renderers and context.renderers.LINK then
			return context.renderers.LINK(
				Dash.join(node, {
					attributes = Dash.join(node.attributes, {
						url = href,
					}),
				}),
				context
			)
		elseif node.type == NodeType.InlineSpan then
			local getTextStyles = HTML_TEXT_STYLES[node.text :: string]
			local textStyles = if getTextStyles then getTextStyles(context) else {}

			return context.processChildren(
				node,
				mergeContexts(context, {
					textStyles = textStyles,
				})
			)
		end

		return React.createElement(Foundation.View, {
			key = tostring(node.index),
			tag = "size-full-0 auto-y col",
			LayoutOrder = node.index,
		}, context.processChildren(node, context) :: any)
	else
		return nil
	end
end

return renderTag
