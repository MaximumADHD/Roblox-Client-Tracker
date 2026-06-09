local MessageBusService = game:GetService("MessageBusService")

local Root = script:FindFirstAncestor("Components").Parent
local Packages = Root.Parent

local React = require(Packages.React)
local Dash = require(Packages.Dash)
local Foundation = require(Packages.Foundation)
local InlineLayout = require(Packages.InlineLayout)
local MarkdownCore = require(Packages.MarkdownCore)

local View = Foundation.View
local Text = Foundation.Text
local Divider = Foundation.Divider

local Utils = Root.Utils

type InlineElement = InlineLayout.InlineElement
local TextElement = InlineLayout.Components.InlineLayoutElements.TextElement
local SelectableTextElement = InlineLayout.Components.InlineLayoutElements.SelectableTextElement
local LinkElement = InlineLayout.Components.InlineLayoutElements.LinkElement
local ImageElement = InlineLayout.Components.InlineLayoutElements.ImageElement
local HardBreakElement = InlineLayout.Components.InlineLayoutElements.HardBreakElement
local mergeContexts = require(Utils.mergeContexts)
local processSoftBreaks = require(Utils.processSoftBreaks)
local getCodeTextStyles = require(Utils.TextStyle).getCodeTextStyles
local getBaseTextElementEngineTags = require(Utils.TextStyle).getBaseTextElementEngineTags
local renderInline = require(script.Parent.Parent.NodeRenderers.renderInline)
local renderTag = require(script.Parent.Parent.NodeRenderers.renderTag)
local BulletList = MarkdownCore.Components.BulletList

local Types = require(Root.Types)
local Highlighter = MarkdownCore.Utils.Highlighter
local getNodeTypeConfig = require(Root.Utils.getNodeTypeConfig)
local isInlineElement = InlineLayout.Utils.isInlineElement

local DEFAULT_TEXT_SIZE = 18
local DEFAULT_FONT = Enum.Font.BuilderSans
local DEFAULT_IMAGE_SIZE = UDim2.new(0, 16, 0, 16)
local DEFAULT_CODE_FONT = Enum.Font.Code
local DEFAULT_CODE_LINE_HEIGHT = 1.111

local defaultLinkCallback: Types.LinkCallbackType = function(url: string)
	print(`[Default link callback]: URL [{url}] is clicked`)
end

local MarkdownRenderer = {
	renderers = {} :: Types.RenderersType,
}

local function getFontFace(styles: Types.TextStyles, defaultFont: Enum.Font): Font
	if styles.fontFace then
		return styles.fontFace
	elseif styles.font then
		return Font.fromEnum(styles.font)
	end
	return Font.fromEnum(defaultFont)
end

local function shouldUseTopPadding(node: Types.Node)
	return node.offset ~= 0
end

-- If an array of elements is returned they are rendered as siblings. Unless you override processChildren
local function render(node: Types.Node?, context: Types.Context): Types.RenderResult
	if not node then
		return nil
	end

	local renderer: Types.RendererFunction? = MarkdownRenderer.renderers[node.name]
	if not renderer then
		warn(`No renderer found for node: {node.name}`)
		return nil
	end

	local result = renderer(node, context)
	local nodeTypeConfig = getNodeTypeConfig(node)
	if nodeTypeConfig and not nodeTypeConfig.validateRenderResult(result) then
		warn(`Invalid render result for node: {node.name} {node.text} of type: {node.type}`)
	end

	return result
end

local function processChildren(node: Types.Node, context: Types.Context): { React.ReactElement } | { InlineElement }
	local children = node.children
	if not children then
		return {}
	end

	local nodeTypeConfig = getNodeTypeConfig(node)
	local validChildTypes = nodeTypeConfig and nodeTypeConfig.children or {}

	local output = {}
	for _, child in children do
		local childNodeType = child.type
		if not validChildTypes[childNodeType] then
			warn(
				`Invalid child node type. Parent node: {node.name} {node.text} of type: {node.type} has invalid child node: {child.name} {child.text} of type: {childNodeType}`
			)
		end

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

local function renderRoot(node: Types.Node, context: Types.Context)
	return React.createElement(View, {
		tag = "size-full-0 auto-y col",
		BorderSizePixel = 0,
		backgroundStyle = {
			Transparency = 1,
		},
		-- TODO: Fix the type casting here
	}, context.processChildren(node, context) :: any)
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
		UIPadding = shouldUseTopPadding(node) and React.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 20),
		}),
		InlineLayout = renderInline(node, mergeContexts(context, { textStyles = context.headerStyles[depth] })),
	})
end

local function renderParagraph(node: Types.Node, context: Types.Context): React.ReactElement
	return React.createElement(View, {
		key = tostring(node.index),
		LayoutOrder = node.index,
		tag = "size-full-0 auto-y",
	}, {
		-- Paragraph padding
		UIPadding = shouldUseTopPadding(node) and React.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 10),
		}),
		InlineLayout = renderInline(node, context),
	})
end

local function computeLineNumbers(code: string): string
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
	return table.concat(lineNumbers, "\n")
end

-- Standalone clipboard copy using MessageBusService
local function copyToClipboard(text)
	pcall(function()
		local messageId = MessageBusService:GetMessageId("ExternalContentSharing", "setClipboardText")

		return MessageBusService:Publish(messageId, {
			text = text,
		})
	end)
end
local getMemoizedCopyToClipboard = Dash.memoize(function(text)
	return function()
		copyToClipboard(text)
	end
end)

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
	local mergedTextStyles: Types.CodeStyles = getCodeTextStyles(context)
	local codePaddingTag = "padding-small"
	sharedLabelProps = {
		TextWrapped = false,
		fontStyle = {
			FontSize = mergedTextStyles.textSize,
			Font = getFontFace(mergedTextStyles, DEFAULT_CODE_FONT),
			LineHeight = mergedTextStyles.lineHeight,
		},
		TextXAlignment = Enum.TextXAlignment.Left,
		tag = `auto-xy {codePaddingTag} align-y-top`,
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
	local backgroundColor3 = backgroundStyles.backgroundColor3 or Highlighter.getTokenColor("background")
	local backgroundTransparency = backgroundStyles.backgroundTransparency or 0

	local lineNumbersString = nil
	local shouldShowLineNumbers = context.codeSettings and context.codeSettings.showLineNumbers
	if shouldShowLineNumbers then
		lineNumbersString = computeLineNumbers(code)
	end

	local shouldShowCopyButton = context.codeSettings and context.codeSettings.showCopyButton

	return React.createElement(View, {
		key = tostring(node.index),
		LayoutOrder = node.index,
		tag = "size-full-0 auto-y col",
		backgroundStyle = {
			Transparency = 1,
		},
		BorderSizePixel = 0,
	}, {
		UIPadding = React.createElement("UIPadding", {
			PaddingTop = if shouldUseTopPadding(node) then UDim.new(0, 10) else nil,
			PaddingBottom = UDim.new(0, 10),
		}),
		TitleBar = if shouldShowCopyButton
			then React.createElement(Foundation.View, {
				tag = "size-full-0 auto-y row align-x-right bg-shift-300 radius-small",
				LayoutOrder = 1,
			}, {
				CopyToClipboardButton = React.createElement(Foundation.IconButton, {
					size = Foundation.Enums.InputSize.Small,
					icon = {
						name = Foundation.Enums.IconName.TwoStackedSquares,
					},
					onActivated = getMemoizedCopyToClipboard(code),
				}),
			})
			else nil,
		CodeWrapper = React.createElement(Foundation.View, {
			LayoutOrder = 2,
			tag = {
				["size-full-0 auto-y"] = true,
				["row align-y-center"] = shouldShowLineNumbers,
			},
		}, {
			LineNumbers = if shouldShowLineNumbers
				then React.createElement(Foundation.Text, {
					Text = lineNumbersString,
					fontStyle = sharedLabelProps.fontStyle,
					LayoutOrder = 1,
					tag = `size-0-0 auto-xy text-align-x-right text-align-y-center {codePaddingTag} bg-shift-100 content-emphasis`,
				})
				else nil,
			-- ScrollingFrame does not seem to play well with automatic size and flex. Wrapping it in a view seems to fix it.
			ScrollFrameWrapper = React.createElement(Foundation.View, {
				tag = "size-full-0 auto-y fill",
				Size = UDim2.fromScale(1, 0),
				LayoutOrder = 2,
			}, {
				-- ScrollView from Foundation does not support automatic size, so we use ScrollingFrame instead
				ScrollFrame = React.createElement("ScrollingFrame", {
					BackgroundColor3 = backgroundColor3,
					BackgroundTransparency = backgroundTransparency,
					BorderSizePixel = 0,
					ScrollingDirection = Enum.ScrollingDirection.X,
					Size = UDim2.fromScale(1, 0),
					AutomaticSize = Enum.AutomaticSize.Y,
					AutomaticCanvasSize = Enum.AutomaticSize.X,
				}, {
					HighlightedCode = React.createElement(Text, Dash.join(sharedLabelProps, highlightedLabelProps)),
					SelectableCodeWrapper = React.createElement(Foundation.View, {
						tag = sharedLabelProps.tag,
					}, {
						SelectableCode = React.createElement("TextBox", {
							Text = selectableLabelProps.Text,
							FontFace = sharedLabelProps.fontStyle.Font,
							TextSize = sharedLabelProps.fontStyle.FontSize,
							TextColor3 = selectableLabelProps.textStyle.Color3,
							TextTransparency = selectableLabelProps.textStyle.Transparency,
							BackgroundTransparency = 1,
							TextXAlignment = Enum.TextXAlignment.Left,
							TextYAlignment = Enum.TextYAlignment.Center,
							TextEditable = false,
							ZIndex = selectableLabelProps.ZIndex,
							Size = UDim2.fromScale(0, 0),
							AutomaticSize = Enum.AutomaticSize.XY,
							TextWrapped = false,
							ClearTextOnFocus = false,
							LineHeight = context.codeStyles.lineHeight,
						}),
					}),
				}),
			}),
		}),
	})
end

local function renderList(node: Types.Node, context: Types.Context): React.ReactElement
	local items: {
		{
			Prefix: string?,
			Item: React.ReactElement,
		}
	} = {}

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
					{
						Prefix = if child.attributes then child.attributes.prefix else nil,
						Item = React.createElement(View, {
							tag = "size-full-0 auto-y col",
							BorderSizePixel = 0,
							backgroundStyle = {
								Transparency = 1,
							},
						}, {
							Item = render(Dash.join(child, { index = 1 }), context),
							List = render(Dash.join(sublist, { index = 2 }), context),
						}),
					}
				)
				sublist = nil
			else
				table.insert(items, 1, {
					Prefix = if child.attributes then child.attributes.prefix else nil,
					Item = render(child, context),
				})
			end
		end
	end

	return React.createElement(BulletList, {
		key = tostring(node.index),
		LayoutOrder = node.index,
		-- TODO: Fix the type casting here
		Items = items :: { any },
		TextWrapped = true,
		ListStyle = {
			Font = getFontFace(context.textStyles, DEFAULT_FONT),
			TextColor = if typeof(context.textStyles.color) == "string"
				then Color3.fromHex(context.textStyles.color)
				else context.textStyles.color,
			TextSize = context.textStyles.textSize,
			LineHeight = context.textStyles.textSize,
		},
		tag = "size-full-0 auto-y",
	}, {
		-- List padding
		UIPadding = shouldUseTopPadding(node) and React.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 10),
		}),
	})
end

local function renderListItem(node: Types.Node, context: Types.Context): React.ReactElement
	return React.createElement(View, {
		key = tostring(node.index),
		LayoutOrder = node.index,
		tag = "size-full-0 auto-y",
	}, {
		InlineLayout = renderInline(node, context),
	})
end

local function renderStyledText(node: Types.Node, context: Types.Context): { InlineElement }
	local style = if node.attributes and node.attributes.style then node.attributes.style else nil
	local styleProps = {}
	if style == "BOLD" or style == "BOLD_2" then
		styleProps.bold = true
	elseif style == "ITALIC" or style == "ITALIC_2" then
		styleProps.italic = true
	elseif style == "STRIKE" then
		styleProps.strike = true
	elseif style == "INLINE_CODE" then
		styleProps = context.codeStyles
		styleProps = Dash.joinDeep(styleProps, { selectable = true })
	end
	return context.processChildren(node, mergeContexts(context, { textStyles = styleProps })) :: { InlineElement }
end

local function renderText(node: Types.Node, context: Types.Context): InlineElement
	local textElementProps = {
		LayoutOrder = node.index,
		Text = processSoftBreaks(node.text :: string),
		EngineTags = getBaseTextElementEngineTags(context.textStyles),
		fontStyle = {
			Font = getFontFace(context.textStyles, DEFAULT_FONT),
			FontSize = context.textStyles.textSize,
		},
		textStyle = {
			Color3 = if typeof(context.textStyles.color) == "string"
				then Color3.fromHex(context.textStyles.color)
				else context.textStyles.color,
			Transparency = context.textStyles.transparency,
		},
		viewTags = context.textStyles.viewTags,
	}
	if context.textStyles.selectable then
		return SelectableTextElement.new(textElementProps)
	else
		return TextElement.new(textElementProps)
	end
end

local function renderHardBreak(): InlineElement
	return HardBreakElement
end

local function renderLink(node: Types.Node, context: Types.Context): InlineElement
	local url = (node.attributes and node.attributes.url or node.url or "") :: string
	local children = context.processChildren(
		node,
		mergeContexts(context, {
			textStyles = {
				color = context.linkStyles.linkColor,
			},
		})
	)
	local filteredChildren = Dash.filter(children, function(child)
		return isInlineElement(child) and child ~= HardBreakElement
	end)
	return LinkElement.new(filteredChildren, {
		onActivated = function()
			context.linkCallback(url)
		end,
	})
end

local function renderThematicBreak(node: Types.Node): React.ReactElement
	return React.createElement(View, {
		key = tostring(node.index),
		tag = "size-full-0 auto-y",
		LayoutOrder = node.index,
	}, {
		-- HorizontalRule padding
		UIPadding = shouldUseTopPadding(node) and React.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 10),
		}),

		Divider = React.createElement(Divider),
	})
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
				node,
				mergeContexts(context, { textStyles = { italic = true, transparency = 0.5 } })
			),
		}),
	})
end

local function renderImage(node: Types.Node, context: Types.Context): InlineElement
	local url = (node.attributes and node.attributes.url or node.url or nil) :: string?
	return ImageElement.new({
		LayoutOrder = node.index,
		Image = url,
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
	userRenderers: Types.RenderersType,
	linkCallback: Types.LinkCallbackType?,
	markdownRendererProps: Types.MarkdownRendererPropsType?,
	colorScheme: MarkdownCore.TokenColors?,
	tokens: Foundation.Tokens,
}

function MarkdownRenderer.render(node: Types.Node, props: Props): React.ReactElement?
	MarkdownRenderer.renderers = props.userRenderers

	local markdownRendererProps = table.clone(props.markdownRendererProps or {})

	local initialContext: Types.Context = Dash.joinDeep({
		textStyles = {
			textSize = DEFAULT_TEXT_SIZE,
			font = DEFAULT_FONT,
		},
		codeStyles = {
			textSize = DEFAULT_TEXT_SIZE,
			font = DEFAULT_CODE_FONT,
			lineHeight = DEFAULT_CODE_LINE_HEIGHT,
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
		linkStyles = {
			linkColor = `#{props.tokens.Color.Content.Link.Color3:ToHex()}`,
		},
		isInline = false,
		linkCallback = props.linkCallback or defaultLinkCallback,
		colorScheme = props.colorScheme,
		processChildren = processChildren,
	}, markdownRendererProps)

	-- Freeze the initialContext table to prevent accidental modification
	-- (Renderers that want to modify props passed to children should use mergeContext,
	-- so that they only impact descendants and not all subsequent renders)
	table.freeze(initialContext)
	-- TODO: Fix the type casting here
	return render(node, initialContext) :: any
end

return MarkdownRenderer
