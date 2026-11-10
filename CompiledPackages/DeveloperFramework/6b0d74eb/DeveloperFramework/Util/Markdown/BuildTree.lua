--!strict
local Types = require(script.Parent.Types)
type Attributes = Types.Attributes
type Node = Types.Node
type Token = Types.Token

local Constants = require(script.Parent.Constants)
local LISTS = Constants.LISTS
local STYLED_TEXT = Constants.STYLED_TEXT
local DIVIDERS = Constants.DIVIDERS

local insert = table.insert

local module = {}

-- Helper function to create a text node from a token
local function createTextNode(token: Token): Node
	return {
		name = "TEXT",
		text = token.text,
		children = {},
		offset = token.offset,
	}
end

-- A Parser modeled on the shift-reduce algorithm - https://en.wikipedia.org/wiki/Shift-reduce_parser
function module.buildTree(tokens: { Token }): Node
	local root = {
		name = "ROOT",
		children = {},
		offset = 1,
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
			})
		elseif token.name == "EMPHASIS_END" then
			-- Handle emphasis end token from EmphasisParser
			module.closeNode(stack, function(n: Node)
				return n.name == "STYLED_TEXT"
			end)
		elseif STYLED_TEXT[token.name] then
			-- This should not happen if EmphasisParser worked correctly
			-- Just treat as text
			insert(node.children, createTextNode(token))
		elseif LISTS[token.name] and token.capture then
			-- Close previous block as we will nest list items in the post-process step
			module.closeNode(stack, function(node: Node)
				return node.isBlock == true
			end)
			insert(stack, {
				name = "LIST_ITEM",
				isBlock = true,
				children = {},
				attributes = {
					depth = #token.capture[1],
					prefix = token.capture[2],
				} :: Attributes,
				offset = token.offset,
			})
		elseif token.name == "HEADING" and not token.isBlock then
			-- If we are currently inside a header and we receive another header token,
			-- that means we received the closing sequence of an open header
			local closed = module.closeNode(stack, function(node: Node)
				return node.name == "HEADING"
			end)
			-- If we didn't close an active header, then we should treat this token as plaintext
			if not closed then
				insert(node.children, createTextNode(token))
			end
		elseif token.isBlock then
			-- Markdown does not support nested blocks so we can simply reduce the previous block node now
			module.closeNode(stack, function(node: Node)
				return node.isBlock == true
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
				isBlock = true,
				attributes = attributes,
				offset = token.offset,
			})
		elseif token.name == "ESCAPE" and token.capture then
			-- The character captured by the backslash is escaped into text
			insert(node.children, {
				name = "TEXT",
				text = token.capture[1],
				offset = token.offset,
				children = {},
			})
		elseif (token.name == "LINK" or token.name == "IMAGE") and token.capture then
			insert(node.children, {
				name = token.name :: string,
				text = token.capture[1],
				attributes = {
					url = token.capture[2],
					title = token.capture[3],
				} :: Attributes,
				offset = token.offset,
				children = {},
			})
		elseif token.name == "OPEN_CLOSE" and token.capture then
			local tag = token.capture[1]
			local attrs = token.capture[2]
			if token.capture and tag == "br" then
				insert(node.children, {
					name = "BREAK",
					children = {},
					offset = token.offset,
				})
			else
				insert(node.children, {
					name = "TAG",
					text = tag,
					attributes = if attrs then module.parseXmlAttributes(attrs) else {},
					children = {},
					offset = token.offset,
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
				})
			else
				-- otherwise push <blah> onto the stack to be closed by a </blah> later on
				insert(stack, {
					name = "TAG",
					text = tag,
					attributes = if attrs then module.parseXmlAttributes(attrs) else {},
					children = {},
					offset = token.offset,
				})
			end
		elseif token.name == "CLOSE" and token.capture then
			local tag = token.capture[1]
			-- Look for a corresponding tag already on the stack
			local closed = module.closeNode(stack, function(node: Node)
				if node.name == "TAG" then
					-- If a tag is on the stack, make sure it is named the same, otherwise error
					assert(
						node.text == tag,
						`Found <{node.text}> at {node.offset} when trying to close </{tag}> at {token.offset}`
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
			})
			-- Close the header and push the rest of the text as a paragraph
			module.closeNode(stack, function(node: Node)
				return node.name == "HEADING"
			end)
			insert(stack, {
				name = "PARAGRAPH",
				children = {
					{
						name = "TEXT",
						text = afterNewline,
						children = {},
						offset = token.offset + newlineIdx + 1,
					},
				},
				offset = token.offset,
			})
		else
			-- All inline elements are pushed directly into the child list of the node on top of the stack
			insert(node.children, {
				name = token.name :: string,
				text = token.text,
				children = {},
				offset = token.offset,
			})
		end
		i += 1
	end
	-- Reduce non-block nodes into a block if one exists
	module.closeNode(stack, function(node: Node)
		return node.isBlock == true
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
