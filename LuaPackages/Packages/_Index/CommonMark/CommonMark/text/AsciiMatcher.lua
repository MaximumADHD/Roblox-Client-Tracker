-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/text/AsciiMatcher.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local byte = string.byte

local AsciiMatcher = {}
AsciiMatcher.__index = AsciiMatcher

local Builder = {}
Builder.__index = Builder

-- PORT NOTE: the BitSet becomes a set table of byte values, and BitSet.clone becomes
-- table.clone.
type AsciiMatcherFields = {
	_set: { [number]: true },
	matches: (self: AsciiMatcher, c: number) -> boolean,
	newBuilder: (self: AsciiMatcher) -> Builder,
}

export type AsciiMatcher = typeof(setmetatable({} :: AsciiMatcherFields, AsciiMatcher))

type BuilderFields = {
	_set: { [number]: true },
	c: (self: Builder, c: number) -> Builder,
	anyOf: (self: Builder, s: string) -> Builder,
	anyOfSet: (self: Builder, characters: { [number]: true }) -> Builder,
	range: (self: Builder, from: number, toInclusive: number) -> Builder,
	build: (self: Builder) -> AsciiMatcher,
}

export type Builder = typeof(setmetatable({} :: BuilderFields, Builder))

function AsciiMatcher.new(builder: Builder): AsciiMatcher
	return setmetatable({ _set = builder._set }, AsciiMatcher) :: any
end

function AsciiMatcher.matches(self: AsciiMatcher, c: number): boolean
	return self._set[c] == true
end

function AsciiMatcher.newBuilder(self: AsciiMatcher): Builder
	return Builder.new(table.clone(self._set))
end

function AsciiMatcher.builder(): Builder
	return Builder.new({})
end

function AsciiMatcher.builderMatcher(matcher: AsciiMatcher): Builder
	return Builder.new(table.clone(matcher._set))
end

function Builder.new(set: { [number]: true }): Builder
	return setmetatable({ _set = set }, Builder) :: any
end

function Builder.c(self: Builder, c: number): Builder
	if c > 127 then
		error("Can only match ASCII characters")
	end
	self._set[c] = true
	return self
end

function Builder.anyOf(self: Builder, s: string): Builder
	for i = 0, #s - 1 do
		self:c(byte(s, i + 1))
	end
	return self
end

-- PORT NOTE: Java's Set<Character> is a set table of byte values.
function Builder.anyOfSet(self: Builder, characters: { [number]: true }): Builder
	for c in characters do
		self:c(c)
	end
	return self
end

function Builder.range(self: Builder, from: number, toInclusive: number): Builder
	for c = from, toInclusive do
		self:c(c)
	end
	return self
end

function Builder.build(self: Builder): AsciiMatcher
	return AsciiMatcher.new(self)
end

AsciiMatcher.Builder = Builder

return AsciiMatcher
