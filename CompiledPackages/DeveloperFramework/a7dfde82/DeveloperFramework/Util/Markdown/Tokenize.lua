--!strict
local Types = require(script.Parent.Types)
type Token = Types.Token

type Matcher = { string | number | nil } -- { tokenName, pattern, suffixLength? }
type HeadMatchers = { [string]: { Matcher } }

local Constants = require(script.Parent.Constants)
local PostProcessTokens = require(script.Parent.PostProcessTokens)
local Utils = require(script.Parent.Utils)

local insert = table.insert

local HEAD_MATCHERS: HeadMatchers = {
	-- Lookahead after a newline
	["\n"] = {
		{ "LINE_BREAK", "^\n", 1 }, -- another newline (but don't consume it)
		{ "HEADING", "^ ? ? ?(##?#?#?#?#?)[ \t]+", 1 }, -- Up to 3 indents and 6 levels for headers
		{ "HEADING", "^ ? ? ?(##?#?#?#?#?)\n", 1 }, -- Empty headers
		{ "DIVIDER", "^ ? ? ?%-[ \t]*%-[ \t]*%-[ \t]*[%- \t]*\n", 1 },
		{ "DIVIDER", "^ ? ? ?%*[ \t]*%*[ \t]*%*[ \t]*[%* \t]*\n", 1 },
		{ "DIVIDER", "^ ? ? ?_[ \t]*_[ \t]*_[ \t]*[_ \t]*\n", 1 },
		{ "BULLET_LIST_ITEM", "^(%s*)(%* )" }, -- * blah
		{ "BULLET_LIST_ITEM_2", "^(%s*)(- )" }, -- - blah
		{ "CODE_BLOCK", "^```[ \t]*([^\n]*)[ \t]*\n(.-)```" }, -- ```\n```, ```lua\n```
		{ "CODE_BLOCK", "^```[ \t]*([^\n]*)[ \t]*\n(.+)$" }, -- ```\nEOF, ```lua\nEOF
		{ "CODE_BLOCK", "^~~~[ \t]*([^\n]*)[ \t]*\n(.-)~~~" }, -- ~~~foo\n```, ~~~foo\n```
		{ "CODE_BLOCK", "^~~~[ \t]*([^\n]*)[ \t]*\n(.+)$" }, -- ~~~foo\nEOF, ~~~foo\nEOF
		{ "QUOTE", "^%s*>" }, -- > Quote
		{ "ORDERED_LIST_ITEM", "^(%s*)([0-9A-Za-z]+)%." }, -- a. blah
		{ "TABLE_ROW", "^|" }, -- |
	},
	["\\"] = {
		{ "BREAK", "^\\\n" }, -- backslash at the end of a line
		{ "ESCAPE", "^\\(%p)" }, -- escape a single special character
	},
	["-"] = {
		{ "TABLE_HEADER", "^[-]+" }, -- ---
	},
	["="] = {
		{ "TABLE_HEADER_2", "^[=]+" }, -- ===
	},
	["!"] = {
		{ "IMAGE", "^!%[([^%]]+)%]%(([^%)]+)%)" }, -- ![Image](rbxassetid://123456)
	},
	["|"] = {
		{ "TABLE_DIVIDER", "^|" }, -- |
	},
	["<"] = {
		{ "OPEN_CLOSE", "^<([%w-]+)%s?([^>]*)/>" }, -- <img src="..."/>
		{ "CLOSE", "^</([%w-]+)%s?([^>]*)>" }, -- </span>
		{ "OPEN", "^<([%w-]+)%s?([^>]*)>" }, -- <span style="color: #fff">
	},
	["*"] = {
		{ "BOLD_2", "^%*%*" }, -- **
		{ "BOLD", "^%*" }, -- *
	},
	["_"] = {
		{ "ITALIC_2", "^__" }, -- __
		{ "ITALIC", "^_" }, -- _
	},
	["~"] = {
		{ "STRIKE", "^~" }, -- ~
	},
	["["] = {
		{ "LINK", '^%[([^%]]*)%]%([ \t]*([^\n\t ]+)[ \t]"([^\n]+)"[ \t]*%)' }, -- [Link](http://example.com "Title")
		{ "LINK", "^%[([^%]]*)%]%([ \t]*([^\n\t ]+)[ \t]'([^\n]+)'[ \t]*%)" }, -- [Link](http://example.com 'Title')
		{ "LINK", "^%[([^%]]*)%]%([ \t]*([^\n\t ]+)[ \t]%(([^\n]+)%)[ \t]*%)" }, -- [Link](http://example.com (Title))
		{ "LINK", "^%[([^%]]*)%]%([ \t]*%)" }, -- Empty link destination
		{ "LINK", "^%[([^%]]*)%]%([ \t]*<>[ \t]*%)" }, -- Empty pointy link destination
		{ "LINK", "^%[([^%]]*)%]%([ \t]*<([^\n\t]+)>[ \t]*%)" }, -- [Link](<http://example.com>)
		{ "LINK", "^%[([^%]]*)%]%([ \t]*([^\n\t ]+)[ \t]*%)" }, -- [Link](http://example.com)
		{ "ACTION", "^%[%[([^%]]+)%]%]" }, -- [[Action]]
	},
	["`"] = {
		{ "INLINE_CODE", "^`" }, -- `
	},
}

-- Default matchers when no other head matchers are found
local DEFAULT_MATCHERS: { Matcher } = {
	{ "HEADING", "^  ? ?(#+)%s*\n", 1 }, -- Closing sequence of an open header (otherwise it will be treated as plaintext)
}

local function tokenize(input: string)
	local cursor = 0
	local textOffset = 0
	local lineStart = 0
	local tokens: { Token } = {}
	-- Move the cursor through the input text one character at a time
	while cursor <= #input do
		-- Lookup a newline before the first character to match any "block" tokens after a newline
		local head = if cursor == 0 then "\n" else string.sub(input, cursor, cursor)
		-- If the char under the cursor is present in our match table, try to match with a relevant pattern
		local matchers = HEAD_MATCHERS[head] or DEFAULT_MATCHERS
		local found = false

		local lookahead = 0
		if head == "\n" then
			lookahead = 1
			lineStart = cursor
		end
		for _, matcher in matchers do
			local pattern = matcher[2] :: string
			local matchStart, matchEnd = string.find(input, pattern, cursor + lookahead)
			if not (matchStart and matchEnd) then
				continue
			end

			local result = string.sub(input, matchStart, matchEnd)
			local token = matcher[1] :: string

			-- Subtract the length of the suffix in the match as this is for lookahead only
			local suffixLength = matcher[3] :: number? or 0
			local tokenLength = #result - suffixLength
			local context = nil

			local _, lineBreak = string.find(result, "\n[^\n]*$")
			if lineBreak then
				lineStart = lineBreak + matchStart
			end

			if token == "ESCAPE" and Utils.isInsideInlineCode(tokens, lineStart) then
				-- Backslashes are treated as literal text inside of inline code
				continue
			elseif Constants.STYLED_TEXT[token] then
				-- Style tokens need context to determine left/right flanking
				context = Utils.getCharacterContext(input, cursor, lookahead + tokenLength)
			end

			if cursor ~= textOffset then
				-- Insert a text token for any plaintext in-between the previous non-text token and the new one
				insert(tokens, {
					name = "TEXT",
					text = string.sub(input, textOffset, cursor - 1),
					offset = textOffset,
				})
			end

			-- Match additional capture paramaters during tokenization
			local capture = { string.match(input, pattern, cursor + lookahead) }

			insert(tokens, {
				name = token :: string,
				text = result,
				capture = if #capture > 0 then capture else nil,
				isBlock = head == "\n",
				offset = cursor,
				context = context,
			})
			cursor += lookahead + tokenLength
			textOffset = cursor
			found = true
			break
		end

		if not found then
			-- If no token is found, increment cursor
			cursor += 1
		end
	end
	-- Insert a text token for any plaintext at the end of the file
	if cursor ~= textOffset then
		insert(tokens, {
			name = "TEXT",
			text = string.sub(input, textOffset, cursor - 1),
			offset = textOffset,
		})
	end

	return PostProcessTokens(tokens)
end

return tokenize
