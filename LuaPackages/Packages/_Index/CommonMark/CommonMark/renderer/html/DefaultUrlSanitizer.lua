-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/renderer/html/DefaultUrlSanitizer.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local UrlSanitizer = require(Root.renderer.html.UrlSanitizer)

type UrlSanitizer = UrlSanitizer.UrlSanitizer

local byte, gsub, lower, sub = string.byte, string.gsub, string.lower, string.sub

local SLASH = string.byte("/")
local HASH = string.byte("#")
local QUESTION_MARK = string.byte("?")
local COLON = string.byte(":")
local SPACE = string.byte(" ")
local TAB = string.byte("\t")
local NEWLINE = string.byte("\n")
local FORM_FEED = 0x0C
local CARRIAGE_RETURN = string.byte("\r")
local KELVIN_SIGN = "\u{212A}"

-- Allows http, https, mailto, and data protocols for url. Also allows protocol relative urls, and
-- relative urls. Implementation based on
-- https://github.com/OWASP/java-html-sanitizer/blob/f07e44b034a45d94d6fd010279073c38b6933072/src/main/java/org/owasp/html/FilterUrlByProtocolAttributePolicy.java
local DefaultUrlSanitizer = {}
DefaultUrlSanitizer.__index = DefaultUrlSanitizer

-- PORT NOTE: Java's Set<String> is a set table of protocol names.
type DefaultUrlSanitizerFields = {
	_protocols: { [string]: true },
	sanitizeLinkUrl: (self: DefaultUrlSanitizer, url: string) -> string,
	sanitizeImageUrl: (self: DefaultUrlSanitizer, url: string) -> string,
	stripHtmlSpaces: (self: DefaultUrlSanitizer, s: string) -> string,
	isHtmlSpace: (self: DefaultUrlSanitizer, ch: number) -> boolean,
}

export type DefaultUrlSanitizer = typeof(setmetatable({} :: DefaultUrlSanitizerFields, DefaultUrlSanitizer))

function DefaultUrlSanitizer.new(): UrlSanitizer
	return DefaultUrlSanitizer.newCollection({ "http", "https", "mailto", "data" })
end

-- PORT NOTE: Java's Collection<String> is an array of protocol names.
function DefaultUrlSanitizer.newCollection(protocols: { string }): UrlSanitizer
	local protocolSet: { [string]: true } = {}
	for _, protocol in ipairs(protocols) do
		protocolSet[protocol] = true
	end
	local self = setmetatable({ _protocols = protocolSet }, DefaultUrlSanitizer)
	return (self :: any) :: UrlSanitizer
end

function DefaultUrlSanitizer.sanitizeLinkUrl(self: DefaultUrlSanitizer, url: string): string
	url = self:stripHtmlSpaces(url)
	-- PORT NOTE: `break protocol_loop` from inside the switch is a plain break of the for loop.
	for i = 0, #url - 1 do
		local c = byte(url, i + 1)
		if c == SLASH or c == HASH or c == QUESTION_MARK then -- No protocol.
			break
		elseif c == COLON then
			-- PORT NOTE: Java's toLowerCase() lowercases in the default locale; this lowercases
			-- as Locale.ROOT does wherever the result can be ASCII. string.lower handles ASCII,
			-- and the gsub maps the Kelvin sign (U+212A), the only non-ASCII character whose
			-- lowercase is ASCII, to "k", so the check is exact for every ASCII protocol name.
			-- What remains: Java's result depends on the machine's locale (a Turkish locale
			-- lowercases "I" to a dotless i), and other non-ASCII characters aren't lowercased,
			-- so a non-ASCII protocol name given to newCollection only matches as written.
			local protocol = gsub(lower(sub(url, 1, i)), KELVIN_SIGN, "k")
			if not self._protocols[protocol] then
				return ""
			end
			break
		end
	end
	return url
end

function DefaultUrlSanitizer.sanitizeImageUrl(self: DefaultUrlSanitizer, url: string): string
	return self:sanitizeLinkUrl(url)
end

-- PORT NOTE: Java's two `for (; cond; step)` loops are while loops, because i and n are read
-- after them.
function DefaultUrlSanitizer.stripHtmlSpaces(self: DefaultUrlSanitizer, s: string): string
	local i, n = 0, #s
	while n > i do
		if not self:isHtmlSpace(byte(s, n - 1 + 1)) then
			break
		end
		n -= 1
	end
	while i < n do
		if not self:isHtmlSpace(byte(s, i + 1)) then
			break
		end
		i += 1
	end
	if i == 0 and n == #s then
		return s
	end
	return sub(s, i + 1, n)
end

function DefaultUrlSanitizer.isHtmlSpace(_self: DefaultUrlSanitizer, ch: number): boolean
	return ch == SPACE or ch == TAB or ch == NEWLINE or ch == FORM_FEED or ch == CARRIAGE_RETURN
end

return DefaultUrlSanitizer
