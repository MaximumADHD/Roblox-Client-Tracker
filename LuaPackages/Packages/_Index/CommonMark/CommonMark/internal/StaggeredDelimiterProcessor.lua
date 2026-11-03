-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/internal/StaggeredDelimiterProcessor.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local DelimiterProcessor = require(Root.parser.delimiter.DelimiterProcessor)
local DelimiterRun = require(Root.parser.delimiter.DelimiterRun)

type DelimiterProcessor = DelimiterProcessor.DelimiterProcessor
type DelimiterRun = DelimiterRun.DelimiterRun

-- An implementation of DelimiterProcessor that dispatches all calls to two or more other
-- DelimiterProcessors depending on the length of the delimiter run. All child DelimiterProcessors
-- must have different minimum lengths. A given delimiter run is dispatched to the child with the
-- largest acceptable minimum length. If no child is applicable, the one with the largest minimum
-- length is chosen.
local StaggeredDelimiterProcessor = {}
StaggeredDelimiterProcessor.__index = StaggeredDelimiterProcessor

-- PORT NOTE: the LinkedList of processors is an array.
type StaggeredDelimiterProcessorFields = {
	_delim: number,
	_minLength: number,
	_processors: { DelimiterProcessor }, -- in reverse getMinLength order
	-- PORT NOTE: not in Java; set when every processor has the port-internal
	-- `_rejectsByMultipleOf3Rule` flag, so that processDelimiters can bound its opener search
	-- (see the PORT NOTE there).
	_rejectsByMultipleOf3Rule: boolean,
	getOpeningCharacter: (self: StaggeredDelimiterProcessor) -> number,
	getClosingCharacter: (self: StaggeredDelimiterProcessor) -> number,
	getMinLength: (self: StaggeredDelimiterProcessor) -> number,
	add: (self: StaggeredDelimiterProcessor, dp: DelimiterProcessor) -> (),
	findProcessor: (self: StaggeredDelimiterProcessor, len: number) -> DelimiterProcessor,
	process: (self: StaggeredDelimiterProcessor, openingRun: DelimiterRun, closingRun: DelimiterRun) -> number,
}

export type StaggeredDelimiterProcessor = typeof(setmetatable(
	{} :: StaggeredDelimiterProcessorFields,
	StaggeredDelimiterProcessor
))

function StaggeredDelimiterProcessor.new(delim: number): StaggeredDelimiterProcessor
	return setmetatable({
		_delim = delim,
		_minLength = 0,
		_processors = {},
		_rejectsByMultipleOf3Rule = false,
	}, StaggeredDelimiterProcessor) :: any
end

function StaggeredDelimiterProcessor.getOpeningCharacter(self: StaggeredDelimiterProcessor): number
	return self._delim
end

function StaggeredDelimiterProcessor.getClosingCharacter(self: StaggeredDelimiterProcessor): number
	return self._delim
end

function StaggeredDelimiterProcessor.getMinLength(self: StaggeredDelimiterProcessor): number
	return self._minLength
end

-- PORT NOTE: the ListIterator walk is an index loop; `it.previous(); it.add(dp)` inserts dp
-- before p, which is table.insert at p's index. The conflict message formats the processors with
-- tostring, where Java uses their Object.toString.
function StaggeredDelimiterProcessor.add(self: StaggeredDelimiterProcessor, dp: DelimiterProcessor)
	local len = dp:getMinLength()
	local added = false
	for i, p in ipairs(self._processors) do
		local pLen = p:getMinLength()
		if len > pLen then
			table.insert(self._processors, i, dp)
			added = true
			break
		elseif len == pLen then
			local delim = string.char(self._delim)
			error(
				`Cannot add two delimiter processors for char '{delim}' and minimum length {len}; `
					.. `conflicting processors: {tostring(p)}, {tostring(dp)}`
			)
		end
	end
	if not added then
		table.insert(self._processors, dp)
		self._minLength = len
	end
	local rejectsByMultipleOf3Rule = true
	for _, p in ipairs(self._processors) do
		if (p :: any)._rejectsByMultipleOf3Rule ~= true then
			rejectsByMultipleOf3Rule = false
		end
	end
	self._rejectsByMultipleOf3Rule = rejectsByMultipleOf3Rule
end

function StaggeredDelimiterProcessor.findProcessor(self: StaggeredDelimiterProcessor, len: number): DelimiterProcessor
	for _, p in ipairs(self._processors) do
		if p:getMinLength() <= len then
			return p
		end
	end
	return self._processors[1]
end

function StaggeredDelimiterProcessor.process(
	self: StaggeredDelimiterProcessor,
	openingRun: DelimiterRun,
	closingRun: DelimiterRun
): number
	return self:findProcessor(openingRun:length()):process(openingRun, closingRun)
end

return StaggeredDelimiterProcessor
