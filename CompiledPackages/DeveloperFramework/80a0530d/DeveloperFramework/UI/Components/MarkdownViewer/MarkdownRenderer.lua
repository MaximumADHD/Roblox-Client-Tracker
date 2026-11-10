local Framework = script:FindFirstAncestor("UI").Parent
local React = require(Framework.Util.React)
local Dash = require(Framework.Parent.Dash)

local StudioService = game:GetService("StudioService")

local joinTags = require(Framework.Styling.joinTags)

local Components = Framework.UI.Components
local Pane = require(Components.Pane)
local InlineLayout = require(Components.InlineLayout)
type InlineElement = InlineLayout.InlineElement
local BaseTextElement = require(Components.InlineLayout.BaseTextElement)
local TextElement = require(Components.InlineLayout.TextElement)
local LinkElement = require(Components.InlineLayout.LinkElement)
local ImageElement = require(Components.InlineLayout.ImageElement)
local HardBreakElement = require(Components.InlineLayout.HardBreakElement)
local isInlineElement = require(Components.InlineLayout.isInlineElement)
local TextLabel = require(Components.TextLabel)
local BulletList = require(Components.BulletList)
local Separator = require(Components.Separator)
local ScrollingFrame = require(Components.ScrollingFrame)
local IconButton = require(Components.IconButton)

local Types = require(Framework.Util.Markdown.Types)
local Highlighter = require(Framework.Util.Highlighter)
local HighlighterTypes = require(Framework.Util.Highlighter.Types)

local DEFAULT_TEXT_SIZE = 18
local DEFAULT_FONT = Enum.Font.SourceSans
local DEFAULT_IMAGE_SIZE = UDim2.new(0, 16, 0, 16)
local DEFAULT_CODE_FONT = Enum.Font.Code

export type LinkCallbackType = (string) -> ()

type TextStyles_Internal = {
	bold: boolean?,
	italic: boolean?,
	strike: boolean?,
	selectable: boolean?,
}
type TextStyles_Public = {
	font: Enum.Font?,
	fontFace: Font?,
	textSize: number?,
	transparency: number?,
	color: string?,
}
type TextStyles = TextStyles_Internal & TextStyles_Public

type ImageStyles = {
	size: UDim2?,
	transparency: number?,
	backgroundColor3: Color3?,
	backgroundTransparency: number?,
	scaleType: Enum.ScaleType?,
	resampleMode: Enum.ResamplerMode?,
	tags: string?,
}

type GuiObjectStyles = {
	backgroundColor3: Color3?,
	backgroundTransparency: number?,
}

type CodeSettings = {
	showLineNumbers: boolean?,
	showCopyButton: boolean?,
}

export type MarkdownRendererPropsType = {
	textStyles: TextStyles_Public?,
	codeStyles: TextStyles_Public?,
	codeBackgroundStyles: GuiObjectStyles?,
	codeSettings: CodeSettings?,
	headerStyles: { TextStyles_Public }?,
	imageStyles: ImageStyles?,
	imageSize: UDim2?, -- Deprecated, use imageStyles.size
}

export type Context = {
	textStyles: TextStyles,
	codeStyles: TextStyles,
	codeBackgroundStyles: GuiObjectStyles?,
	codeSettings: CodeSettings?,
	headerStyles: { TextStyles },
	imageStyles: ImageStyles,
	isInline: boolean,
	linkCallback: LinkCallbackType,
	colorScheme: HighlighterTypes.TokenColors?,
	processChildren: (children: { Types.Node }?, context: Context) -> { React.ReactElement },
}

-- Hack to have nicer types on mergeContexts. There is a hope user defined type functions will allow to ditch this.
type PartialContext = {
	textStyles: TextStyles?,
	codeStyles: TextStyles?,
	codeBackgroundStyles: GuiObjectStyles?,
	headerStyles: { TextStyles }?,
	codeSettings: CodeSettings?,
	imageStyles: ImageStyles?,
	isInline: boolean?,
	linkCallback: LinkCallbackType?,
	colorScheme: HighlighterTypes.TokenColors?,
	processChildren: ((children: { Types.Node }?, context: Context) -> { React.ReactElement })?,
}

export type RendererFunction = (Types.Node, context: Context) -> nil | React.ReactElement | InlineElement

export type RenderersType = {
	["ROOT"]: RendererFunction,
	["HEADING"]: RendererFunction,
	["PARAGRAPH"]: RendererFunction,
	["CODE_BLOCK"]: RendererFunction,
	["STYLED_TEXT"]: RendererFunction,
	["TEXT"]: RendererFunction,
	["LINK"]: RendererFunction,
	["LIST"]: RendererFunction,
	["LIST_ITEM"]: RendererFunction,
	["DIVIDER"]: RendererFunction,
	["QUOTE"]: RendererFunction,
	["IMAGE"]: RendererFunction,
	["TAG"]: RendererFunction,
	["BREAK"]: RendererFunction,
	["LINE_BREAK"]: RendererFunction,
}

local function mergeContexts(baseContext: Context, newContext: PartialContext): Context
	return Dash.joinDeep(baseContext, newContext)
end

local defaultLinkCallback: LinkCallbackType = function(url: string)
	print(`[Defaullt link callback]: URL [{url}] is clicked`)
end

local function getCodeTextStyles(context: Context): TextStyles
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
	renderers = {} :: RenderersType,
}

local function getBaseTextElementTextStyle(props: TextStyles?): BaseTextElement.BaseTextElementTextStyle?
	if props then
		return {
			Bold = props.bold,
			Italic = props.italic,
			Strike = props.strike,
			Color = props.color,
			FontFace = props.fontFace,
		}
	else
		return nil
	end
end

-- If an array of elements is returned they are rendered as siblings. Unless you override processChildren
local function render(node: Types.Node?, context: Context): React.ReactElement? | { React.ReactElement }
	if not node then
		return nil
	end

	local renderer: RendererFunction? = MarkdownRenderer.renderers[node.name]
	if not renderer then
		warn(`No renderer found for node: ${node.name}`)
		return nil
	end

	return renderer(node, context)
end

local function processChildren(children: { Types.Node }?, context: Context): { React.ReactElement }
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

local function renderInline(nodes, context: Context, overrideTags: string?): Context
	return React.createElement(InlineLayout, {
		Elements = Dash.filter(
			context.processChildren(nodes, mergeContexts(context, { isInline = true })),
			isInlineElement
		),
		OverrideTags = overrideTags,
	})
end

local function renderRoot(node: Types.Node, context: Context): React.ReactElement
	return React.createElement(Pane, {
		[React.Tag] = "X-FitY X-Column X-Transparent",
	}, context.processChildren(node.children, context))
end

local function renderHeading(node: Types.Node, context: Context): React.ReactElement
	local depth = math.clamp(
		if node.attributes and type(node.attributes.depth) == "number" then node.attributes.depth else 1,
		1,
		#context.headerStyles
	)
	return React.createElement(Pane, {
		key = tostring(node.index),
		LayoutOrder = node.index,
		[React.Tag] = "X-FitY Header",
	}, {
		InlineLayout = renderInline(
			node.children,
			mergeContexts(context, { textStyles = context.headerStyles[depth] })
		),
	})
end

local function renderParagraph(node: Types.Node, context: Context): React.ReactElement
	return React.createElement(Pane, {
		key = tostring(node.index),
		LayoutOrder = node.index,
		[React.Tag] = "X-FitY Paragraph",
	}, {
		InlineLayout = renderInline(node.children, context),
	})
end

local function renderCodeBlock(node: Types.Node, context: Context): React.ReactElement
	local language = if node.attributes then node.attributes.language else nil
	local code = node.text
	local richTextCode = code

	if language == "lua" then
		richTextCode = Highlighter.highlight(code, context.colorScheme)
	end

	-- We use two labels, since selecting rich text stops richtext from rendering.
	-- We have a RichText label for viewing and a plain text label underneath for selection.
	local mergedTextStyles: TextStyles = getCodeTextStyles(context)
	local sharedLabelProps = {
		TextWrapped = false,
		TextSize = mergedTextStyles.textSize,
		Font = mergedTextStyles.font,
		FontFace = mergedTextStyles.fontFace,
		[React.Tag] = "X-Fit X-Top X-Pad Left",
	}

	local highlightedLabelProps = {
		Text = richTextCode,
		TextColor = Highlighter.getTokenColor("iden"),
		RichText = true,
		ZIndex = 1,
	}
	local selectableLabelProps = {
		Text = code,
		TextColor = Highlighter.getTokenColor("background"),
		TextTransparency = 0.4, -- Reduces text artifacting while still showing the selection background
		ZIndex = 0,
		TextSelectable = true,
	}

	local backgroundStyles = context.codeBackgroundStyles or {}
	local backgroundColor3 = backgroundStyles.backgroundColor3 or Highlighter.getTokenColor("background")
	local backgroundTransparency = backgroundStyles.backgroundTransparency or 0

	-- We cannot memoize this because as MD content changes,
	-- this codeblock may not be in the rerender, leading to
	-- "Error: Rendered fewer hooks than expected."
	local lineNumbersString = nil
	if context.codeSettings and context.codeSettings.showLineNumbers then
		local codeLength = #code
		local lineNumbers, lineIndex = {}, 1
		local cursor = 0
		while cursor <= codeLength do
			local nextLine = string.find(code, "\n", cursor, true)
			if not nextLine then
				break
			end
			lineNumbers[lineIndex] = tostring(lineIndex)
			lineIndex += 1
			cursor = nextLine + 1
		end
		-- Add the last line
		lineNumbers[lineIndex] = tostring(lineIndex)
		lineNumbersString = table.concat(lineNumbers, "\n")
	end

	return React.createElement("Frame", {
		key = tostring(node.index),
		LayoutOrder = node.index,
		[React.Tag] = "X-FitY X-Transparent X-Column CodeBlock",
	}, {
		Titlebar = if context.codeSettings and context.codeSettings.showCopyButton
			then React.createElement(Pane, {
				LayoutOrder = 1,
				[React.Tag] = "X-FitY Contrast X-Corner",
			}, {
				CopyToClipboardButton = React.createElement("TextButton", {
					AnchorPoint = Vector2.new(1, 0),
					Position = UDim2.new(1, -2, 0, 2),
					[React.Event.Activated] = function()
						pcall(StudioService.CopyToClipboard, StudioService, code)
					end,
					[React.Tag] = "CopyButton",
				}, {
					Icon = React.createElement("ImageLabel", {
						[React.Tag] = "CopyIcon",
					}),
				}),
			})
			else nil,

		CodeWrapper = React.createElement("Frame", {
			LayoutOrder = 2,
			[React.Tag] = "X-FitY X-Row X-Transparent",
		}, {
			LineNumbers = if context.codeSettings and context.codeSettings.showLineNumbers
				then React.createElement(TextLabel, {
					Text = lineNumbersString,
					TextSize = sharedLabelProps.TextSize,
					Font = sharedLabelProps.Font,
					FontFace = sharedLabelProps.FontFace,
					LayoutOrder = 1,
					[React.Tag] = "X-Pad LineNumbers",
				})
				else nil,
			ScrollFrame = React.createElement(ScrollingFrame, {
				LayoutOrder = 2,
				Size = UDim2.new(1, -sharedLabelProps.TextSize, 0, 0),
				BackgroundColor3 = backgroundColor3,
				BackgroundTransparency = backgroundTransparency,
				ScrollingDirection = Enum.ScrollingDirection.X,
				AutomaticCanvasSize = Enum.AutomaticSize.X,
				[React.Tag] = "X-FitY CodeScroller",
			}, {
				HighlightedCode = React.createElement(TextLabel, Dash.join(sharedLabelProps, highlightedLabelProps)),
				SelectableCode = React.createElement(TextLabel, Dash.join(sharedLabelProps, selectableLabelProps)),
			}),
		}),
	})
end

local function renderList(node: Types.Node, context: Context): React.ReactElement
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
					React.createElement("Frame", {
						[React.Tag] = "X-FitY X-Column X-Transparent",
					}, {
						Item = render(Dash.join(child, { index = 1 }), context),
						List = render(Dash.join(sublist, { index = 2 }), context),
					})
				)
				sublist = nil
			else
				table.insert(items, 1, render(child, context))
			end
		end
	end

	return React.createElement(BulletList, {
		key = tostring(node.index),
		LayoutOrder = node.index,
		Items = items,
		TextWrapped = true,
		[React.Tag] = "X-FitY",
	})
end

local function renderListItem(node: Types.Node, context: Context): React.ReactElement
	return React.createElement(Pane, {
		key = tostring(node.index),
		LayoutOrder = node.index,
		[React.Tag] = "X-FitY",
	}, {
		InlineLayout = renderInline(node.children, context, "X-FitY X-Column"),
	})
end

local function renderStyledText(node: Types.Node, context: Context): { React.ReactElement }
	local style = if node.attributes and node.attributes.style then node.attributes.style else nil
	local styleProps = {}
	if style == "BOLD" or style == "BOLD_2" then
		styleProps.bold = true
	elseif style == "ITALIC" or style == "ITALIC_2" then
		styleProps.italic = true
	elseif style == "STRIKE" then
		styleProps.strike = true
	elseif style == "INLINE_CODE" then
		styleProps = Dash.joinDeep(context.codeStyles, { selectable = true })
	end
	return context.processChildren(node.children, mergeContexts(context, { textStyles = styleProps }))
end

local function renderText(node: Types.Node, context: Context): InlineElement
	return TextElement.new({
		LayoutOrder = node.index,
		Text = processSoftBreaks(node.text :: string),
		TextStyle = getBaseTextElementTextStyle(context.textStyles),
		Font = context.textStyles.font,
		FontFace = context.textStyles.fontFace,
		TextSize = context.textStyles.textSize,
		TextTransparency = context.textStyles.transparency,
		TextSelectable = context.textStyles.selectable,
	})
end

local function renderHardBreak(): any
	return HardBreakElement
end

local function renderLink(node: Types.Node, context: Context): InlineElement
	local url = (node.attributes and node.attributes.url or node.url or "") :: string
	return LinkElement.new({
		LayoutOrder = node.index,
		Text = processSoftBreaks(node.text :: string),
		TextStyle = getBaseTextElementTextStyle(context.textStyles),
		Font = context.textStyles.font,
		TextSize = context.textStyles.textSize,
		TextTransparency = context.textStyles.transparency,
		OnClick = function()
			context.linkCallback(url)
		end,
	})
end

local function renderThematicBreak(node: Types.Node): React.ReactElement
	return React.createElement(Separator, {
		key = tostring(node.index),
		LayoutOrder = node.index,
		[React.Tag] = "HorizontalRule",
	})
end

local function renderBlockquote(node: Types.Node, context: Context): React.ReactElement
	return React.createElement(Pane, {
		key = tostring(node.index),
		LayoutOrder = node.index,
		[React.Tag] = "X-FitY X-Pad X-Transparent",
	}, {
		InlineLayoutWrapper = React.createElement(Pane, {
			BackgroundTransparency = 0.9,
			[React.Tag] = "X-FitY",
		}, {
			InlineLayout = renderInline(
				node.children,
				mergeContexts(context, { textStyles = { italic = true, transparency = 0.5 } })
			),
		}),
	})
end

local function renderImage(node: Types.Node, context: Context): InlineElement
	local url = (node.attributes and node.attributes.url or node.url or nil) :: string?
	return ImageElement.new({
		LayoutOrder = node.index,
		Image = url,
		Size = context.imageStyles.size,
		BackgroundColor3 = context.imageStyles.backgroundColor3,
		BackgroundTransparency = context.imageStyles.backgroundTransparency,
		ImageTransparency = context.imageStyles.transparency,
		ScaleType = context.imageStyles.scaleType,
		ResampleMode = context.imageStyles.resampleMode,
		[React.Tag] = context.imageStyles.tags,
	})
end

local function renderTag(
	node: Types.Node,
	context: Context
): (React.ReactElement | InlineElement | { React.ReactElement })?
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
				BackgroundColor3 = context.imageStyles.backgroundColor3,
				BackgroundTransparency = context.imageStyles.backgroundTransparency,
				ImageTransparency = context.imageStyles.transparency,
				ScaleType = context.imageStyles.scaleType,
				ResampleMode = context.imageStyles.resampleMode,
				[React.Tag] = context.imageStyles.tags,
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
		return React.createElement(IconButton, {
			key = tostring(node.index),
			LayoutOrder = node.index,
			Text = node.attributes.text,
			LeftIcon = node.attributes.leftIcon,
			RightIcon = node.attributes.rightIcon,
			OnClick = function()
				context.linkCallback(node.attributes.url :: string)
			end,
			[React.Tag] = "X-Fit Primary",
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
	["LINK"] = renderLink,
	["LIST"] = renderList,
	["LIST_ITEM"] = renderListItem,
	["DIVIDER"] = renderThematicBreak,
	["QUOTE"] = renderBlockquote,
	["IMAGE"] = renderImage,
	["TAG"] = renderTag,
	["BREAK"] = renderHardBreak,
	["LINE_BREAK"] = renderHardBreak,
}

export type Props = {
	userRenderers: RenderersType,
	linkCallback: LinkCallbackType?,
	markdownRendererProps: MarkdownRendererPropsType?,
	colorScheme: HighlighterTypes.TokenColors?,
}

function MarkdownRenderer.render(node: Types.Node, props: Props): React.ReactElement?
	MarkdownRenderer.renderers = props.userRenderers

	local markdownRendererProps = table.clone(props.markdownRendererProps or {})
	-- Move legacy imageSize prop to imageStyles
	if markdownRendererProps.imageSize then
		markdownRendererProps.imageStyles =
			Dash.joinDeep(markdownRendererProps.imageStyles or {}, { size = markdownRendererProps.imageSize })
		markdownRendererProps.imageSize = nil
	end

	local intitialContext = Dash.joinDeep({
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

	return render(node, intitialContext)
end

return MarkdownRenderer
