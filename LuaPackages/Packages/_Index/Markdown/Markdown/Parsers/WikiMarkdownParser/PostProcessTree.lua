--!strict
local Root = script:FindFirstAncestor("Markdown")
local Types = require(Root.Types)

type Attributes = Types.Attributes
type Node = Types.Node
type ParserOptions = Types.ParserOptions

local insert = table.insert

local Constants = require(script.Parent.Parent.Constants)
local CONTAINERS = Constants.CONTAINERS
local INLINE_TEXT = Constants.INLINE_TEXT
local PLAIN_TEXT = Constants.PLAIN_TEXT
local STYLED_TEXT = Constants.STYLED_TEXT

local getNodeType = require(script.Parent.Parent.getNodeType)
local isNodeBlock = require(script.Parent.Parent.isNodeBlock)

local module = {}

-- Clean up the AST output: group lists & tables correctly, output paragraphs and rich-text
function module.postProcessTree(node: Node, options: ParserOptions): { Node }
	local children = {}
	local i = 1
	local nodes = node.children
	local isNodeInlineTag = node.name == "TAG" and options.inlineTags[node.text :: string]
	local isNodeContainer = CONTAINERS[node.name] and not isNodeInlineTag
	while i <= #nodes do
		local child = nodes[i]
		local isChildInlineTag = child.name == "TAG" and child.text and options.inlineTags[child.text]
		local isChildInline = INLINE_TEXT[child.name] or isChildInlineTag
		if isChildInline and isNodeContainer then
			-- Merge all inline elements under a container into a paragraph
			local count, textNode = module.buildParagraph(nodes, i, options)
			assert(count > 0, "Did not find an inline node when expected")
			-- Drop empty paragraphs
			if #textNode.children > 0 then
				insert(children, textNode)
			end
			i += count
		elseif PLAIN_TEXT[child.name] then
			local textCount, textNode = module.mergeTextNodes(nodes, i, options)
			assert(textCount > 0, "Did not find a text node when expected")
			-- Only add text nodes that actually have text
			if textNode.text and #textNode.text > 0 then
				insert(children, textNode)
			end
			i += textCount
		elseif child.name == "LIST_ITEM" then
			-- Merge list items into a list node
			local count, listNode = module.buildList(nodes, i, options)
			insert(children, listNode)
			assert(count > 0, "Did not find a list node when expected")
			i += count
		elseif child.name == "TABLE_ROW" then
			-- Merge table rows into a table node
			local count, tableNode = module.buildTable(nodes, i, options)
			insert(children, tableNode)
			assert(count > 0, "Did not find a table row node when expected")
			i += count
		elseif child.name == "LINE_BREAK" then
			-- Drop line break token now that we've used them to separate paragraphs
			i += 1
			continue
		else
			child.children = module.postProcessTree(child, options)
			insert(children, child)
			i += 1
		end
	end
	if isNodeBlock(node) then
		-- Strip leading space and trailing space in a block
		local firstChild = children[1]
		if firstChild and firstChild.text then
			firstChild.text = firstChild.text:gsub("^%s+", "")
		end
		local lastChild = children[#children]
		if lastChild and lastChild.text then
			lastChild.text = lastChild.text:gsub("%s+$", "")
		end
	end
	return children
end

-- Return a new paragraph node and the number of inline nodes consumed from the child array
function module.buildParagraph(nodes: { Node }, offset: number, options: ParserOptions): (number, Node)
	local children = {}
	local count = 0
	local i = offset
	while i <= #nodes do
		local node = nodes[i]
		local isNodeInlineTag = node.name == "TAG" and node.text and options.inlineTags[node.text]
		local isNodeInline = INLINE_TEXT[node.name] or isNodeInlineTag
		-- Merge plain and styled text into a single element
		if PLAIN_TEXT[node.name] then
			local textCount, textNode = module.mergeTextNodes(nodes, i, options)
			-- Only add text nodes that actually have text
			if textNode.text and #textNode.text > 0 then
				insert(children, textNode)
			end
			assert(textCount > 0, "Did not find a rich text node when expected")
			count += textCount
			i += textCount
		elseif isNodeInline then
			insert(children, node)
			count += 1
			i += 1
		else
			break
		end
	end
	return count,
		{
			name = "PARAGRAPH",
			children = children,
			offset = nodes[offset].offset,
			type = getNodeType("PARAGRAPH", options),
		}
end

-- Get the richtext string that the inline node represents
function module.outputRichText(node: Node, options: ParserOptions): string
	local tag = if node.attributes then STYLED_TEXT[node.attributes.style] else nil
	if tag then
		-- For style tags such as bold, replace markdown syntax with html tags
		local count, output = module.mergeTextNodes(node.children, 1, options)
		assert(count == #node.children, `Found non-inline content inside inline element at {node.offset}`)
		return `<{tag}>{output.text}</{tag}>`
	elseif node.text then
		-- Otherwise just use the string representation of the node. e.g. turn TABLE_DIVIDER back into |
		return node.text
	end
	assert(false, `No text for node at {node.offset}`)
end

function module.buildList(nodes: { Node }, offset: number, options: ParserOptions): (number, Node)
	local count = 0
	local firstItem = nodes[offset] :: Node & { attributes: Attributes }
	local depth = firstItem.attributes.depth
	local rows: { Node } = {}
	local i = offset
	while i <= #nodes do
		local node = nodes[i] :: Node & { attributes: Attributes }
		if node.name == "LIST_ITEM" then
			if node.attributes.depth == depth then
				node.children = module.postProcessTree(node, options)
				insert(rows, node)
				count += 1
				i += 1
			elseif node.attributes.depth > depth then
				-- Nest deeper list rows inside a separate list node
				local subCount, listNode = module.buildList(nodes, i, options)
				insert(rows, listNode)
				assert(subCount > 0, "Did not find a list node when expected")
				i += subCount
				count += subCount
			else
				break
			end
		else
			break
		end
	end
	return count,
		{
			name = "LIST",
			attributes = {
				depth = depth,
			},
			children = rows,
			offset = nodes[offset].offset,
			type = getNodeType("LIST", options),
		}
end

function module.buildTable(nodes: { Node }, offset: number, options: ParserOptions): (number, Node)
	local count = 0
	local rows: { Node } = {}
	for i = offset, #nodes do
		local node = nodes[i]
		if node.name == "TABLE_ROW" then
			local cells = module.buildTableCells(node, options)
			-- Drop any rows that just contain dividers
			if cells then
				node.children = cells
				insert(rows, node)
			elseif #rows > 0 then
				-- And instead, mark the row above as a header
				rows[#rows].name = "TABLE_HEADER"
			end
			count += 1
		else
			break
		end
	end
	return count,
		{
			name = "TABLE",
			children = rows,
			offset = nodes[offset].offset,
			type = getNodeType("TABLE", options),
		}
end

-- Iterate through the children of a row and group them into cells, splitting on table dividers
function module.buildTableCells(row: Node, options: ParserOptions): { Node }?
	local cells: { Node } = {}
	local cellChildren = {}
	local isDividerRow = true
	local firstChild = row.children[1]
	for i = 1, #row.children do
		local child = row.children[i]
		if child.name == "TABLE_DIVIDER" then
			local cell = {
				name = "TABLE_CELL",
				children = cellChildren,
				offset = if cellChildren[1] then cellChildren[1].offset else row.offset,
				type = getNodeType("TABLE_CELL", options),
			}
			cell.children = module.postProcessTree(cell, options)
			insert(cells, cell)
			-- Check if the cell is just a divider cell i.e. if it contains a single text element like ---
			local isDividerCell = firstChild.text and firstChild.text:match("^[ \t-=]+$") ~= nil
			isDividerRow = isDividerRow and isDividerCell or false
			cellChildren = {}
		else
			insert(cellChildren, child)
		end
	end
	-- Don't return cells if the row is just a divider row
	if isDividerRow then
		return nil
	else
		return cells
	end
end

-- Combine text nodes into a single text node
function module.mergeTextNodes(nodes: { Node }, offset: number, options: ParserOptions): (number, Node)
	local text = ""
	local count = 0
	for i = offset, #nodes do
		local node = nodes[i]
		if PLAIN_TEXT[node.name] then
			text ..= node.text :: string
			count += 1
		else
			break
		end
	end
	-- Strip leading & trailing whitespace
	text = text:gsub("^\n*(.-)\n*$", "%1")
	return count,
		{
			name = "TEXT",
			text = text,
			children = {},
			offset = nodes[offset].offset,
			type = getNodeType("TEXT", options),
		}
end

return module.postProcessTree
