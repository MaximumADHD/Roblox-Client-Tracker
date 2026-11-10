-- Pairs the inline formatting tags (ROACTCHAT-2959) after inline parsing. A tag is a
-- FormattingTagText (the Roblox profile's `<` parser) or an HtmlInline whose literal is exactly a
-- tag (a profile with inline HTML on). Tags pair only among one node's children, so a pair never
-- crosses the edge of emphasis, a link or a block. A closing tag pairs with the nearest unclosed
-- opening tag of its name; the tags opened after that one and still open stay as they are, as do
-- unmatched tags. A matched pair becomes a FormattingTag holding the nodes between its tags.
--
-- With maxNesting, a pair stays as it is when wrapping it would put more than maxNesting inline
-- levels between its block and its content's deepest leaf, counting the emphasis and links the
-- core already built around and inside it. That's how the core leaves emphasis delimiters past
-- maxInlineNesting as text. Since every tag still open would enclose that content too, they all
-- stay as they are, which keeps the pass linear.
--
-- Children are paired before their parent, so a node's nesting depth is known when its parent's
-- tags pair. The walk uses an explicit stack, not recursion.

local Root = script:FindFirstAncestor("Markdown")
local Packages = Root.Parent
local CommonMark = require(Packages.CommonMark)
local FormattingTag = require(script.Parent.FormattingTag)

type Node = CommonMark.Node
type TagName = FormattingTag.TagName

type Depths = { [Node]: number }
-- For each node, how many inline nodes it and its ancestors are
type Levels = { [Node]: number }

local TAGS = FormattingTag.TAGS

local FormattingTagPostProcessor = {}
FormattingTagPostProcessor.__index = FormattingTagPostProcessor

type FormattingTagPostProcessorFields = {
	_maxNesting: number?,
	process: (self: FormattingTagPostProcessor, document: Node) -> Node,
}

export type FormattingTagPostProcessor = typeof(setmetatable(
	{} :: FormattingTagPostProcessorFields,
	FormattingTagPostProcessor
))

function FormattingTagPostProcessor.new(maxNesting: number?): FormattingTagPostProcessor
	return setmetatable({ _maxNesting = maxNesting }, FormattingTagPostProcessor) :: any
end

local function tagOf(node: Node)
	if node.kind == "FormattingTagText" or node.kind == "HtmlInline" then
		return TAGS[(node :: any).literal]
	end
	return nil
end

-- Every node that has children, each before its descendants, and the inline levels of each
local function containersTopDown(document: Node): ({ Node }, Levels)
	local containers: { Node } = {}
	local levels: Levels = { [document] = 0 }
	local pending: { Node } = { document }
	while #pending > 0 do
		local node = table.remove(pending) :: Node
		if node:getFirstChild() ~= nil then
			table.insert(containers, node)
			local child = node:getFirstChild()
			while child do
				levels[child] = levels[node] + (if child.isBlock then 0 else 1)
				table.insert(pending, child)
				child = child:getNext()
			end
		end
	end
	return containers, levels
end

-- Moves the nodes between opener and closer into a FormattingTag that replaces them. Returns
-- false, changing nothing, when the content is maxContentDepth or more levels deep.
local function wrap(opener: Node, closer: Node, tagName: TagName, depths: Depths, maxContentDepth: number?): boolean
	local contentDepth = 0
	local node = opener:getNext() :: Node
	while node ~= closer do
		contentDepth = math.max(contentDepth, depths[node] or 0)
		node = node:getNext() :: Node
	end
	if maxContentDepth ~= nil and contentDepth >= maxContentDepth then
		return false
	end

	local tag = FormattingTag.new(tagName)
	opener:insertBefore(tag)
	node = opener:getNext() :: Node
	while node ~= closer do
		local nextNode = node:getNext() :: Node
		tag:appendChild(node)
		node = nextNode
	end
	opener:unlink()
	closer:unlink()
	depths[tag] = contentDepth + 1
	return true
end

local function pairChildren(parent: Node, depths: Depths, maxContentDepth: number?)
	-- The opening tags still open, innermost last, and for each name the indexes into `open` of
	-- its own
	local open: { Node } = {}
	local openNames: { TagName } = {}
	local openIndexes: { [TagName]: { number } } = { b = {}, i = {}, u = {}, s = {} }

	local node = parent:getFirstChild()
	while node ~= nil do
		local nextNode = node:getNext()
		local tag = tagOf(node)
		if tag ~= nil then
			local indexes = openIndexes[tag.name]
			if not tag.closing then
				table.insert(open, node)
				table.insert(openNames, tag.name)
				table.insert(indexes, #open)
			else
				local at = indexes[#indexes]
				if at ~= nil then
					local opener = open[at]
					for j = #open, at, -1 do
						table.remove(openIndexes[openNames[j]])
						open[j] = nil
						openNames[j] = nil
					end
					if not wrap(opener, node, tag.name, depths, maxContentDepth) then
						for j = #open, 1, -1 do
							table.remove(openIndexes[openNames[j]])
							open[j] = nil
							openNames[j] = nil
						end
					end
				end
			end
		end
		node = nextNode
	end
end

function FormattingTagPostProcessor.process(self: FormattingTagPostProcessor, document: Node): Node
	local depths: Depths = {}
	local containers, levels = containersTopDown(document)
	local maxNesting = self._maxNesting
	for index = #containers, 1, -1 do
		local container = containers[index]
		-- A pair inside `container` adds a level below the inline levels already above it
		local maxContentDepth = if maxNesting ~= nil then maxNesting - levels[container] else nil
		pairChildren(container, depths, maxContentDepth)
		if not container.isBlock then
			local deepest = 0
			local child = container:getFirstChild()
			while child ~= nil do
				deepest = math.max(deepest, depths[child] or 0)
				child = child:getNext()
			end
			depths[container] = deepest + 1
		end
	end
	return document
end

return FormattingTagPostProcessor
