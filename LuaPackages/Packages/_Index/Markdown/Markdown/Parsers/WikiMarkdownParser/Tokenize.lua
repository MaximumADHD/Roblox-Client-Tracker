local Root = script:FindFirstAncestor("Markdown")
local Types = require(Root.Types)

type Token = Types.Token

type Matcher = { string | number | nil } -- { tokenName, pattern, capturePattern?, suffixLength? }
type HeadMatchers = { [string]: { Matcher } }

local insert = table.insert

local function tokenize(input: string)
	local headMatchers: HeadMatchers = {
		-- Lookahead after a newline
		["\n"] = {
			{ "LINE_BREAK", "^\n", "^\n", 1 }, -- another newline (but don't consume it)
			{ "HEADING", "^[#]+", "^([#]+)" }, -- # blah, ## blah, ### blah etc.
			{ "DIVIDER", "^[-]+[ \t]*\n", "^([-]+)[ \t]*\n", 1 }, -- ---
			{ "DIVIDER", "^[=]+[ \t]*\n", "^([=]+)[ \t]*\n", 1 }, -- ===
			{ "BULLET_LIST_ITEM", "^%s*%*", "^(%s*)(%*)" }, -- * blah
			{ "BULLET_LIST_ITEM_2", "^%s*-", "^(%s*)(-)" }, -- - blah
			{ "CODE_BLOCK", "^```[%w]*\n.-```", "^```([%w]*)\n(.-)```" }, -- ```\n```, ```lua\n```
			{ "CODE_BLOCK", "^```[%w]*\n.+$", "^```([%w]*)\n(.+)$" }, -- ```\nEOF, ```lua\nEOF
			{ "QUOTE", "^%s*>" }, -- > Quote
			{ "ORDERED_LIST_ITEM", "^%s*[0-9A-Za-z]+%.", "^(%s*)([0-9A-Za-z]+)%." }, -- a. blah
			{ "TABLE_ROW", "^|" }, -- |
		},
		["\\"] = {
			{ "ESCAPE", "^\\.", "^\\(.)" }, -- escape a single character
		},
		["-"] = {
			{ "TABLE_HEADER", "^[-]+" }, -- ---
		},
		["="] = {
			{ "TABLE_HEADER_2", "^[=]+" }, -- ===
		},
		["!"] = {
			{ "IMAGE", "^!%[[^%]]+%]%([^%)]+%)", "^!%[([^%]]+)%]%(([^%)]+)%)" }, -- ![Image](rbxassetid://123456)
		},
		["|"] = {
			{ "TABLE_DIVIDER", "^|" }, -- |
		},
		["<"] = {
			{ "OPEN_CLOSE", "^<[^>]*/>", "^<([%w-]+)%s?([^>]*)/>" }, -- <img src="..."/>
			{ "CLOSE", "^</[^>]*>", "^</([%w-]+)%s?([^>]*)>" }, -- </span>
			{ "OPEN", "^<[^>]*>", "^<([%w-]+)%s?([^>]*)>" }, -- <span style="color: #fff">
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
			{ "LINK", "^%[[^%]]+%]%([^%)]+%)", "^%[([^%]]+)%]%(([^%)]+)%)" }, -- [Link](http://example.com)
			{ "ACTION", "^%[%[[^%]]+%]%]", "^%[%[([^%]]+)%]%]" }, -- [[Action]]
		},
		["`"] = {
			{ "INLINE_CODE", "^`[^\n`]*`", "^`([^\n`]*)`" }, -- `inline code`
			{ "INLINE_CODE", "^`[^\n`]+$", "^`([^\n`]+)$" }, -- `inline codeEOF
		},
	}
	local cursor = 0
	local textOffset = 0
	local tokens: { Token } = {}
	-- Move the cursor through the input text one character at a time
	while cursor <= #input do
		-- Lookup a newline before the first character to match any "block" tokens after a newline
		local head = if cursor == 0 then "\n" else input:sub(cursor, cursor)
		-- If the char under the cursor is present in our match table, try to match with a relevant pattern
		local matchers = headMatchers[head]
		local found = false
		if matchers then
			local lookahead = if head == "\n" then 1 else 0
			local tail = input:sub(cursor + lookahead)
			for _, matcher in matchers do
				local pattern = matcher[2] :: string
				local result = tail:match(pattern)
				if result then
					local token = matcher[1] :: string
					-- Match additional capture paramaters during tokenization
					-- We need to do this separately because capture blocks prevent :match from reporting the full matched length
					-- which we need to move the cursor past the token length
					local capture = matcher[3] :: string?
					-- Subtract the length of the suffix in the match as this is for lookahead only
					local suffixLength = matcher[4] :: number? or 0
					local tokenLength = #result - suffixLength
					if cursor ~= textOffset then
						-- Insert a text token for any plaintext in-between the previous non-text token and the new one
						insert(tokens, {
							name = "TEXT",
							text = input:sub(textOffset, cursor - 1),
							offset = textOffset,
						})
					end
					insert(tokens, {
						name = token,
						text = result,
						capture = if capture then { tail:match(capture) } else nil,
						isBlock = head == "\n",
						offset = cursor,
					})
					cursor += lookahead + tokenLength
					textOffset = cursor
					found = true
					break
				end
			end
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
			text = input:sub(textOffset, cursor - 1),
			offset = textOffset,
		})
	end
	return tokens
end

return tokenize
