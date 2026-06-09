local Root = script:FindFirstAncestor("Markdown")
local Types = require(Root.Types)
type Node = Types.Node

local AST2HTMLMapper = {}
local Map = {}

local function sanitize(s: string): string
	return s
		:gsub("&amp;", "&") -- Unescape any escaped stuff to prevent double escaping
		:gsub("&lt;", "<")
		:gsub("&gt;", ">")
		:gsub("&quot;", '"')
		:gsub("&", "&amp;") -- Then escape again
		:gsub("<", "&lt;")
		:gsub(">", "&gt;")
		:gsub('"', "&quot;")
		:gsub(" *\n *", "\n")
end

local function urlEncode(s: string): string
	return string.gsub(s, "([^%w_%%%-%.%*%?%(%)#~/:=])", function(c)
		return string.format("%%%02X", string.byte(c))
	end)
end

local function map(node: Node): string
	local handler = Map[node.name]
	if handler then
		return handler(node)
	else
		error(`No handler found for node {node.name}`)
	end
end

local function processChildren(children: { Node }): string
	if not children then
		return ""
	end

	local output = ""
	for _, child in children do
		output = output .. map(child)
	end
	return output
end

local function handleRoot(node: Node): string
	return processChildren(node.children)
end

local function handleHeading(node: Node): string
	local depth = if node.attributes then node.attributes.depth else 1
	return `<h{depth}>{processChildren(node.children)}</h{depth}>\n`
end

local function handleParagraph(node: Node): string
	return `<p>{processChildren(node.children):gsub("^ +", ""):gsub(" +$", "")}</p>\n`
end

local function handleThematicBreak(): string
	return "<hr />\n"
end

local function handleBlockquote(node: Node): string
	return `<blockquote>\n{processChildren(node.children)}</blockquote>\n`
end

local function handleCodeBlock(node: Node): string
	local classes = {}
	if node.attributes and node.attributes.language and node.attributes.language ~= "" then
		table.insert(classes, "language-" .. node.attributes.language)
	end
	local attr = {}
	if #classes > 0 then
		table.insert(attr, `class="{table.concat(classes, " ")}"`)
	end
	return `<pre><code{if #attr > 0 then ` {table.concat(attr, " ")}` else ""}>{node.text}</code></pre>\n`
end

local function handleList(node: Node): string
	local tag = if node.attributes then (node.attributes.ordered and "ol" or "ul") else "ul"
	return `<{tag}>\n{processChildren(node.children)}</{tag}>\n`
end

local function handleListItem(node: Node): string
	return `<li>{processChildren(node.children)}</li>\n`
end

local function handleStyledText(node: Node): string
	local style = if node.attributes then node.attributes.style else nil
	if style == "BOLD" or style == "ITALIC" then
		return `<em>{processChildren(node.children)}</em>`
	elseif style == "BOLD_2" or style == "ITALIC_2" then
		return `<strong>{processChildren(node.children)}</strong>`
	elseif style == "STRIKE" then
		return `<u>{processChildren(node.children)}</u>`
	elseif style == "INLINE_CODE" then
		return `<code>{processChildren(node.children)}</code>`
	elseif style == nil then
		return processChildren(node.children)
	else
		error(`Unknown text style {style}`)
	end
end

local function handleText(node: Node): string
	return sanitize(node.text or "")
end

local function handleLink(node: Node): string
	local href = (node.attributes and node.attributes.url or node.url or "") :: string
	local title = (node.attributes and node.attributes.title or nil) :: string?
	local text = processChildren(node.children)
	local childrenFound = text ~= ""
	-- If no children, use the link text
	if not childrenFound and node.text then
		text = sanitize(node.text)
	end
	return `<a href="{urlEncode(href)}"{if title then ` title="{sanitize(title)}"` else ""}>{text}</a>`
end

local function handleTag(node: Node): string
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
	if node.children and #node.children > 0 then
		return `<{tag}{attr}>{processChildren(node.children)}</{tag}>`
	else
		return `<{tag}{attr} />`
	end
end

local function handleLineBreak(): string
	return "<br />"
end

local function handleBreak(): string
	return "<br />\n"
end

local function handleImage(node: Node): string
	local src = (node.attributes and node.attributes.url or node.url or "") :: string
	local alt = node.text or ""
	return `<img src="{urlEncode(src)}" alt="{sanitize(alt)}" />`
end

local function emptyHandler(node: Node): string
	return processChildren(node.children)
end

Map = {
	["ROOT"] = handleRoot,
	["HEADING"] = handleHeading,
	["PARAGRAPH"] = handleParagraph,
	["TEXT"] = handleText,
	["STYLED_TEXT"] = handleStyledText,
	["DIVIDER"] = handleThematicBreak,
	["QUOTE"] = handleBlockquote,
	["CODE_BLOCK"] = handleCodeBlock,
	["LIST"] = handleList,
	["LIST_ITEM"] = handleListItem,
	["LINK"] = handleLink,
	["TAG"] = handleTag,
	["LINE_BREAK"] = handleLineBreak,
	["BREAK"] = handleBreak,
	["IMAGE"] = handleImage,
	-- No support
	["TABLE_HEADER"] = emptyHandler,
	["TABLE_ROW"] = emptyHandler,
	["ACTION"] = emptyHandler,
}

function AST2HTMLMapper.map(node: Node): string
	return map(node)
end

return AST2HTMLMapper
