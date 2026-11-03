-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/renderer/html/HtmlWriter.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Escaping = require(Root.internal.util.Escaping)
local LinkedHashMap = require(Root.internal.port.LinkedHashMap)

type LinkedHashMap<K, V> = LinkedHashMap.LinkedHashMap<K, V>

local byte = string.byte

local NEWLINE = byte("\n")

local HtmlWriter = {}
HtmlWriter.__index = HtmlWriter

type HtmlWriterFields = {
	_buffer: { string },
	_n: number,
	_lastChar: number,
	raw: (self: HtmlWriter, s: string) -> (),
	text: (self: HtmlWriter, text: string) -> (),
	tag: (self: HtmlWriter, name: string, attrs: LinkedHashMap<string, string?>?, voidElement: boolean?) -> (),
	line: (self: HtmlWriter) -> (),
	append: (self: HtmlWriter, s: string) -> (),
}

export type HtmlWriter = typeof(setmetatable({} :: HtmlWriterFields, HtmlWriter))

-- PORT NOTE: Java writes to an Appendable. Here `out` is a parts array (porting-from-java.md's
-- StringBuilder idiom): the writer appends each string as one part after any already in it, and the
-- caller concatenates the array once with table.concat. The IOException wrapping in append goes
-- away.
function HtmlWriter.new(out: { string }): HtmlWriter
	return setmetatable({ _buffer = out, _n = #out, _lastChar = 0 }, HtmlWriter) :: any
end

function HtmlWriter.raw(self: HtmlWriter, s: string)
	self:append(s)
end

function HtmlWriter.text(self: HtmlWriter, text: string)
	self:append(Escaping.escapeHtml(text))
end

-- PORT NOTE: the tag(name), tag(name, attrs) and tag(name, attrs, voidElement) overloads are one
-- method with optional trailing parameters. An omitted attrs is nil, which the null check below
-- already treats as no attributes, so NO_ATTRIBUTES is dropped; an omitted voidElement is false.
function HtmlWriter.tag(self: HtmlWriter, name: string, attrs: LinkedHashMap<string, string?>?, voidElement: boolean?)
	self:append("<")
	self:append(name)
	if attrs ~= nil and not attrs:isEmpty() then
		for key, value in attrs:entrySet() do
			self:append(" ")
			self:append(Escaping.escapeHtml(key))
			if value ~= nil then
				self:append('="')
				self:append(Escaping.escapeHtml(value))
				self:append('"')
			end
		end
	end
	if voidElement then
		self:append(" /")
	end

	self:append(">")
end

function HtmlWriter.line(self: HtmlWriter)
	if self._lastChar ~= 0 and self._lastChar ~= NEWLINE then
		self:append("\n")
	end
end

-- PORT NOTE: lastChar is the last byte appended rather than the last UTF-16 char. It is only
-- compared with 0 and '\n', and a string ends in one of those bytes exactly when it ends in that
-- character.
function HtmlWriter.append(self: HtmlWriter, s: string)
	self._n += 1
	self._buffer[self._n] = s
	local length = #s
	if length ~= 0 then
		self._lastChar = byte(s, length)
	end
end

return HtmlWriter
