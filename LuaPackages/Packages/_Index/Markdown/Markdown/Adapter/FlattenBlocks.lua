-- Flattens blocks into a renderer TextBlock (QUOTE, LIST_ITEM), which shows only inline content
-- (Elvis, 2026-10-07: quotes and list items holding blocks are flattened for now). Each block
-- becomes one or more lines: a paragraph or heading its inline content, a code block one TEXT per
-- line, an HTML block its literal, a thematic break "---", and a list its items' blocks, each one
-- or more lines, the first starting with the item's marker as text, indented two spaces per
-- nesting level; an item's later blocks are separated by one BREAK. Lines are separated by a
-- BREAK; the blocks given, and those directly in a nested quote, are separated by two, the way a
-- blank quote line separated paragraphs in the existing parser. Content already in the target
-- counts as an earlier block, so appending to it starts with two BREAKs. A block that draws
-- nothing adds no line and no BREAK (Elvis, 2026-10-08, for empty quotes): an empty quote or
-- code block, or a paragraph or heading whose inline content maps to nothing. An item's marker
-- always draws. A block of another kind (a custom block with a rule of its own) is flattened as
-- its children, like a quote.

local Root = script:FindFirstAncestor("Markdown")
local Packages = Root.Parent
local Children = require(script.Parent.Children)
local CommonMark = require(Packages.CommonMark)
local ListMarkers = require(script.Parent.ListMarkers)
local Registry = require(script.Parent.Registry)
local RendererNodes = require(script.Parent.RendererNodes)
local Types = require(Root.Types)

type ParserNode = CommonMark.Node
type Registry = Registry.Registry
type RendererNode = Types.Node
type Unit = Children.Unit

local NO_KINDS: { [string]: boolean } = table.freeze({})

type Separator = "line" | "paragraph"

type Entry = {
	unit: Unit,
	separator: Separator,
	-- List marker text that starts the entry's first line
	prefix: string?,
	-- List nesting level
	level: number,
	-- The position, among the units given, of the unit the entry is part of
	top: number,
}

-- An entry's line, from beginLine to endLine, which takes it back when the entry added nothing of
-- its own: no node after the separator BREAKs, and no marker.
type Line = {
	entry: Entry,
	-- The target's child count before the line
	mark: number,
	startedBefore: boolean,
	-- The child count after which the entry's own content starts
	contentStart: number,
}

local INDENT = "  "

local function codeLines(literal: string?): { string }
	local code = literal or ""
	if string.sub(code, -1) == "\n" then
		code = string.sub(code, 1, -2)
	end
	return string.split(code, "\n")
end

-- Pushes entries so that they pop in the order given.
local function pushInOrder(stack: { Entry }, entries: { Entry })
	for i = #entries, 1, -1 do
		table.insert(stack, entries[i])
	end
end

-- A flattening in progress. `resume` runs it until a line needs its inline content adapted;
-- the engine adapts it (`out` is the target) and resumes, and the line ends then, so its
-- separators can be taken back when it drew nothing. Nothing here calls back into the engine.
export type Flattening = {
	_units: { Unit },
	_out: RendererNode,
	_registry: Registry,
	_drop: { [string]: boolean },
	_stack: { Entry },
	_startedLine: boolean,
	_drew: { boolean },
	-- The line waiting for its inline content
	_openLine: Line?,
}

local function beginLine(f: Flattening, entry: Entry): Line
	local out = f._out
	local line: Line = { entry = entry, mark = #out.children, startedBefore = f._startedLine, contentStart = 0 }
	if f._startedLine then
		RendererNodes.append(out, "BREAK")
		if entry.separator == "paragraph" then
			RendererNodes.append(out, "BREAK")
		end
	end
	f._startedLine = true
	if entry.prefix ~= nil then
		RendererNodes.appendText(out, entry.prefix)
	end
	line.contentStart = if entry.prefix ~= nil then line.mark else #out.children
	return line
end

local function endLine(f: Flattening, line: Line)
	local children = f._out.children
	if #children > line.contentStart then
		f._drew[line.entry.top] = true
		return
	end
	for i = #children, line.mark + 1, -1 do
		children[i] = nil
	end
	f._startedLine = line.startedBefore
end

local FlattenBlocks = {}

-- Blocks of the `drop` kinds are left out with their content.
function FlattenBlocks.start(
	units: { Unit },
	out: RendererNode,
	registry: Registry,
	drop: { [string]: boolean }?
): Flattening
	local stack: { Entry } = {}
	local topLevel: { Entry } = {}
	for i, unit in units do
		table.insert(topLevel, { unit = unit, separator = "paragraph", level = 0, top = i })
	end
	pushInOrder(stack, topLevel)
	return {
		_units = units,
		_out = out,
		_registry = registry,
		_drop = drop or NO_KINDS,
		_stack = stack,
		-- Content already in the target counts as an earlier block
		_startedLine = #out.children > 0,
		_drew = {},
		_openLine = nil,
	}
end

-- Runs until a line needs inline content adapted into the target, and returns it: a run of
-- inlines, or a block whose children are. Returns nothing when the flattening is done.
function FlattenBlocks.resume(f: Flattening): ({ ParserNode }?, ParserNode?)
	local openLine = f._openLine
	if openLine ~= nil then
		f._openLine = nil
		endLine(f, openLine)
	end
	local out = f._out
	local stack = f._stack
	while #stack > 0 do
		local entry = table.remove(stack) :: Entry
		local block = entry.unit.block
		local kind = if block == nil then nil else block.kind
		if block == nil then
			f._openLine = beginLine(f, entry)
			return entry.unit.inlines or {}, nil
		elseif f._drop[block.kind] then
			continue
		elseif kind == "Paragraph" or kind == "Heading" then
			f._openLine = beginLine(f, entry)
			return nil, block
		elseif kind == "FencedCodeBlock" or kind == "IndentedCodeBlock" then
			local line = beginLine(f, entry)
			for i, codeLine in codeLines((block :: CommonMark.FencedCodeBlock).literal) do
				if i > 1 then
					RendererNodes.append(out, "BREAK")
				end
				if codeLine ~= "" then
					RendererNodes.appendText(out, codeLine)
				end
			end
			endLine(f, line)
		elseif kind == "HtmlBlock" then
			local line = beginLine(f, entry)
			local literal = (block :: CommonMark.HtmlBlock).literal
			if literal ~= nil and literal ~= "" then
				RendererNodes.appendText(out, literal)
			end
			endLine(f, line)
		elseif kind == "ThematicBreak" then
			local line = beginLine(f, entry)
			RendererNodes.appendText(out, "---")
			endLine(f, line)
		elseif kind == "BulletList" or kind == "OrderedList" then
			local separator: Separator = entry.separator
			if entry.prefix ~= nil then
				-- The marker of the item this list starts gets a line of its own
				endLine(f, beginLine(f, entry))
				separator = "line"
			end
			local indent = string.rep(INDENT, entry.level)
			local bulletPrefix = ListMarkers.bulletPrefix(block)
			local number = ListMarkers.startNumber(block)
			local items: { Entry } = {}
			for _, unit in Children.units(block, f._registry, true) do
				local prefix = nil
				if unit.block ~= nil and unit.block.kind == "ListItem" then
					if number == nil then
						prefix = indent .. bulletPrefix
					else
						prefix = `{indent}{ListMarkers.orderedPrefix(number)}. `
						number += 1
					end
				end
				local itemSeparator: Separator = if #items == 0 then separator else "line"
				table.insert(items, {
					unit = unit,
					separator = itemSeparator,
					prefix = prefix,
					level = entry.level,
					top = entry.top,
				})
			end
			pushInOrder(stack, items)
		else
			-- A list item, a quote, or a custom block flattened as its children
			local itemUnits = Children.units(block, f._registry, false)
			if #itemUnits == 0 then
				-- Draws only the marker, if the entry has one
				endLine(f, beginLine(f, entry))
			end
			local level = if kind == "ListItem" then entry.level + 1 else entry.level
			local laterSeparator: Separator = if kind == "ListItem" then "line" else "paragraph"
			local entries: { Entry } = {}
			for i, unit in itemUnits do
				table.insert(entries, {
					unit = unit,
					separator = if i == 1 then entry.separator else laterSeparator,
					prefix = if i == 1 then entry.prefix else nil,
					level = level,
					top = entry.top,
				})
			end
			pushInOrder(stack, entries)
		end
	end
	return nil, nil
end

-- The units given that drew something, in order, once the flattening is done.
function FlattenBlocks.drawnUnits(f: Flattening): { Unit }
	local drawnUnits: { Unit } = {}
	for i, unit in f._units do
		if f._drew[i] then
			table.insert(drawnUnits, unit)
		end
	end
	return drawnUnits
end

return FlattenBlocks
