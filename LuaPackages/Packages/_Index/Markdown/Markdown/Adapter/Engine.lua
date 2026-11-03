-- Runs a Registry's rules over a parser Document and returns the renderer AST and its gaps.
-- Every walk is iterative (ROACTCHAT-2838). Work is a stack of frames: a container's units still
-- to adapt, a run of inlines, or a flattening. The top frame runs first, and a frame's work
-- pushes the frames it needs above it, so the walk is depth-first in document order: what a rule
-- schedules into its container lands before the next sibling's output. A handler's scheduling
-- calls only queue frames, which run in the order it made them; the handler never sees what they
-- produce. A flattening stays on the stack while each line's inlines are adapted in a frame above
-- it, then ends the line, taking back its separators when it drew nothing. No walk calls itself:
-- the one loop (drain) runs every frame.

local Root = script:FindFirstAncestor("Markdown")
local Packages = Root.Parent
local AdapterTypes = require(script.Parent.AdapterTypes)
local Children = require(script.Parent.Children)
local CommonMark = require(Packages.CommonMark)
local FlattenBlocks = require(script.Parent.FlattenBlocks)
local Passes = require(script.Parent.Passes)
local Registry = require(script.Parent.Registry)
local RendererNodes = require(script.Parent.RendererNodes)
local Types = require(Root.Types)

type Attributes = AdapterTypes.Attributes
type Context = AdapterTypes.Context
type EntryOptions = AdapterTypes.EntryOptions
type FlattenOptions = AdapterTypes.FlattenOptions
type Gap = AdapterTypes.Gap
type GapKind = AdapterTypes.GapKind
type Handler = AdapterTypes.Handler
type ParserNode = CommonMark.Node
type Registry = Registry.Registry
type RendererNode = Types.Node
type Unit = Children.Unit

type FrameKind = "units" | "inlines" | "flatten"

type Frame = {
	kind: FrameKind,
	into: RendererNode,
	-- units: what's left of a block container's children
	units: { Unit }?,
	index: number,
	-- inlines: a list of inline nodes, or a sibling chain from `cursor`, adapted with `token`, in a
	-- block `depth` blocks below ROOT
	list: { ParserNode }?,
	cursor: ParserNode?,
	token: number?,
	depth: number?,
	-- flatten: `node`'s children, or `units` when given
	node: ParserNode?,
	options: FlattenOptions?,
	-- flatten: leave out block units, keeping inline runs (blockInText = "drop")
	inlineOnly: boolean?,
	-- flatten, once started: its state, and which units came after `options.except`
	flattening: FlattenBlocks.Flattening?,
	afterExcept: { [Unit]: boolean }?,
}

type Run = {
	registry: Registry,
	root: RendererNode,
	stack: { Frame },
	gaps: { Gap },
	options: EntryOptions,
	-- The last TEXT a rule made and its inline run, which mergeText may join text into, and the
	-- texts it joined into each TEXT
	lastText: RendererNode?,
	lastTextToken: number,
	textParts: { [RendererNode]: { string } },
	-- The blocks dropEmpty may remove, and their parents
	droppable: { [RendererNode]: RendererNode },
	-- Each block's depth below ROOT
	depths: { [RendererNode]: number },
	lastToken: number,
}

-- Context plus the unit-level calls the built-in rules use (Rules).
export type InternalContext = Context & {
	_units: (self: InternalContext, node: ParserNode, inList: boolean) -> { Unit },
	-- `node` is the one a gap names; `options.except` and `options.gap` apply to `units`
	_flattenUnits: (
		self: InternalContext,
		units: { Unit },
		into: RendererNode,
		options: FlattenOptions?,
		node: ParserNode?
	) -> (),
}

local function newToken(run: Run): number
	run.lastToken += 1
	return run.lastToken
end

local function append(run: Run, parent: RendererNode, name: string, attributes: Attributes?): RendererNode
	local node = RendererNodes.append(parent, name, attributes)
	if not RendererNodes.isInline(node) then
		run.depths[node] = (run.depths[parent] or 0) + 1
		if Passes.isDroppable(name) then
			run.droppable[node] = parent
		end
	end
	return node
end

-- mergeText joins text into the TEXT before it when both came from the same inline run, as the
-- existing parser merges text; Passes assembles the joined text. A TEXT the adapter adds itself,
-- like a flattened list marker or a code line, isn't joined.
local function emitText(run: Run, into: RendererNode, text: string, token: number)
	if text == "" then
		return
	end
	local last = run.lastText
	if last ~= nil and run.lastTextToken == token and run.registry.passes.mergeText then
		local children = into.children
		if children[#children] == last then
			local parts = run.textParts[last]
			if parts == nil then
				run.textParts[last] = { last.text :: string, text }
			else
				table.insert(parts, text)
			end
			return
		end
	end
	run.lastText = RendererNodes.appendText(into, text)
	run.lastTextToken = token
end

local function inlineChainFrame(firstChild: ParserNode?, into: RendererNode, token: number, depth: number): Frame
	return { kind = "inlines", into = into, cursor = firstChild, index = 0, token = token, depth = depth }
end

local function hasBlockChild(node: ParserNode): boolean
	local child = node:getFirstChild()
	while child ~= nil do
		if child.isBlock then
			return true
		end
		child = child:getNext()
	end
	return false
end

-- The frame that adapts node's children into `into`, by what `into` holds. `depth` is the block
-- depth for an inline `into`.
local function childrenFrame(run: Run, node: ParserNode, into: RendererNode, token: number?, depth: number): Frame
	if RendererNodes.holdsBlocks(into) then
		return { kind = "units", into = into, units = Children.units(node, run.registry, false), index = 0 }
	elseif RendererNodes.isInline(into) or not hasBlockChild(node) then
		return inlineChainFrame(node:getFirstChild(), into, token or newToken(run), run.depths[into] or depth)
	end
	-- A TextBlock shows only inlines, so the blocks follow blockInText
	return {
		kind = "flatten",
		into = into,
		node = node,
		index = 0,
		inlineOnly = run.registry.blockInText == "drop",
	}
end

local Context = {}
Context.__index = Context

type ContextFields = {
	parent: RendererNode,
	depth: number,
	isFirstTopLevel: boolean,
	options: EntryOptions,
	_run: Run,
	_token: number?,
	_pending: { Frame }?,
	_closed: boolean,
	block: (self: ContextObject, name: string, attributes: Attributes?) -> RendererNode,
	append: (self: ContextObject, parent: RendererNode, name: string, attributes: Attributes?) -> RendererNode,
	text: (self: ContextObject, text: string) -> (),
	adaptChildrenOf: (self: ContextObject, node: ParserNode, into: RendererNode?) -> (),
	adaptInlinesOf: (self: ContextObject, node: ParserNode, into: RendererNode) -> (),
	flatten: (self: ContextObject, node: ParserNode, into: RendererNode, options: FlattenOptions?) -> (),
	childrenOf: (self: ContextObject, node: ParserNode) -> () -> ParserNode?,
	plainText: (self: ContextObject, node: ParserNode) -> string,
	gap: (self: ContextObject, kind: GapKind, node: ParserNode) -> (),
	_units: (self: ContextObject, node: ParserNode, inList: boolean) -> { Unit },
	_flattenUnits: (
		self: ContextObject,
		units: { Unit },
		into: RendererNode,
		options: FlattenOptions?,
		node: ParserNode?
	) -> (),
}

type ContextObject = typeof(setmetatable({} :: ContextFields, Context))

local function newContext(run: Run, parent: RendererNode, token: number?, depth: number): ContextObject
	return setmetatable({
		parent = parent,
		depth = depth,
		isFirstTopLevel = parent == run.root and #parent.children == 0,
		options = run.options,
		_run = run,
		_token = token,
		_pending = nil,
		_closed = false,
	}, Context) :: any
end

local function schedule(self: ContextObject, frame: Frame)
	if self._closed then
		error("An adapter context schedules work only while its handler runs")
	end
	local pending = self._pending
	if pending == nil then
		self._pending = { frame }
	else
		table.insert(pending, frame)
	end
end

local function tokenOf(self: ContextObject): number
	local token = self._token
	if token ~= nil then
		return token
	end
	local fresh = newToken(self._run)
	self._token = fresh
	return fresh
end

function Context.block(self: ContextObject, name: string, attributes: Attributes?): RendererNode
	return append(self._run, self.parent, name, attributes)
end

function Context.append(self: ContextObject, parent: RendererNode, name: string, attributes: Attributes?): RendererNode
	return append(self._run, parent, name, attributes)
end

function Context.text(self: ContextObject, text: string)
	if RendererNodes.holdsBlocks(self.parent) then
		error(`ctx:text needs an inline target, not {self.parent.name}`)
	end
	emitText(self._run, self.parent, text, tokenOf(self))
end

function Context.adaptChildrenOf(self: ContextObject, node: ParserNode, into: RendererNode?)
	schedule(self, childrenFrame(self._run, node, into or self.parent, self._token, self.depth))
end

function Context.adaptInlinesOf(self: ContextObject, node: ParserNode, into: RendererNode)
	schedule(self, inlineChainFrame(node:getFirstChild(), into, tokenOf(self), self._run.depths[into] or self.depth))
end

function Context.flatten(self: ContextObject, node: ParserNode, into: RendererNode, options: FlattenOptions?)
	schedule(self, { kind = "flatten", into = into, node = node, options = options, index = 0 })
end

function Context.childrenOf(_self: ContextObject, node: ParserNode): () -> ParserNode?
	local nextChild = node:getFirstChild()
	return function()
		local child = nextChild
		if child ~= nil then
			nextChild = child:getNext()
		end
		return child
	end
end

-- The node's inline content as plain text, as an image's alt text: a `text` rule gives its text,
-- a node with a literal (Code) gives the literal, a hard line break "\n", a dropped node nothing,
-- and any other node its children's. Walked with parent links instead of recursion.
function Context.plainText(self: ContextObject, node: ParserNode): string
	local registry = self._run.registry
	local parts: { string } = {}
	local current = node:getFirstChild()
	while current ~= nil do
		local rule = registry.inline[current.kind] or registry.unknownInline
		local descend = false
		if rule.form == "text" then
			table.insert(parts, (rule.text :: (ParserNode) -> string)(current))
		elseif rule.form ~= "drop" then
			local literal = if current.kind == "HardLineBreak" then "\n" else (current :: any).literal
			if type(literal) == "string" then
				table.insert(parts, literal)
			end
			descend = true
		end
		local firstChild = if descend then current:getFirstChild() else nil
		if firstChild ~= nil then
			current = firstChild
		else
			local up: ParserNode = current
			while up ~= node and up:getNext() == nil do
				up = up:getParent() :: ParserNode
			end
			current = if up == node then nil else up:getNext()
		end
	end
	return table.concat(parts)
end

function Context.gap(self: ContextObject, kind: GapKind, node: ParserNode)
	local entry: Gap = { kind = kind, node = node }
	table.insert(self._run.gaps, entry)
end

function Context._units(self: ContextObject, node: ParserNode, inList: boolean): { Unit }
	return Children.units(node, self._run.registry, inList)
end

function Context._flattenUnits(
	self: ContextObject,
	units: { Unit },
	into: RendererNode,
	options: FlattenOptions?,
	node: ParserNode?
)
	schedule(self, { kind = "flatten", into = into, units = units, options = options, node = node, index = 0 })
end

local function callHandler(
	run: Run,
	handler: Handler,
	node: ParserNode,
	parent: RendererNode,
	token: number?,
	depth: number
)
	local ctx = newContext(run, parent, token, depth)
	handler(node, (ctx :: any) :: Context)
	ctx._closed = true
	local pending = ctx._pending
	if pending ~= nil then
		for i = #pending, 1, -1 do
			table.insert(run.stack, pending[i])
		end
	end
end

local function adaptUnit(run: Run, unit: Unit, into: RendererNode)
	local block = unit.block
	if block == nil then
		local paragraph = append(run, into, "PARAGRAPH")
		table.insert(run.stack, {
			kind = "inlines",
			into = paragraph,
			list = unit.inlines,
			index = 0,
			token = newToken(run),
			depth = run.depths[paragraph],
		})
		return
	end
	local registry = run.registry
	local rule = registry.block[block.kind] or registry.unknownBlock
	if rule.form == "as" then
		local attributes = if rule.attributes ~= nil then rule.attributes(block) else nil
		local out = append(run, into, rule.as :: string, attributes)
		table.insert(run.stack, childrenFrame(run, block, out, nil, run.depths[out]))
	elseif rule.form == "handler" then
		callHandler(run, rule.handler :: Handler, block, into, nil, run.depths[into] or 0)
	end
end

local function adaptInline(run: Run, node: ParserNode, frame: Frame)
	local registry = run.registry
	local rule = registry.inline[node.kind] or registry.unknownInline
	local form = rule.form
	local into = frame.into
	local token = frame.token :: number
	if form == "text" then
		emitText(run, into, (rule.text :: (ParserNode) -> string)(node), token)
	elseif form == "style" then
		local styled = append(run, into, "STYLED_TEXT", { style = rule.style })
		local firstChild = node:getFirstChild()
		if firstChild ~= nil then
			table.insert(run.stack, inlineChainFrame(firstChild, styled, token, frame.depth :: number))
		end
	elseif form == "children" then
		local firstChild = node:getFirstChild()
		if firstChild ~= nil then
			table.insert(run.stack, inlineChainFrame(firstChild, into, token, frame.depth :: number))
		end
	elseif form == "handler" then
		callHandler(run, rule.handler :: Handler, node, into, token, frame.depth :: number)
	end
end

local NO_OPTIONS: FlattenOptions = table.freeze({})

local function startFlatten(run: Run, frame: Frame)
	local options = frame.options or NO_OPTIONS
	local units = frame.units or Children.units(frame.node :: ParserNode, run.registry, false)
	local except = options.except
	local flattened = units
	if except ~= nil or frame.inlineOnly then
		local kept: { Unit } = {}
		local after: { [Unit]: boolean } = {}
		local seenExcept = false
		for _, unit in units do
			if except ~= nil and unit.block == except then
				seenExcept = true
			elseif not frame.inlineOnly or unit.block == nil then
				table.insert(kept, unit)
				after[unit] = seenExcept
			end
		end
		flattened = kept
		frame.afterExcept = after
	end
	frame.flattening = FlattenBlocks.start(flattened, frame.into, run.registry, options.drop)
end

local function finishFlatten(run: Run, frame: Frame)
	local gap = (frame.options or NO_OPTIONS).gap
	if gap == nil then
		return
	end
	local drawnUnits = FlattenBlocks.drawnUnits(frame.flattening :: FlattenBlocks.Flattening)
	local lost = #drawnUnits > 1 or (#drawnUnits == 1 and not Children.isParagraphLike(drawnUnits[1]))
	local afterExcept = frame.afterExcept
	if afterExcept ~= nil then
		for _, unit in drawnUnits do
			lost = lost or afterExcept[unit] == true
		end
	end
	if lost then
		local entry: Gap = { kind = gap :: GapKind, node = frame.node :: ParserNode }
		table.insert(run.gaps, entry)
	end
end

-- Steps the flatten frame on top of the stack: it stays there while a line's inlines are adapted
-- in a frame above it, and resumes, ending the line, once that frame is done.
local function stepFlatten(run: Run, frame: Frame)
	if frame.flattening == nil then
		startFlatten(run, frame)
	end
	local inlines, parent = FlattenBlocks.resume(frame.flattening :: FlattenBlocks.Flattening)
	if inlines == nil and parent == nil then
		table.remove(run.stack)
		finishFlatten(run, frame)
		return
	end
	local out = frame.into
	local depth = run.depths[out] or 0
	if inlines ~= nil then
		table.insert(
			run.stack,
			{ kind = "inlines", into = out, list = inlines, index = 0, token = newToken(run), depth = depth }
		)
	else
		table.insert(run.stack, inlineChainFrame((parent :: ParserNode):getFirstChild(), out, newToken(run), depth))
	end
end

local function drain(run: Run)
	local stack = run.stack
	while #stack > 0 do
		local frame = stack[#stack]
		local kind = frame.kind
		if kind == "units" then
			frame.index += 1
			local unit = (frame.units :: { Unit })[frame.index]
			if unit == nil then
				table.remove(stack)
			else
				adaptUnit(run, unit, frame.into)
			end
		elseif kind == "inlines" then
			local node: ParserNode?
			local list = frame.list
			if list ~= nil then
				frame.index += 1
				node = list[frame.index]
			else
				node = frame.cursor
				if node ~= nil then
					frame.cursor = node:getNext()
				end
			end
			if node == nil then
				stack[#stack] = nil
			else
				adaptInline(run, node, frame)
			end
		else
			stepFlatten(run, frame)
		end
	end
end

local Engine = {}

local NO_ENTRY_OPTIONS: EntryOptions = table.freeze({})

function Engine.adapt(registry: Registry, document: ParserNode, options: EntryOptions?): (RendererNode, { Gap })
	-- The existing parser's ROOT has offset 1 too; the renderer doesn't read it
	local root = RendererNodes.create("ROOT")
	root.index = 1
	root.offset = 1
	local run: Run = {
		registry = registry,
		root = root,
		stack = {},
		gaps = {},
		options = options or NO_ENTRY_OPTIONS,
		lastText = nil,
		lastTextToken = 0,
		textParts = {},
		droppable = {},
		depths = { [root] = 0 },
		lastToken = 0,
	}
	table.insert(run.stack, childrenFrame(run, document, root, nil, 0))
	drain(run)
	Passes.finish(run.textParts, run.droppable, registry.passes)
	return root, run.gaps
end

return Engine
