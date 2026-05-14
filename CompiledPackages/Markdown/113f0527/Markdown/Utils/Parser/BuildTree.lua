local Root = script:FindFirstAncestor("Utils").Parent
local Types = require(Root.Types)
type Attributes = Types.Attributes
type Node = Types.Node
type Token = Types.Token

local Constants = require(script.Parent.Constants)
local LISTS = Constants.LISTS
local STYLED_TEXT = Constants.STYLED_TEXT
local DIVIDERS = Constants.DIVIDERS

local insert = table.insert

local module = {}

-- A Parser modeled on the shift-reduce algorithm - https://en.wikipedia.org/wiki/Shift-reduce_parser```
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
		elseif token.name == "INLINE_CODE" and token.capture then
			insert(node.children, {
				name = "INLINE_CODE",
				text = token.capture[1],
				children = {},
				offset = token.offset,
			})
		elseif STYLED_TEXT[token.name] then
			-- In markdown you use the same token to open & close i.e. a *bold* element, so check if we have
			-- already opened a matching styling node and close it.
			-- selene: allow(shadowing)
			local closed = module.closeNode(stack, function(node: Node)
				if node.name == "STYLED_TEXT" and node.attributes and node.attributes.style then
					-- We do not support having overlapping *styling _like* this_
					assert(
						node.attributes.style == token.name,
						`Can't put {token.name} at {token.offset} inside {node.attributes.style} at {node.offset}`
					)
					return true
				end
				return false
			end)
			if not closed then
				insert(stack, {
					name = "STYLED_TEXT",
					attributes = {
						style = token.name,
					},
					children = {},
					offset = token.offset,
				})
			end
		elseif LISTS[token.name] and token.capture then
			-- Close previous block as we will nest list items in the post-process step
			-- selene: allow(shadowing)
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
		elseif token.isBlock then
			-- Markdown does not support nested blocks so we can simply reduce the previous block node now
			-- selene: allow(shadowing)
			module.closeNode(stack, function(node: Node)
				return node.isBlock == true
			end)
			local attributes: Attributes = {}
			-- Store heading depth
			if token.name == "HEADING" and token.capture then
				attributes.depth = #token.capture[1]
			end
			-- Dividers have no children so do not put these on the stack
			local parent = if DIVIDERS[token.name] then stack[#stack].children else stack
			insert(parent, {
				name = token.name :: string,
				children = {},
				isBlock = true,
				attributes = attributes,
				offset = token.offset,
			})
		elseif token.name == "ESCAPE" and token.capture then
			insert(node.children, {
				name = "TEXT",
				text = token.capture[1],
				offset = token.offset,
				children = {},
			})
		elseif (token.name == "LINK" or token.name == "IMAGE") and token.capture then
			insert(node.children, {
				name = token.name,
				text = token.capture[1],
				url = token.capture[2],
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
			-- selene: allow(shadowing)
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
