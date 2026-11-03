--!strict
local Root = script:FindFirstAncestor("Markdown")
local Types = require(Root.Types)

type Attributes = Types.Attributes
type Node = Types.Node
type Token = Types.Token

local Constants = require(script.Parent.Parent.Constants)
local LISTS = Constants.LISTS
local STYLED_TEXT = Constants.STYLED_TEXT
local DIVIDERS = Constants.DIVIDERS

local NodeType = require(Root.Enums.NodeType)
local getNodeType = require(script.Parent.Parent.getNodeType)
local isNodeBlock = require(script.Parent.Parent.isNodeBlock)
local Flags = require(Root.Parent.MarkdownCore).Flags

local insert = table.insert

local VOID_TAGS = {
	area = true,
	base = true,
	br = true,
	col = true,
	embed = true,
	hr = true,
	img = true,
	input = true,
	link = true,
	meta = true,
	source = true,
	track = true,
	wbr = true,
}

-- Documented without a closing tag in MarkdownViewer.story
local OPTIONALLY_CLOSED_TAGS = {
	Button = true,
}

local module = {}

-- Helper function to create a text node from a token
local function createTextNode(token: Token, options: Types.ParserOptions): Node
	return {
		name = "TEXT",
		text = token.text,
		children = {},
		offset = token.offset,
		type = getNodeType("TEXT", options),
	}
end

-- A divider can only render where a block can, so inside text it becomes a line break
local function createHorizontalRuleNode(token: Token, parent: Node, options: Types.ParserOptions): Node
	local isInBlockContainer = parent.type == NodeType.Root
		or (parent.type == NodeType.Block and parent.name ~= "TABLE_ROW")
	local name = if isInBlockContainer then "DIVIDER" else "BREAK"

	return {
		name = name,
		children = {},
		offset = token.offset,
		type = getNodeType(name, options),
	}
end

local function isLineStartAfter(token: Token, wasLineStart: boolean): boolean
	if token.isBlock then
		return true
	elseif token.name ~= "TEXT" then
		return false
	end

	local lastLine = string.match(token.text, "\n([^\n]*)$")
	if lastLine then
		return string.find(lastLine, "^[ \t]*$") ~= nil
	end

	return wasLineStart and string.find(token.text, "^[ \t]*$") ~= nil
end

-- https://spec.commonmark.org/0.31.2/#open-tag
local function isWellFormedOpenTag(text: string): boolean
	local rest = string.match(text, "^<%a[%w%-]*(.-)>$")

	while rest and string.find(rest, "%S") do
		local afterName = string.match(rest, "^%s+[%a_:][%w_%.:%-]*(.*)$")
		if not afterName then
			return false
		end

		rest = string.match(afterName, '^%s*=%s*"[^"]*"(.*)$')
			or string.match(afterName, "^%s*=%s*'[^']*'(.*)$")
			or string.match(afterName, "^%s*=%s*[^%s\"'=<>`]+(.*)$")
			or afterName
	end

	return rest ~= nil
end

-- Mid-line text like Array<T> isn't a tag waiting for the rest of the stream
local function mayCloseLaterInStream(token: Token, startsLine: boolean, options: Types.ParserOptions): boolean
	local tag = (token.capture :: { string })[1]

	return not OPTIONALLY_CLOSED_TAGS[tag]
		and (options.inlineTags[tag] == true or startsLine)
		and isWellFormedOpenTag(token.text)
end

-- Pairing an inline tag across blocks, or any tag across cells, would swallow the blank line or the cell's pipe
local function findUnpairedTags(tokens: { Token }, options: Types.ParserOptions): { [Token]: true }
	local unpaired: { [Token]: true } = {}
	local openTags: { { token: Token, tag: string, startsLine: boolean } } = {}
	local isLineStart = true
	local isInTableRow = false
	local firstCellTagIndex = 1

	local function closeOpenTagsFrom(index: number)
		for i = #openTags, index, -1 do
			unpaired[openTags[i].token] = true
			openTags[i] = nil
		end
	end

	for _, token in tokens do
		local startsLine = isLineStart
		isLineStart = isLineStartAfter(token, isLineStart)

		if token.isBlock then
			if isInTableRow then
				closeOpenTagsFrom(firstCellTagIndex)
			end

			for i, openTag in openTags do
				if options.inlineTags[openTag.tag] then
					closeOpenTagsFrom(i)
					break
				end
			end

			isInTableRow = token.name == "TABLE_ROW"
			firstCellTagIndex = if isInTableRow then #openTags + 1 else 1
		elseif isInTableRow and token.name == "TABLE_DIVIDER" then
			closeOpenTagsFrom(firstCellTagIndex)
		end

		if not token.capture then
			continue
		end

		local tag = token.capture[1]
		if token.name == "OPEN" and not VOID_TAGS[tag] then
			insert(openTags, {
				token = token,
				tag = tag,
				startsLine = startsLine,
			})
		elseif token.name == "CLOSE" then
			local matchIndex = nil
			for i = #openTags, firstCellTagIndex, -1 do
				if openTags[i].tag == tag then
					matchIndex = i
					break
				end
			end

			if matchIndex then
				closeOpenTagsFrom(matchIndex + 1)
				openTags[matchIndex] = nil
			else
				unpaired[token] = true
			end
		end
	end

	for _, openTag in openTags do
		if not (options.isStreaming and mayCloseLaterInStream(openTag.token, openTag.startsLine, options)) then
			unpaired[openTag.token] = true
		end
	end

	return unpaired
end

-- A Parser modeled on the shift-reduce algorithm - https://en.wikipedia.org/wiki/Shift-reduce_parser
function module.buildTree(tokens: { Token }, options: Types.ParserOptions): Node
	local unpairedTags: { [Token]: true } = if Flags.FFlagMarkdownTagFallbacks
		then findUnpairedTags(tokens, options)
		else {}
	local root = {
		name = "ROOT",
		children = {},
		offset = 1,
		type = NodeType.Root,
	}
	local stack: { Node } = { root }
	local i = 1
	-- We iterate through the tokens and write them onto the stack.
	-- When we hit a "close" token such as a new block, </close>, matching *bold* star etc. we perform the "reduce" step
	-- which pops nodes from the stack and places them as children of the relevant open node.
	while i <= #tokens do
		local token = tokens[i]
		local node = stack[#stack]
		if token.name == "CODE_BLOCK" and token.capture then
			local trimmedText = string.gsub(token.capture[2], "^%s*(.-)%s*$", "%1")
			insert(node.children, {
				name = "CODE_BLOCK",
				text = trimmedText,
				children = {},
				attributes = {
					language = token.capture[1],
				} :: Attributes,
				offset = token.offset,
				type = getNodeType("CODE_BLOCK", options),
			})
		elseif token.name == "EMPHASIS_START" then
			-- Handle emphasis start token from EmphasisParser
			-- The style is stored in the text field
			local style = token.text
			insert(stack, {
				name = "STYLED_TEXT",
				attributes = {
					style = style,
				} :: Attributes,
				children = {},
				offset = token.offset,
				type = getNodeType("STYLED_TEXT", options),
			})
		elseif token.name == "EMPHASIS_END" then
			-- Handle emphasis end token from EmphasisParser
			module.closeNode(stack, function(n: Node)
				return n.name == "STYLED_TEXT"
			end)
		elseif
			Flags.FFlagMarkdownTagFallbacks
			and unpairedTags[token]
			and token.name == "OPEN"
			and token.capture
			and OPTIONALLY_CLOSED_TAGS[token.capture[1]]
		then
			local attrs = token.capture[2]
			insert(node.children, {
				name = "TAG",
				text = token.capture[1],
				attributes = if attrs then module.parseXmlAttributes(attrs) else {},
				children = {},
				offset = token.offset,
				type = NodeType.Block,
			})
		elseif STYLED_TEXT[token.name] or (Flags.FFlagMarkdownTagFallbacks and unpairedTags[token]) then
			-- This should not happen if EmphasisParser worked correctly
			-- Just treat as text
			insert(node.children, createTextNode(token, options))
		elseif LISTS[token.name] and token.capture then
			-- Close previous block as we will nest list items in the post-process step
			module.closeNode(stack, function(nodeToClose: Node)
				return isNodeBlock(nodeToClose)
			end)
			insert(stack, {
				name = "LIST_ITEM",
				children = {},
				attributes = {
					depth = #token.capture[1],
					prefix = token.capture[2],
				} :: Attributes,
				offset = token.offset,
				type = getNodeType("LIST_ITEM", options),
			})
		elseif token.name == "HEADING" and not token.isBlock then
			-- If we are currently inside a header and we receive another header token,
			-- that means we received the closing sequence of an open header
			local closed = module.closeNode(stack, function(nodeToClose: Node)
				return nodeToClose.name == "HEADING"
			end)
			-- If we didn't close an active header, then we should treat this token as plaintext
			if not closed then
				insert(node.children, createTextNode(token, options))
			end
		elseif token.isBlock then
			-- Markdown does not support nested blocks so we can simply reduce the previous block node now
			module.closeNode(stack, function(nodeToClose: Node)
				return isNodeBlock(nodeToClose)
			end)

			-- Dividers have no children so do not put these on the stack
			local parent = if DIVIDERS[token.name] then stack[#stack].children else stack
			local attributes: Attributes = {}
			local children: { Node } = {}

			-- Store heading depth
			if token.name == "HEADING" and token.capture then
				attributes.depth = #token.capture[1]
			end

			insert(parent, {
				name = token.name :: string,
				children = children,
				attributes = attributes,
				offset = token.offset,
				type = getNodeType(token.name, options),
			})
		elseif token.name == "ESCAPE" and token.capture then
			-- The character captured by the backslash is escaped into text
			insert(node.children, {
				name = "TEXT",
				text = token.capture[1],
				offset = token.offset,
				children = {},
				type = getNodeType("TEXT", options),
			})
		elseif token.name == "LINK_START" and token.capture then
			insert(stack, {
				text = token.capture[1],
				name = "LINK",
				attributes = {
					url = token.capture[2],
					title = token.capture[3],
				} :: Attributes,
				children = {},
				offset = token.offset,
				type = getNodeType("LINK", options),
			})
		elseif token.name == "LINK_END" then
			module.closeNode(stack, function(n: Node)
				return n.name == "LINK"
			end)
		elseif token.name == "IMAGE" and token.capture then
			insert(node.children, {
				name = token.name :: string,
				text = token.capture[1],
				attributes = {
					url = token.capture[2],
					title = token.capture[3],
				} :: Attributes,
				offset = token.offset,
				children = {},
				type = getNodeType("IMAGE", options),
			})
		elseif token.name == "OPEN_CLOSE" and token.capture then
			local tag = token.capture[1]
			local attrs = token.capture[2]
			if token.capture and tag == "br" then
				insert(node.children, {
					name = "BREAK",
					children = {},
					offset = token.offset,
					type = getNodeType("BREAK", options),
				})
			elseif Flags.FFlagMarkdownTagFallbacks and tag == "hr" then
				insert(node.children, createHorizontalRuleNode(token, node, options))
			else
				insert(node.children, {
					name = "TAG",
					text = tag,
					attributes = if attrs then module.parseXmlAttributes(attrs) else {},
					children = {},
					offset = token.offset,
					type = if options.inlineTags[tag] then NodeType.InlineSpan else NodeType.Block,
				})
			end
		elseif token.name == "OPEN" and token.capture then
			local tag = token.capture[1]
			local attrs = token.capture[2]
			-- the <br> tag can self-close
			if token.capture and tag == "br" then
				insert(node.children, {
					name = "BREAK",
					children = {},
					offset = token.offset,
					type = getNodeType("BREAK", options),
				})
			elseif Flags.FFlagMarkdownTagFallbacks and tag == "hr" then
				insert(node.children, createHorizontalRuleNode(token, node, options))
			elseif Flags.FFlagMarkdownTagFallbacks and VOID_TAGS[tag] then
				insert(node.children, {
					name = "TAG",
					text = tag,
					attributes = if attrs then module.parseXmlAttributes(attrs) else {},
					children = {},
					offset = token.offset,
					type = if options.inlineTags[tag] then NodeType.InlineSpan else NodeType.Block,
				})
			else
				-- otherwise push <blah> onto the stack to be closed by a </blah> later on
				insert(stack, {
					name = "TAG",
					text = tag,
					attributes = if attrs then module.parseXmlAttributes(attrs) else {},
					children = {},
					offset = token.offset,
					type = if options.inlineTags[tag] then NodeType.InlineSpan else NodeType.Block,
				})
			end
		elseif Flags.FFlagMarkdownTagFallbacks and token.name == "CLOSE" and token.capture then
			local tag = token.capture[1]
			local closed = module.closeNode(stack, function(nodeToClose: Node)
				return nodeToClose.name == "TAG" and nodeToClose.text == tag
			end)
			if not closed then
				insert(node.children, createTextNode(token, options))
			end
		elseif token.name == "CLOSE" and token.capture then
			local tag = token.capture[1]
			-- Look for a corresponding tag already on the stack
			local closed = module.closeNode(stack, function(nodeToClose: Node)
				if nodeToClose.name == "TAG" then
					-- If a tag is on the stack, make sure it is named the same, otherwise error
					assert(
						nodeToClose.text == tag,
						`Found <{nodeToClose.text}> at {nodeToClose.offset} when trying to close </{tag}> at {token.offset}`
					)
					return true
				end
				return false
			end)
			assert(closed, `No open tag exists trying to close </{tag}> at {token.offset}`)
		elseif node.name == "HEADING" then
			-- Allow ATX headings to interrupt paragraphs with a single newline
			local newlineIdx = string.find(token.text, "\n", 1, true)
			if not newlineIdx then
				-- No newline found, treat as regular inline
				insert(node.children, {
					name = token.name :: string,
					text = token.text,
					children = {},
					offset = token.offset,
					type = getNodeType(token.name, options),
				})
				i += 1
				continue
			end
			local beforeNewline = string.sub(token.text, 1, newlineIdx - 1)
			local afterNewline = string.sub(token.text, newlineIdx + 1)
			if string.find(afterNewline, "%S") == nil then
				-- The newline does not split the text in two, treat as regular inline
				insert(node.children, {
					name = token.name :: string,
					text = token.text,
					children = {},
					offset = token.offset,
					type = getNodeType(token.name, options),
				})
				i += 1
				continue
			end

			-- The newline splits the text in two, so only the first part is added to the header
			insert(node.children, {
				name = token.name :: string,
				text = beforeNewline,
				children = {},
				offset = token.offset,
				type = getNodeType(token.name, options),
			})
			-- Close the header and push the rest of the text as a paragraph
			module.closeNode(stack, function(nodeToClose: Node)
				return nodeToClose.name == "HEADING"
			end)
			insert(stack, {
				name = "PARAGRAPH",
				children = {
					{
						name = "TEXT",
						text = afterNewline,
						children = {},
						offset = token.offset + newlineIdx + 1,
						type = getNodeType("TEXT", options),
					},
				},
				offset = token.offset,
				type = getNodeType("PARAGRAPH", options),
			})
		else
			-- All inline elements are pushed directly into the child list of the node on top of the stack
			insert(node.children, {
				name = token.name :: string,
				text = token.text,
				children = {},
				offset = token.offset,
				type = getNodeType(token.name, options),
			})
		end
		i += 1
	end
	-- Reduce non-block nodes into a block if one exists
	module.closeNode(stack, function(node: Node)
		return isNodeBlock(node)
	end)
	-- Reduce remaining stack into root
	module.closeNode(stack, function(node: Node)
		return node.name == "ROOT"
	end)
	return root
end

-- Find the last node in the stack with the provided name and pop it, pushing any nodes after into its children list
function module.closeNode(stack: { Node }, matcher: string | (node: Node) -> boolean): Node?
	local i = module.findLastNodeIndex(stack, matcher)
	if i then
		local node = stack[i]
		-- Push new node children
		for j = i + 1, #stack do
			insert(node.children, stack[j])
		end
		-- Pop children off the stack
		for _ = i + 1, #stack do
			table.remove(stack)
		end
		-- Push node into its parent
		local parent = stack[i - 1]
		if parent then
			-- Pop node off the stack
			table.remove(stack)
			insert(parent.children, node)
		end
		-- Return the opening node
		return node
	else
		return nil
	end
end

-- Find the last node in the stack with the provided name
function module.findLastNodeIndex(stack: { Node }, matcher: string | (node: Node) -> boolean): number?
	for i = #stack, 1, -1 do
		local node = stack[i]
		-- Match on name or call the matcher function
		local matches = if typeof(matcher) == "string" then node.name == matcher else matcher(node)
		if matches then
			return i
		end
	end
	return nil
end

function module.parseXmlAttributes(attrs: string)
	local match = attrs:gmatch(`%s*([A-Za-z0-9_-]+)="([^"]+)"%s*`) -- hello="world"
	-- selene: allow(manual_table_clone)
	local attributes = {}
	for name, value in match do
		attributes[name] = value
	end
	return attributes
end

return module.buildTree
