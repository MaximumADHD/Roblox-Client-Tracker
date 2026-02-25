local Root = script:FindFirstAncestor("Utils").Parent
local Types = require(Root.Types)

local AST2HTMLMapper = {}
local Map = {}

local function map(node: Types.Node): string
	local handler = Map[node.name]
	if handler then
		return handler(node)
	else
		error(`No handler found for node {node.name}`)
	end
end

local function processChildren(children: { Types.Node }): string
	if not children then
		return ""
	end

	local output = ""
	for _, child in children do
		output = output .. map(child)
	end
	return output
end

local function handleRoot(node: Types.Node): string
	return processChildren(node.children)
end

local function handleHeading(node: Types.Node): string
	local depth = if node.attributes then node.attributes.depth else 1
	return `<h{depth}>{processChildren(node.children)}</h{depth}>\n`
end

local function handleParagraph(node: Types.Node): string
	return `<p>{processChildren(node.children)}</p>\n`
end

local function handleThematicBreak(): string
	return "<hr />\n"
end

local function handleBlockquote(node: Types.Node): string
	return `<blockquote>\n{processChildren(node.children)}</blockquote>\n`
end

local function handleCodeBlock(node: Types.Node): string
	return `<pre><code>{node.text}</code></pre>\n`
end

local function handleList(node: Types.Node): string
	local tag = if node.attributes then (node.attributes.ordered and "ol" or "ul") else "ul"
	return `<{tag}>\n{processChildren(node.children)}</{tag}>\n`
end

local function handleListItem(node: Types.Node): string
	return `<li>{processChildren(node.children)}</li>\n`
end

local function handleStyledText(node: Types.Node): string
	local style = if node.attributes then node.attributes.style else nil
	if style == "BOLD" or style == "ITALIC" then
		return `<em>{processChildren(node.children)}</em>`
	elseif style == "BOLD_2" or style == "ITALIC_2" then
		return `<strong>{processChildren(node.children)}</strong>`
	elseif style == "STRIKE" then
		return `<u>{processChildren(node.children)}</u>`
	elseif style == nil then
		return processChildren(node.children)
	else
		error(`Unknown text style {style}`)
	end
end

local function handleText(node: Types.Node): string
	return node.text or ""
end

local function handleCodeSpan(node: Types.Node): string
	return `<code>{node.text}</code>`
end

local function handleLink(node: Types.Node): string
	local href = if node.attributes then node.attributes.link else ""
	return `<a href="{href}">{processChildren(node.children)}</a>`
end

local function handleTag(node: Types.Node): string
	local tag = node.text
	if not tag or tag == "" then
		error("TAG node must have a text value")
	end
	local attr = ""
	if node.attributes then
		for key, value in node.attributes do
			attr = `{attr} {key}="{value}"`
		end
	end
	if node.children then
		return `<{tag}{attr}>{processChildren(node.children)}</{tag}>`
	else
		return `<{tag}{attr}/>`
	end
end

local function handleLineBreak(): string
	return "<br />"
end

local function handleImage(node: Types.Node): string
	local src = node.url or ""
	local alt = node.text or ""
	return `<img src="{src}" alt="{alt}"/>`
end

local function emptyHandler(node: Types.Node): string
	return processChildren(node.children)
end

Map = {
	["ROOT"] = handleRoot,
	["HEADING"] = handleHeading,
	["PARAGRAPH"] = handleParagraph,
	["TEXT"] = handleText,
	["STYLED_TEXT"] = handleStyledText,
	["INLINE_CODE"] = handleCodeSpan,
	["DIVIDER"] = handleThematicBreak,
	["DIVIDER_2"] = handleThematicBreak,
	["QUOTE"] = handleBlockquote,
	["CODE_BLOCK"] = handleCodeBlock,
	["LIST"] = handleList,
	["LIST_ITEM"] = handleListItem,
	["LINK"] = handleLink,
	["TAG"] = handleTag,
	["LINE_BREAK"] = handleLineBreak,
	["IMAGE"] = handleImage,
	-- No support
	["TABLE_HEADER"] = emptyHandler,
	["TABLE_ROW"] = emptyHandler,
	["ACTION"] = emptyHandler,
}

function AST2HTMLMapper.map(node: Types.Node): string
	return map(node)
end

return AST2HTMLMapper
