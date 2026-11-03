--!strict
local Root = script:FindFirstAncestor("Markdown")
local Types = require(Root.Types)

type Token = Types.Token

type Matcher = { string | number | nil } -- { tokenName, pattern, suffixLength? }
type HeadMatchers = { [string]: { Matcher } }

local Constants = require(script.Parent.Parent.Constants)
local PostProcessTokens = require(script.Parent.PostProcessTokens)
local Utils = require(script.Parent.Utils)
local Flags = require(Root.Parent.MarkdownCore).Flags

local insert = table.insert

local LITERAL_IN_INLINE_CODE = {
	ACTION = true,
	OPEN = true,
	CLOSE = true,
	OPEN_CLOSE = true,
}

-- Utils.isInsideInlineCode rescans the line for every token, which is quadratic on long lines
local function createInlineCodeTracker(input: string)
	local lineStart = -1
	local openLength: number? = nil
	local runLength = 0
	local runEnd = -1
	local closesOnLine: boolean? = nil

	local function finishRun()
		if runLength == 0 then
			return
		end

		if openLength == nil then
			openLength = runLength
		elseif openLength == runLength then
			openLength = nil
		end

		runLength = 0
		closesOnLine = nil
	end

	local function startLine(newLineStart: number)
		if newLineStart ~= lineStart then
			lineStart = newLineStart
			openLength = nil
			runLength = 0
			runEnd = -1
			closesOnLine = nil
		end
	end

	return {
		addBacktick = function(currentLineStart: number, offset: number)
			startLine(currentLineStart)
			if offset ~= runEnd + 1 then
				finishRun()
			end

			runLength += 1
			runEnd = offset
		end,

		isInside = function(currentLineStart: number): boolean
			startLine(currentLineStart)
			finishRun()

			return openLength ~= nil
		end,

		isInsideClosed = function(currentLineStart: number, cursor: number): boolean
			startLine(currentLineStart)
			finishRun()
			if openLength == nil then
				return false
			end

			if closesOnLine == nil then
				closesOnLine = false
				local lineEnd = string.find(input, "\n", cursor, true) or #input + 1
				for run in string.gmatch(string.sub(input, cursor, lineEnd - 1), "`+") do
					if #run == openLength then
						closesOnLine = true
						break
					end
				end
			end

			return closesOnLine :: boolean
		end,
	}
end

local TABLE_ROW_MATCHERS: { Matcher } = {
	{ "TABLE_ROW", "^[ \t]*|?" },
}

local function getTableRowCells(line: string): { string }
	local trimmed = string.match(line, "^%s*(.-)%s*$") or ""
	trimmed = string.gsub(trimmed, "^|", "")
	trimmed = string.gsub(trimmed, "|$", "")
	trimmed = string.gsub(trimmed, "\\|", "")

	local cells = {}
	for cell in string.gmatch(trimmed .. "|", "([^|]*)|") do
		insert(cells, cell)
	end

	return cells
end

local function isDelimiterRow(line: string): boolean
	if not string.find(line, "|", 1, true) then
		return false
	end

	for _, cell in getTableRowCells(line) do
		if not string.match(cell, "^%s*:?%-+:?%s*$") then
			return false
		end
	end

	return true
end

local OTHER_BLOCK_PATTERNS = {
	"^ ? ? ?##?#?#?#?#?[ \t]",
	"^ ? ? ?##?#?#?#?#?$",
	"^ ? ? ?%-[ \t]*%-[ \t]*%-[ \t]*[%- \t]*$",
	"^ ? ? ?%*[ \t]*%*[ \t]*%*[ \t]*[%* \t]*$",
	"^ ? ? ?_[ \t]*_[ \t]*_[ \t]*[_ \t]*$",
	"^%s*[%*%-] ",
	"^%s*```",
	"^%s*~~~",
	"^%s*>",
	"^%s*[0-9]+%.[ \t]",
	"^%s*[A-Za-z]%.[ \t]",
}

local function startsOtherBlock(line: string): boolean
	for _, pattern in OTHER_BLOCK_PATTERNS do
		if string.find(line, pattern) then
			return true
		end
	end

	return false
end

local function couldBecomeDelimiterRow(line: string, headerCellCount: number): boolean
	return string.find(line, "^[%s|:%-]*$") ~= nil and #getTableRowCells(line) <= headerCellCount
end

local function isTableRow(input: string, lineStart: number, continuesTable: boolean, canStreamHeader: boolean): boolean
	local lineEnd = string.find(input, "\n", lineStart, true)
	local line = string.sub(input, lineStart, if lineEnd then lineEnd - 1 else #input)

	if continuesTable then
		return string.find(line, "%S") ~= nil and (isDelimiterRow(line) or not startsOtherBlock(line))
	end

	if not string.find(line, "|", 1, true) or startsOtherBlock(line) then
		return false
	end

	local mayBeStreamingHeader = canStreamHeader and string.sub(line, 1, 1) == "|"
	if not lineEnd then
		return mayBeStreamingHeader
	end

	local nextLineEnd = string.find(input, "\n", lineEnd + 1, true)
	local nextLine = string.sub(input, lineEnd + 1, if nextLineEnd then nextLineEnd - 1 else #input)
	local cellCount = #getTableRowCells(line)
	if isDelimiterRow(nextLine) and #getTableRowCells(nextLine) == cellCount then
		return true
	end

	return mayBeStreamingHeader and not nextLineEnd and couldBecomeDelimiterRow(nextLine, cellCount)
end

local BACKSLASH_MATCHERS = {
	{ "BREAK", "^\\\n" }, -- backslash at the end of a line
	{ "ESCAPE", "^\\(%p)" }, -- escape a single special character
}
local IMAGE_MATCHERS = {
	{ "IMAGE", "^!%[([^%]]+)%]%(([^%)]+)%)" }, -- ![Image](rbxassetid://123456)
}
local TAG_MATCHERS = {
	{ "OPEN_CLOSE", "^<([%w-]+)%s?([^>]*)/>" }, -- <img src="..."/>
	{ "CLOSE", "^</([%w-]+)%s?([^>]*)>" }, -- </span>
	{ "OPEN", "^<([%w-]+)%s?([^>]*)>" }, -- <span style="color: #fff">
}
local BOLD_MATCHERS = {
	{ "BOLD_2", "^%*%*" }, -- **
	{ "BOLD", "^%*" }, -- *
}
local ITALIC_MATCHERS = {
	{ "ITALIC_2", "^__" }, -- __
	{ "ITALIC", "^_" }, -- _
}
local STRIKE_MATCHERS = {
	{ "STRIKE", "^~" }, -- ~
}
local INLINE_CODE_MATCHERS = {
	{ "INLINE_CODE", "^`" }, -- `
}

local INLINE_HEAD_MATCHERS: HeadMatchers = {
	["\\"] = BACKSLASH_MATCHERS,
	["!"] = IMAGE_MATCHERS,
	["<"] = TAG_MATCHERS,
	["*"] = BOLD_MATCHERS,
	["_"] = ITALIC_MATCHERS,
	["~"] = STRIKE_MATCHERS,
	["`"] = INLINE_CODE_MATCHERS,
}

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
		{ "ORDERED_LIST_ITEM", "^(%s*)([0-9]+)%.[ \t]+" }, -- 1. blah
		{ "ORDERED_LIST_ITEM", "^(%s*)([A-Za-z])%.[ \t]+" }, -- a. blah
		{ "TABLE_ROW", "^|" }, -- |
	},
	["\\"] = BACKSLASH_MATCHERS,
	["-"] = {
		{ "TABLE_HEADER", "^[-]+" }, -- ---
	},
	["="] = {
		{ "TABLE_HEADER_2", "^[=]+" }, -- ===
	},
	["!"] = IMAGE_MATCHERS,
	["|"] = {
		{ "TABLE_DIVIDER", "^|" }, -- |
	},
	["<"] = TAG_MATCHERS,
	["*"] = BOLD_MATCHERS,
	["_"] = ITALIC_MATCHERS,
	["~"] = STRIKE_MATCHERS,
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
	["`"] = INLINE_CODE_MATCHERS,
}

-- Inside a block quote, a whitespace-only line is a blank line that ends the quote, just like an empty line.
-- Without this, the QUOTE pattern's leading %s* would swallow the blank line and the next quote line would be merged in.
-- Matched with the same lookahead as LINE_BREAK above: the trailing newline is left for the next line's block matchers.
local QUOTE_HEAD_MATCHERS: { Matcher } = { { "LINE_BREAK", "^[ \t\r]+\n", 1 } }
table.move(HEAD_MATCHERS["\n"], 1, #HEAD_MATCHERS["\n"], #QUOTE_HEAD_MATCHERS + 1, QUOTE_HEAD_MATCHERS)

local function withoutTableRow(matchers: { Matcher }): { Matcher }
	local filtered = {}
	for _, matcher in matchers do
		if matcher[1] ~= "TABLE_ROW" then
			insert(filtered, matcher)
		end
	end

	return filtered
end

local LINE_START_MATCHERS_WITHOUT_TABLE_ROW = withoutTableRow(HEAD_MATCHERS["\n"])
local QUOTE_HEAD_MATCHERS_WITHOUT_TABLE_ROW = withoutTableRow(QUOTE_HEAD_MATCHERS)

local INLINE_WRAPPER_CONFIG = {
	["LINK"] = {
		mapToText = function(token: Token)
			return token.capture and token.capture[1] or ""
		end,
		startToken = "LINK_START",
		endToken = "LINK_END",
		textStartOffset = 1,
	},
}

-- Default matchers when no other head matchers are found
local DEFAULT_MATCHERS: { Matcher } = {
	{ "HEADING", "^  ? ?(#+)%s*\n", 1 }, -- Closing sequence of an open header (otherwise it will be treated as plaintext)
}

local function tokenizeTextSpan(
	input: string,
	currentTextOffset: number,
	isInline: boolean,
	options: Types.ParserOptions
)
	local cursor = 0
	local textOffset = 0
	local lineStart = 0
	local tokens: { Token } = {}
	-- Name of the most recent block token, used to detect when we are inside a block quote
	local currentBlock: string? = nil
	local isPreviousLineTableRow = false
	local allowsStreamingHeader = Flags.FFlagMarkdownTables and options.isStreaming == true
	local inlineCode = if Flags.FFlagMarkdownTagFallbacks then createInlineCodeTracker(input) else nil
	-- Move the cursor through the input text one character at a time
	while cursor <= #input do
		-- Lookup a newline before the first character to match any "block" tokens after a newline
		local head = if cursor == 0 and not isInline then "\n" else string.sub(input, cursor, cursor)

		local isLineStart = head == "\n" and not isInline
		local startsTableRow = Flags.FFlagMarkdownTables
			and isLineStart
			and isTableRow(
				input,
				cursor + 1,
				isPreviousLineTableRow,
				allowsStreamingHeader and (cursor <= 1 or string.sub(input, cursor - 1, cursor - 1) == "\n")
			)
		local skipsTableRowMatcher = Flags.FFlagMarkdownTables and isLineStart and not startsTableRow

		-- If the char under the cursor is present in our match table, try to match with a relevant pattern
		local matchers: { Matcher } = if isInline
			then (INLINE_HEAD_MATCHERS[head] or {})
			elseif head == "\n" and currentBlock == "QUOTE" then if skipsTableRowMatcher
				then QUOTE_HEAD_MATCHERS_WITHOUT_TABLE_ROW
				else QUOTE_HEAD_MATCHERS
			elseif startsTableRow then TABLE_ROW_MATCHERS
			elseif skipsTableRowMatcher then LINE_START_MATCHERS_WITHOUT_TABLE_ROW
			else (HEAD_MATCHERS[head] or DEFAULT_MATCHERS)
		local found = false
		local foundToken: string? = nil

		local lookahead = 0
		if head == "\n" and not isInline then
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

			if not isInline then
				local _, lineBreak = string.find(result, "\n[^\n]*$")
				if lineBreak then
					lineStart = lineBreak + matchStart
				end
			end

			-- GFM unescapes \| in a table row before parsing its cells, even inside code
			local isEscapedTablePipe = Flags.FFlagMarkdownTables and currentBlock == "TABLE_ROW" and result == "\\|"
			if
				token == "ESCAPE"
				and not isEscapedTablePipe
				and if inlineCode then inlineCode.isInside(lineStart) else Utils.isInsideInlineCode(tokens, lineStart)
			then
				-- Backslashes are treated as literal text inside of inline code
				continue
			elseif inlineCode and LITERAL_IN_INLINE_CODE[token] and inlineCode.isInsideClosed(lineStart, cursor) then
				continue
			elseif Constants.STYLED_TEXT[token] then
				-- Style tokens need context to determine left/right flanking
				context = Utils.getCharacterContext(input, cursor, lookahead + tokenLength)
			end

			-- Match additional capture paramaters during tokenization
			local capture = { string.match(input, pattern, cursor + lookahead) }
			-- If isInline, only inline tags should be parsed
			if isInline and head == "<" and #capture > 0 and not options.inlineTags[capture[1]] then
				continue
			end

			if cursor ~= textOffset then
				-- Insert a text token for any plaintext in-between the previous non-text token and the new one
				insert(tokens, {
					name = "TEXT",
					text = string.sub(input, textOffset, cursor - 1),
					offset = textOffset + currentTextOffset,
				})
			end

			local isBlock = not isInline and head == "\n"
			if isBlock then
				currentBlock = token
			end
			insert(tokens, {
				name = token :: string,
				text = result,
				capture = if #capture > 0 then capture else nil,
				isBlock = isBlock,
				offset = cursor + currentTextOffset,
				context = context,
			})

			if inlineCode and token == "INLINE_CODE" then
				inlineCode.addBacktick(lineStart, cursor)
			end

			cursor += lookahead + tokenLength
			textOffset = cursor
			found = true
			foundToken = token
			break
		end

		if not found then
			-- If no token is found, increment cursor
			cursor += 1
		end

		if Flags.FFlagMarkdownTables and isLineStart then
			isPreviousLineTableRow = foundToken == "TABLE_ROW"
		end
	end
	-- Insert a text token for any plaintext at the end of the file
	if cursor ~= textOffset then
		insert(tokens, {
			name = "TEXT",
			text = string.sub(input, textOffset, cursor - 1),
			offset = textOffset + currentTextOffset,
		})
	end

	return PostProcessTokens(tokens)
end

local function tokenize(input: string, options: Types.ParserOptions)
	-- Initial pass on the entire input text
	local tokens = tokenizeTextSpan(input, 0, false, options)

	-- Process the text inside inline wrapper nodes
	local inlineProcessedTokens: { Token } = {}
	for _, token in tokens do
		local wrapperConfig = INLINE_WRAPPER_CONFIG[token.name]
		if wrapperConfig then
			-- Create the start token
			local inlineTokens = {
				{
					name = wrapperConfig.startToken,
					offset = token.offset,
					text = string.sub(input, token.offset, token.offset + wrapperConfig.textStartOffset - 1),
					capture = token.capture,
				},
			}

			-- Tokenize the text inside the wrapper and add it to the inline tokens
			local mappedText = wrapperConfig.mapToText(token)
			local inlineTokenizedText =
				tokenizeTextSpan(mappedText, token.offset + wrapperConfig.textStartOffset, true, options)
			table.move(inlineTokenizedText, 1, #inlineTokenizedText, 2, inlineTokens)

			-- Create the end token
			local endTokenStartOffset = token.offset + wrapperConfig.textStartOffset + #mappedText
			insert(inlineTokens, {
				name = wrapperConfig.endToken,
				offset = endTokenStartOffset,
				text = string.sub(input, endTokenStartOffset, token.offset + #token.text - 1),
			})

			table.move(inlineTokens, 1, #inlineTokens, #inlineProcessedTokens + 1, inlineProcessedTokens)
		else
			insert(inlineProcessedTokens, token)
		end
	end

	return inlineProcessedTokens
end

return tokenize
