local Root = script:FindFirstAncestor("Components").Parent
local Packages = script:FindFirstAncestor("Packages")

local React = require(Packages.React)
local Dash = require(Packages.Dash)
local Foundation = require(Packages.Foundation)

local joinTags = require(Root.Utils.JoinTags)

local View = Foundation.View
local Text = Foundation.Text
local Button = Foundation.Button
local Divider = Foundation.Divider

local Components = Root.Components
local Utils = Root.Utils

local InlineLayout = require(Components.InlineLayout)
type InlineElement = InlineLayout.InlineElement
local BaseTextElement = require(Components.InlineLayout.InlineLayoutElements.BaseTextElement)
local TextElement = require(Components.InlineLayout.TextElement)
local LinkElement = require(Components.InlineLayout.LinkElement)
local ImageElement = require(Components.InlineLayout.ImageElement)
local HardBreakElement = require(Components.InlineLayout.HardBreakElement)
local isInlineElement = require(Utils.IsInlineElement)

local BulletList = require(Components.BulletList)

local Types = require(Root.Types)
local Highlighter = require(Root.Utils.Highlighter)

local FFlagMarkdownCodeBackgroundStyles = require(Root.SharedFlags).get("FFlagMarkdownCodeBackgroundStyles")

local DEFAULT_TEXT_SIZE = 18
local DEFAULT_FONT = Enum.Font.BuilderSans
local DEFAULT_IMAGE_SIZE = UDim2.new(0, 16, 0, 16)
local DEFAULT_CODE_FONT = Enum.Font.Code

local function mergeContexts(baseContext: Types.Context, newContext: Types.PartialContext): Types.Context
	return Dash.joinDeep(baseContext, newContext)
end

local defaultLinkCallback: Types.LinkCallbackType = function(url: string)
	print(`[Defaullt link callback]: URL [{url}] is clicked`)
end

local function getCodeTextStyles(context: Types.Context): Types.TextStyles
	return Dash.joinDeep(context.textStyles, context.codeStyles)
end

--[[
	Replaces soft breaks with spaces and trims extra space symbols around them.
	Spacing symbols inside the string are preserved.
]]
function processSoftBreaks(text: string): string
	return (text:gsub("%s*[\r\n]%s*", " "))
end

local MarkdownRenderer = {
	renderers = {} :: Types.RenderersType,
}

local function getBaseTextElementTextStyle(props: Types.TextStyles?): BaseTextElement.BaseTextElementVariant?
	if not props then
		return nil
	end

	return {
		Bold = props.bold,
		Italic = props.italic,
		Strike = props.strike,
		Color = props.color,
		FontFace = props.fontFace,
	}
end

-- If an array of elements is returned they are rendered as siblings. Unless you override processChildren
local function render(node: Types.Node?, context: Types.Context): React.ReactElement? | { React.ReactElement }
	if not node then
		return nil
	end

	local renderer: Types.RendererFunction? = MarkdownRenderer.renderers[node.name]
	if not renderer then
		warn(`No renderer found for node: ${node.name}`)
		return nil
	end

	return renderer(node, context)
end

local function processChildren(children: { Types.Node }?, context: Types.Context): { React.ReactElement }
	if not children then
		return {}
	end

	local output = {}
	for _, child in children do
		local element = render(child, context)
		if element then
			if #element > 0 then
				for _, subElement in element do
					table.insert(output, subElement)
				end
			else
				table.insert(output, element)
			end
		end
	end
	return output
end

local function renderInline(nodes, context: Types.Context): React.ReactElement
	return React.createElement(InlineLayout, {
		Elements = Dash.filter(
			context.processChildren(nodes, mergeContexts(context, { isInline = true })),
			isInlineElement
		),
	})
end

local function renderRoot(node: Types.Node, context: Types.Context)
	return React.createElement(View, {
		tag = "size-full-0 auto-y col",
		BorderSizePixel = 0,
		backgroundStyle = {
			Transparency = 1,
		},
		-- TODO: Fix the type casting here
	}, context.processChildren(node.children, context) :: any)
end

local function renderHeading(node: Types.Node, context: Types.Context): React.ReactElement
	local depth = math.clamp(
		if node.attributes and type(node.attributes.depth) == "number" then node.attributes.depth else 1,
		1,
		#context.headerStyles
	)
	return React.createElement(View, {
		key = tostring(node.index),
		LayoutOrder = node.index,
		tag = "size-full-0 auto-y",
	}, {
		-- Header padding
		UIPadding = React.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 20),
		}),
		InlineLayout = renderInline(
			node.children,
			mergeContexts(context, { textStyles = context.headerStyles[depth] })
		),
	})
end

local function renderParagraph(node: Types.Node, context: Types.Context): React.ReactElement
	return React.createElement(View, {
		key = tostring(node.index),
		LayoutOrder = node.index,
		tag = "size-full-0 auto-y",
	}, {
		-- Paragraph padding
		UIPadding = React.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 10),
		}),
		InlineLayout = renderInline(node.children, context),
	})
end

local function renderCodeBlock(node: Types.Node, context: Types.Context): React.ReactElement
	local language = if node.attributes then node.attributes.language else nil
	local code = node.text
	local richTextCode = code

	if language == "lua" then
		richTextCode = Highlighter.highlight(code, context.colorScheme)
	end

	-- We use two labels, since selecting rich text stops richtext from rendering.
	-- We have a RichText label for viewing and a plain text label underneath for selection.
	local sharedLabelProps
	local mergedTextStyles: Types.TextStyles = getCodeTextStyles(context)
	sharedLabelProps = {
		TextWrapped = false,
		FontStyle = {
			TextSize = mergedTextStyles.textSize,
			Font = mergedTextStyles.font,
			FontFace = mergedTextStyles.fontFace,
		},
		TextXAlignment = Enum.TextXAlignment.Left,
		tag = "auto-xy padding-small align-y-top",
	}

	local highlightedLabelProps = {
		Text = richTextCode,
		textStyle = {
			Color3 = Highlighter.getTokenColor("iden"),
		},
		RichText = true,
		ZIndex = 1,
	}
	local selectableLabelProps = {
		Text = code,
		textStyle = {
			Color3 = Highlighter.getTokenColor("iden"),
			Transparency = 0.4, -- Reduces text artifacting while still showing the selection background
		},
		ZIndex = 0,
		TextSelectable = true,
	}

	local backgroundStyles = context.codeBackgroundStyles or {}
	local backgroundColor3 = if FFlagMarkdownCodeBackgroundStyles
		then backgroundStyles.backgroundColor3 or Highlighter.getTokenColor("background")
		else Highlighter.getTokenColor("background")
	local backgroundTransparency = if FFlagMarkdownCodeBackgroundStyles
		then backgroundStyles.backgroundTransparency or 0
		else 0

	return React.createElement(View, {
		key = tostring(node.index),
		LayoutOrder = node.index,
		tag = "size-full-0 auto-y",
		backgroundStyle = {
			Transparency = 1,
		},
		BorderSizePixel = 0,
	}, {
		UIPadding = React.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 10),
			PaddingBottom = UDim.new(0, 10),
		}),
		-- ScrollView from Foundation does not support automatic size, so we use ScrollingFrame instead
		CodeWrapper = React.createElement("ScrollingFrame", {
			BackgroundColor3 = backgroundColor3,
			BackgroundTransparency = backgroundTransparency,
			ScrollingDirection = Enum.ScrollingDirection.X,
			Size = UDim2.fromScale(1, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			AutomaticCanvasSize = Enum.AutomaticSize.X,
		}, {
			HighlightedCode = React.createElement(Text, Dash.join(sharedLabelProps, highlightedLabelProps)),
			SelectableCode = React.createElement(Text, Dash.join(sharedLabelProps, selectableLabelProps)),
		}),
	})
end

local function renderList(node: Types.Node, context: Types.Context): React.ReactElement
	local items: { React.ReactElement } = {}
	local sublist = nil
	for i = #node.children, 1, -1 do
		local child = node.children[i]
		if child.name == "LIST" then
			sublist = child
		else
			if sublist then
				table.insert(
					items,
					1,
					-- No need to key/LayoutOrder the items, since they are wrapped inside properly keyed component in the BulletList
					React.createElement(View, {
						tag = "size-full-0 auto-y col",
						BorderSizePixel = 0,
						backgroundStyle = {
							Transparency = 1,
						},
					}, {
						Item = render(Dash.join(child, { index = 1 }), context),
						List = render(Dash.join(sublist, { index = 2 }), context),
					})
				)
				sublist = nil
			else
				-- TODO: Fix the type casting here
				table.insert(items, 1, render(child, context) :: any)
			end
		end
	end

	return React.createElement(BulletList, {
		key = tostring(node.index),
		LayoutOrder = node.index,
		Items = items :: { any },
		TextWrapped = true,
		tag = "size-full-0 auto-y",
	}, {
		-- List padding
		UIPadding = React.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 30),
		}),
	})
end

local function renderListItem(node: Types.Node, context: Types.Context): React.ReactElement
	return React.createElement(View, {
		key = tostring(node.index),
		LayoutOrder = node.index,
		tag = "size-full-0 auto-y",
	}, {
		InlineLayout = renderInline(node.children, context),
	})
end

local function renderStyledText(node: Types.Node, context: Types.Context): { React.ReactElement }
	local style = if node.attributes and node.attributes.style then node.attributes.style else nil
	local styleProps = {}
	if style == "BOLD" or style == "BOLD_2" then
		styleProps.bold = true
	elseif style == "ITALIC" or style == "ITALIC_2" then
		styleProps.italic = true
	elseif style == "STRIKE" then
		styleProps.strike = true
	end
	return context.processChildren(node.children, mergeContexts(context, { textStyles = styleProps }))
end

local function renderText(node: Types.Node, context: Types.Context): InlineElement
	return TextElement.new({
		LayoutOrder = node.index,
		Text = processSoftBreaks(node.text :: string),
		TextVariant = getBaseTextElementTextStyle(context.textStyles),
		fontStyle = {
			FontFace = context.textStyles.fontFace,
			Font = context.textStyles.font,
			FontSize = context.textStyles.textSize,
		},
		textStyle = {
			Transparency = context.textStyles.transparency,
		},
	})
end

local function renderCodeSpan(node: Types.Node, context: Types.Context): InlineElement
	return renderText(node, mergeContexts(context, { textStyles = context.codeStyles }))
end

local function renderHardBreak(): InlineElement
	return HardBreakElement
end

local function renderLink(node: Types.Node, context: Types.Context): InlineElement
	local url = node.url
	return LinkElement.new({
		LayoutOrder = node.index,
		Text = processSoftBreaks(node.text :: string),
		TextVariant = getBaseTextElementTextStyle(context.textStyles),
		TextSize = context.textStyles.textSize,
		fontStyle = {
			Font = context.textStyles.font,
			FontSize = context.textStyles.textSize,
		},
		textStyle = {
			Transparency = context.textStyles.transparency,
		},
		onActivated = function()
			context.linkCallback(url)
		end,
	})
end

local function renderThematicBreak(node: Types.Node): React.ReactElement
	return React.createElement(Divider, { key = tostring(node.index), LayoutOrder = node.index })
end

local function renderBlockquote(node: Types.Node, context: Types.Context): React.ReactElement
	return React.createElement(View, {
		key = tostring(node.index),
		LayoutOrder = node.index,
		tag = "size-full-0 auto-y padding-small",
		backgroundStyle = {
			Transparency = 1,
		},
	}, {
		InlineLayoutWrapper = React.createElement(View, {
			backgroundStyle = {
				Transparency = 0.9,
				Color3 = Color3.fromRGB(163, 162, 165),
			},
			tag = "size-full-0 auto-y",
		}, {
			InlineLayout = renderInline(
				node.children,
				mergeContexts(context, { textStyles = { italic = true, transparency = 0.5 } })
			),
		}),
	})
end

local function renderImage(node: Types.Node, context: Types.Context): InlineElement
	return ImageElement.new({
		LayoutOrder = node.index,
		Image = node.url,
		Size = context.imageStyles.size,
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
end

local function renderTag(
	node: Types.Node,
	context: Types.Context
): (React.ReactElement | InlineElement | { React.ReactElement | InlineElement })?
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
		return React.createElement(Button, {
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
		return context.processChildren(node.children, mergeContexts(context, { textStyles = { color = color } }))
	else
		return nil
	end
end

MarkdownRenderer.defaultRenderers = {
	["ROOT"] = renderRoot,
	["HEADING"] = renderHeading,
	["PARAGRAPH"] = renderParagraph,
	["CODE_BLOCK"] = renderCodeBlock,
	["STYLED_TEXT"] = renderStyledText,
	["TEXT"] = renderText,
	["INLINE_CODE"] = renderCodeSpan,
	["LINK"] = renderLink,
	["LIST"] = renderList,
	["LIST_ITEM"] = renderListItem,
	["DIVIDER"] = renderThematicBreak,
	["DIVIDER_2"] = renderThematicBreak,
	["QUOTE"] = renderBlockquote,
	["IMAGE"] = renderImage,
	["TAG"] = renderTag,
	["BREAK"] = renderHardBreak,
}

export type Props = {
	userRenderers: Types.RenderersType,
	linkCallback: Types.LinkCallbackType?,
	markdownRendererProps: Types.MarkdownRendererPropsType?,
	colorScheme: Types.TokenColors?,
}

function MarkdownRenderer.render(node: Types.Node, props: Props): React.ReactElement?
	MarkdownRenderer.renderers = props.userRenderers

	local markdownRendererProps = table.clone(props.markdownRendererProps or {})

	local intitialContext: Types.Context = Dash.joinDeep({
		textStyles = {
			textSize = DEFAULT_TEXT_SIZE,
			font = DEFAULT_FONT,
		},
		codeStyles = {
			textSize = DEFAULT_TEXT_SIZE,
			font = DEFAULT_CODE_FONT,
		},
		headerStyles = {
			[1] = {
				textSize = DEFAULT_TEXT_SIZE * 3,
				font = DEFAULT_FONT,
			},
			[2] = {
				textSize = DEFAULT_TEXT_SIZE * 2.5,
				font = DEFAULT_FONT,
			},
			[3] = {
				textSize = DEFAULT_TEXT_SIZE * 2,
				font = DEFAULT_FONT,
			},
			[4] = {
				textSize = DEFAULT_TEXT_SIZE * 1.5,
				font = DEFAULT_FONT,
			},
		},
		imageStyles = {
			size = DEFAULT_IMAGE_SIZE,
		},
		isInline = false,
		linkCallback = props.linkCallback or defaultLinkCallback,
		colorScheme = props.colorScheme,
		processChildren = processChildren,
	}, markdownRendererProps)

	-- Freeze the intitialContext table to prevent accidental modification
	-- (Renderers that want to modify props passed to children should use mergeContext,
	-- so that they only impact descendants and not all subsequent renders)
	table.freeze(intitialContext)
	-- TODO: Fix the type casting here
	return render(node, intitialContext) :: any
end

return MarkdownRenderer
