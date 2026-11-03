-- The built-in rules, as factories, for the default rules (DefaultRules) and for profiles that
-- override one with other options.

local Root = script:FindFirstAncestor("Markdown")
local Packages = Root.Parent
local AdapterTypes = require(script.Parent.AdapterTypes)
local Children = require(script.Parent.Children)
local CommonMark = require(Packages.CommonMark)
local Engine = require(script.Parent.Engine)
local ListMarkers = require(script.Parent.ListMarkers)
local Types = require(Root.Types)

type Attributes = AdapterTypes.Attributes
type Context = AdapterTypes.Context
type Handler = AdapterTypes.Handler
type InternalContext = Engine.InternalContext
type ParserNode = CommonMark.Node
type RendererNode = Types.Node

export type ListOptions = {
	-- Whether a loose top-level list is one padded LIST per item, since CommonMark spaces every
	-- item of a loose list (the existing parser pads only where a blank line separates items).
	-- Defaults to true. A loose list drawn tight is a LooseList gap.
	splitLooseTopLevel: boolean?,
}

export type QuoteOptions = {
	-- What a quote inside a quote becomes: flattened like the rest (the default), or dropped
	nested: ("flatten" | "drop")?,
}

type ListTask = {
	list: ParserNode,
	out: RendererNode,
	-- Where a loose list's later items start their own LIST: the ROOT, for a top-level list
	splitParent: RendererNode?,
}

local function optionalAttributes(url: string?, title: string?): Attributes?
	if url == nil and title == nil then
		return nil
	end
	return { url = url, title = title }
end

-- A list's items, as LIST_ITEMs with their prefix. The item's first nested list stays real
-- structure: the sibling LIST after the item, which is what renderList pairs with it, queued on
-- `tasks`. Every other block, a later list included, is flattened into the prefixed item, since a
-- LIST_ITEM without a prefix would still draw a bullet.
local function appendListItems(task: ListTask, tasks: { ListTask }, ctx: InternalContext)
	local list = task.list
	local out = task.out
	local isLoose = not (list :: CommonMark.ListBlock).tight
	if isLoose and task.splitParent == nil then
		ctx:gap("LooseList", list)
	end
	local splitParent = if isLoose then task.splitParent else nil
	local bulletPrefix = ListMarkers.bulletPrefix(list)
	local number = ListMarkers.startNumber(list)
	local lastItem: RendererNode? = nil
	local function appendItem(): RendererNode
		-- The renderer pads a LIST, not a LIST_ITEM, so each item of a split loose list gets its own
		if splitParent ~= nil and lastItem ~= nil then
			out = ctx:append(splitParent, "LIST")
		end
		local prefix = if number == nil then bulletPrefix else ListMarkers.orderedPrefix(number)
		if number ~= nil then
			number += 1
		end
		local item = ctx:append(out, "LIST_ITEM", { prefix = prefix })
		lastItem = item
		return item
	end

	for _, unit in ctx:_units(list, true) do
		local block = unit.block
		if block ~= nil and block.kind == "ListItem" then
			-- appendItem() reassigns `out` (the current LIST), so call it before reading `out`.
			local item = appendItem()
			local itemUnits = ctx:_units(block, false)
			local nestedList: ParserNode? = nil
			for _, itemUnit in itemUnits do
				if Children.isList(itemUnit) then
					nestedList = itemUnit.block
					break
				end
			end
			ctx:_flattenUnits(itemUnits, item, { except = nestedList, gap = "ListItemBlocks" }, block)
			if nestedList ~= nil then
				table.insert(tasks, { list = nestedList, out = ctx:append(out, "LIST") })
			end
		else
			-- Content an unknown custom block put directly in the list joins the item before it,
			-- or starts one
			ctx:_flattenUnits({ unit }, lastItem or appendItem())
		end
	end
end

local Rules = {}

-- BulletList and OrderedList → LIST, ListItem → LIST_ITEM{prefix}, with the item's first nested
-- list as the LIST sibling after it and its other blocks flattened into it. The nested lists are
-- queued on an explicit stack and shaped by this rule too: a nested list's own kind rule isn't
-- used.
function Rules.list(options: ListOptions?): Handler
	local splitLooseTopLevel = options == nil or options.splitLooseTopLevel ~= false
	return function(list: ParserNode, ctx: Context)
		local internal = (ctx :: any) :: InternalContext
		local tasks: { ListTask } = {
			{
				list = list,
				out = ctx:block("LIST"),
				splitParent = if splitLooseTopLevel and ctx.depth == 0 then ctx.parent else nil,
			},
		}
		while #tasks > 0 do
			appendListItems(table.remove(tasks) :: ListTask, tasks, internal)
		end
	end
end

-- BlockQuote → QUOTE, its content flattened. One that draws nothing is removed by dropEmpty.
function Rules.quote(options: QuoteOptions?): Handler
	local nested = if options ~= nil then options.nested or "flatten" else "flatten"
	if nested ~= "flatten" and nested ~= "drop" then
		error(`Rules.quote's nested must be "flatten" or "drop", not {nested}`)
	end
	local drop = if nested == "drop" then table.freeze({ BlockQuote = true }) else nil
	return function(quote: ParserNode, ctx: Context)
		ctx:flatten(quote, ctx:block("QUOTE"), { gap = "QuoteBlocks", drop = drop })
	end
end

-- FencedCodeBlock and IndentedCodeBlock → CODE_BLOCK{language, text}, the language being the info
-- string's first word, as CommonMark's HTML renderer takes it for the language class.
function Rules.codeBlock(): Handler
	return function(node: ParserNode, ctx: Context)
		local info = if node.kind == "FencedCodeBlock" then (node :: CommonMark.FencedCodeBlock).info else nil
		local attributes: Attributes? = nil
		if info ~= nil and info ~= "" then
			local space = string.find(info, " ", 1, true)
			attributes = { language = if space then string.sub(info, 1, space - 1) else info }
		end
		local codeBlock = ctx:block("CODE_BLOCK", attributes)
		local text = (node :: CommonMark.FencedCodeBlock).literal or ""
		if string.sub(text, -1) == "\n" then
			text = string.sub(text, 1, -2)
		end
		codeBlock.text = text
	end
end

-- ThematicBreak → DIVIDER. A handler, since `as` names only blocks that hold the node's children.
function Rules.divider(): Handler
	return function(_node: ParserNode, ctx: Context)
		ctx:block("DIVIDER")
	end
end

-- HtmlBlock → PARAGRAPH of one TEXT, its literal.
function Rules.htmlBlock(): Handler
	return function(node: ParserNode, ctx: Context)
		local paragraph = ctx:block("PARAGRAPH")
		local literal = (node :: CommonMark.HtmlBlock).literal
		if literal ~= nil and literal ~= "" then
			ctx:append(paragraph, "TEXT").text = literal
		end
	end
end

-- Code → an INLINE_CODE STYLED_TEXT holding one TEXT of its literal.
function Rules.code(): Handler
	return function(node: ParserNode, ctx: Context)
		local code = ctx:append(ctx.parent, "STYLED_TEXT", { style = "INLINE_CODE" })
		local literal = (node :: CommonMark.Code).literal
		if literal ~= nil and literal ~= "" then
			ctx:append(code, "TEXT").text = literal
		end
	end
end

-- HardLineBreak → BREAK.
function Rules.hardLineBreak(): Handler
	return function(_node: ParserNode, ctx: Context)
		ctx:append(ctx.parent, "BREAK")
	end
end

-- Link → LINK{url, title} holding its content.
function Rules.link(): Handler
	return function(node: ParserNode, ctx: Context)
		local link = node :: CommonMark.Link
		local out = ctx:append(ctx.parent, "LINK", optionalAttributes(link.destination, link.title))
		ctx:adaptInlinesOf(node, out)
	end
end

-- Image → IMAGE{url, title} with `text` its alt content as plain text.
function Rules.image(): Handler
	return function(node: ParserNode, ctx: Context)
		local image = node :: CommonMark.Image
		local out = ctx:append(ctx.parent, "IMAGE", optionalAttributes(image.destination, image.title))
		out.text = ctx:plainText(node)
	end
end

return Rules
