-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/node/SourceSpans.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local SourceSpan = require(Root.node.SourceSpan)

type SourceSpan = SourceSpan.SourceSpan

-- PORT NOTE: addAllFrom's Iterable<? extends Node> becomes an array of anything with
-- getSourceSpans, so this module doesn't require Node: SourceSpans → Node is one of the upward
-- deps in java-inventory.md *Layers*. Every Node satisfies the type.
type HasSourceSpans = {
	getSourceSpans: (self: any) -> { SourceSpan },
}

local SourceSpans = {}
SourceSpans.__index = SourceSpans

type SourceSpansFields = {
	_sourceSpans: { SourceSpan }?,
	getSourceSpans: (self: SourceSpans) -> { SourceSpan },
	addAllFrom: (self: SourceSpans, nodes: { HasSourceSpans }) -> (),
	addAll: (self: SourceSpans, other: { SourceSpan }) -> (),
}

export type SourceSpans = typeof(setmetatable({} :: SourceSpansFields, SourceSpans))

function SourceSpans.new(): SourceSpans
	return setmetatable({ _sourceSpans = nil }, SourceSpans) :: any
end

function SourceSpans.empty(): SourceSpans
	return SourceSpans.new()
end

function SourceSpans.getSourceSpans(self: SourceSpans): { SourceSpan }
	return if self._sourceSpans ~= nil then self._sourceSpans else {}
end

function SourceSpans.addAllFrom(self: SourceSpans, nodes: { HasSourceSpans })
	for _, node in ipairs(nodes) do
		self:addAll(node:getSourceSpans())
	end
end

function SourceSpans.addAll(self: SourceSpans, other: { SourceSpan })
	if #other == 0 then
		return
	end

	if self._sourceSpans == nil then
		self._sourceSpans = {}
	end
	local sourceSpans = self._sourceSpans :: { SourceSpan }

	if #sourceSpans == 0 then
		table.move(other, 1, #other, 1, sourceSpans)
	else
		local lastIndex = #sourceSpans - 1
		local a = sourceSpans[lastIndex + 1]
		local b = other[1]
		if a:getInputIndex() + a:getLength() == b:getInputIndex() then
			sourceSpans[lastIndex + 1] =
				SourceSpan.of(a:getLineIndex(), a:getColumnIndex(), a:getInputIndex(), a:getLength() + b:getLength())
			table.move(other, 2, #other, #sourceSpans + 1, sourceSpans)
		else
			table.move(other, 1, #other, #sourceSpans + 1, sourceSpans)
		end
	end
end

return SourceSpans
