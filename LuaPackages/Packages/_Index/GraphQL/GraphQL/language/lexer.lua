--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/language/lexer.js
local language = script.Parent
local src = language.Parent
local Packages = src.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Number = LuauPolyfill.Number
local String = LuauPolyfill.String
local isNaN = Number.isNaN
local HttpService = game:GetService("HttpService")

local syntaxError = require(src.error.syntaxError).syntaxError
local sourceImport = require(script.Parent.source)
type Source = sourceImport.Source
local tokenKindImport = require(language.tokenKind)
type TokenKindEnum = tokenKindImport.TokenKindEnum
local astImport = require(language.ast)
local Token = astImport.Token
local TokenKind = tokenKindImport.TokenKind
type Token = astImport.Token
local toUnicodeString = require(src.luaUtils.toUnicodeString)
local dedentBlockStringValue = require(language.blockString).dedentBlockStringValue

-- deviation: pre-declare functions
local readBlockString
local readString
local uniCharCode
local char2hex

--[[*
 * Given a Source object, creates a Lexer for that source.
 * A Lexer is a stateful stream generator in that every time
 * it is advanced, it returns the next token in the Source. Assuming the
 * source lexes, the final Token emitted by the lexer will be of kind
 * EOF, after which the lexer will repeatedly return the same EOF token
 * whenever called.
 ]]
export type Lexer = {
	source: Source,

	--[[*
   * The previously focused non-ignored token.
   ]]
	lastToken: Token,

	--[[*
   * The currently focused non-ignored token.
   ]]
	token: Token,

	--[[*
   * The (1-indexed) line containing the current token.
   ]]
	line: number,

	--[[*
   * The character offset at which the current line begins.
   ]]
	lineStart: number,

	new: (source: Source) -> Lexer,

	--[[*
   * Advances the token stream to the next non-ignored token.
   ]]
	advance: (self: Lexer) -> Token,
	--[[*
   * Looks ahead and returns the next non-ignored token, but does not change
   * the state of Lexer.
   ]]
	lookahead: (self: Lexer) -> Token,
}

--[[
 * Converts four hexadecimal chars to the integer that the
 * string represents. For example, uniCharCode('0','0','0','f')
 * will return 15, and uniCharCode('0','0','f','f') returns 255.
 *
 * Returns a negative number on error, if a char was invalid.
 *
-- ROBLOX deviation: this is implemented manually as bit32 library doesn't work well for negative numbers
]]
function uniCharCode(a, b, c, d)
	local aHex = char2hex(a)
	local bHex = char2hex(b)
	local cHex = char2hex(c)
	local dHex = char2hex(d)
	-- ROBLOX deviation: bit32 always returns positive value so we need to check if any of the input is negative beforehand
	if aHex < 0 or bHex < 0 or cHex < 0 or dHex < 0 then
		return -1
	end
	return bit32.bor(bit32.lshift(aHex, 12), bit32.lshift(bHex, 8), bit32.lshift(cHex, 4), dHex)
end

--[[
 * Converts a hex character to its integer value.
 * '0' becomes 0, '9' becomes 9
 * 'A' becomes 10, 'F' becomes 15
 * 'a' becomes 10, 'f' becomes 15
 *
 * Returns -1 on error.
]]
function char2hex(a)
	if a >= 48 and a <= 57 then
		return a - 48 -- 0-9
	elseif a >= 65 and a <= 70 then
		return a - 55 -- A-F
	elseif a >= 97 and a <= 102 then
		return a - 87 -- a-f
	else
		return -1
	end
end

--[[
 Reads an alphanumeric + underscore name from the source.

 [_A-Za-z][_0-9A-Za-z]*
]]
--
local function readName(source, start: number, line: number, col: number, prev): Token
	local body = source.body
	local bodyLength = string.len(body)
	local position = start + 1
	local code: number = 0

	local firstCondition = function()
		return position ~= bodyLength + 1
	end
	local secondCondition = function()
		code = String.charCodeAt(body, position)
		return not isNaN(code)
	end
	local thirdConditionFirstPart = function()
		return code == 95
	end -- _
	local thirdConditionSecondPart = function()
		return code >= 48 and code <= 57
	end -- 0 - 9
	local thirdConditionThirdPart = function()
		return code >= 65 and code <= 90
	end -- A - Z
	local thirdConditionFourthPart = function()
		return code >= 97 and code <= 122
	end -- a - z
	local thirdCondition = function()
		return thirdConditionFirstPart()
			or thirdConditionSecondPart()
			or thirdConditionThirdPart()
			or thirdConditionFourthPart()
	end

	while firstCondition() and secondCondition() and thirdCondition() do
		position += 1
	end

	return Token.new(
		TokenKind.NAME,
		start,
		position,
		line,
		col,
		prev,
		String.slice(body, start, position)
	)
end

--[[
 -- Reads a comment token from the source file.
 --
 -- #[\u0009\u0020-\uFFFF]*
]]
--
local function readComment(source, start: number, line: number, col: number, prev): Token
	local body = source.body
	local code
	local position = start

	repeat
		position = position + 1
		code = String.charCodeAt(body, position)
	-- // SourceCharacter but not LineTerminator
	until not ((not isNaN(code)) and (code > 0x001f or code == 0x0009))

	return Token.new(
		TokenKind.COMMENT,
		start,
		position,
		line,
		col,
		prev,
		String.slice(body, start + 1, position)
	)
end

function printCharCode(code: number): string
	-- NaN/undefined represents access beyond the end of the file.
	if isNaN(code) then
		return TokenKind.EOF
	else
		-- Trust JSON for ASCII.
		if code < 0x007f then
			return HttpService:JSONEncode(string.char(code))
		else
			-- Otherwise print the escaped form.
			return toUnicodeString(code)
		end
	end
end

--[[
 Returns the new position in the source after reading digits.
]]
--
function readDigits(source, start: number, firstCode: number): number
	local body = source.body
	local position = start
	local code = firstCode

	if code >= 48 and code <= 57 then
		repeat
			position += 1
			code = String.charCodeAt(body, position)
		until not (code >= 48 and code <= 57) -- 0-9
		return position
	end
	error(
		syntaxError(
			source,
			position,
			"Invalid number, expected digit but got: " .. printCharCode(code) .. "."
		)
	)
end

--[[
 Report a message that an unexpected character was encountered.
]]
--
function unexpectedCharacterMessage(code: number): string
	if code < 0x0020 and code ~= 0x0009 and code ~= 0x000a and code ~= 0x000d then
		return "Cannot contain the invalid character " .. printCharCode(code) .. "."
	end

	if code == 39 then
		-- '
		return "Unexpected single quote character ('), did you mean to use a double quote (\")?"
	end

	return "Cannot parse the unexpected character " .. printCharCode(code) .. "."
end

-- _ A-Z a-z
function isNameStart(code: number): boolean
	local firstCondition = code == 95
	local secondCondition = code >= 65 and code <= 90
	local thirdCondition = code >= 97 and code <= 122
	return (firstCondition or secondCondition or thirdCondition)
end

--[[
 * Reads a number token from the source file, either a float
 * or an int depending on whether a decimal point appears.
 *
 * Int:   -?(0|[1-9][0-9]*)
 * Float: -?(0|[1-9][0-9]*)(\.[0-9]+)?((E|e)(+|-)?[0-9]+)?
]]
--
function readNumber(
	source,
	start: number,
	firstCode: number,
	line: number,
	col: number,
	prev
): Token
	local body = source.body
	local code = firstCode
	local position: number = start
	local isFloat = false

	if code == 45 then
		-- -
		position += 1
		code = String.charCodeAt(body, position)
	end

	if code == 48 then
		-- 0
		position += 1
		code = String.charCodeAt(body, position)
		if code >= 48 and code <= 57 then
			error(
				syntaxError(
					source,
					position,
					"Invalid number, unexpected digit after 0: " .. printCharCode(code) .. "."
				)
			)
		end
	else
		position = readDigits(source, position, code)
		code = String.charCodeAt(body, position)
	end

	if code == 46 then
		-- .
		isFloat = true

		position += 1
		code = String.charCodeAt(body, position)
		position = readDigits(source, position, code)

		code = String.charCodeAt(body, position)
	end

	if code == 69 or code == 101 then
		-- E e
		isFloat = true

		position += 1
		code = String.charCodeAt(body, position)
		if code == 43 or code == 45 then
			-- + -
			position += 1
			code = String.charCodeAt(body, position)
		end
		position = readDigits(source, position, code)
		code = String.charCodeAt(body, position)
	end

	-- Numbers cannot be followed by . or NameStart
	if code == 46 or isNameStart(code) then
		error(
			syntaxError(
				source,
				position,
				"Invalid number, expected digit but got: " .. printCharCode(code) .. "."
			)
		)
	end

	return Token.new(
		isFloat and TokenKind.FLOAT or TokenKind.INT,
		start,
		position,
		line,
		col,
		prev,
		String.slice(body, start, position)
	)
end

local function readToken(lexer: Lexer, prev: Token): Token
	local source = lexer.source
	local body = source.body
	local bodyLength = utf8.len(body)
	-- ROBLOX deviation: assert utf8 string is legit
	assert(bodyLength ~= nil, "invalid utf8 supplied for token")

	local pos = prev._end

	while pos <= bodyLength do
		local code = String.charCodeAt(body, pos)

		local line = lexer.line
		local col = pos - lexer.lineStart
		-- SourceCharacter
		if
			code == 0xfeff -- <BOM>
			or code == 9 -- \t
			or code == 32 -- <space>
			or code == 44 -- ,
		then
			pos += 1
			continue
		elseif
			code == 10 -- \n
		then
			pos += 1
			lexer.line += 1
			lexer.lineStart = pos - 1
			continue
		elseif
			code == 13 -- \r
		then
			if String.charCodeAt(body, pos + 1) == 10 then
				pos += 2
			else
				pos += 1
			end
			lexer.line = lexer.line + 1
			lexer.lineStart = pos - 1
			continue
		elseif
			code == 33 -- !
		then
			return Token.new(TokenKind.BANG, pos, pos + 1, line, col, prev)
		elseif
			code == 35 -- #
		then
			return readComment(source, pos, line, col, prev)
		elseif
			code == 36 -- $
		then
			return Token.new(TokenKind.DOLLAR, pos, pos + 1, line, col, prev)
		elseif
			code == 38 -- &
		then
			return Token.new(TokenKind.AMP, pos, pos + 1, line, col, prev)
		elseif
			code == 40 -- (
		then
			return Token.new(TokenKind.PAREN_L, pos, pos + 1, line, col, prev)
		elseif
			code == 41 -- )
		then
			return Token.new(TokenKind.PAREN_R, pos, pos + 1, line, col, prev)
		elseif
			code == 46 -- .
		then
			if
				String.charCodeAt(body, pos + 1) == 46
				and String.charCodeAt(body, pos + 2) == 46
			then
				return Token.new(TokenKind.SPREAD, pos, pos + 3, line, col, prev)
			end
			-- don't need break because no case fall through in if statement
		elseif
			code == 58 -- :
		then
			return Token.new(TokenKind.COLON, pos, pos + 1, line, col, prev)
		elseif
			code == 61 -- =
		then
			return Token.new(TokenKind.EQUALS, pos, pos + 1, line, col, prev)
		elseif
			code == 64 --  @
		then
			return Token.new(TokenKind.AT, pos, pos + 1, line, col, prev)
		elseif
			code == 91 -- [
		then
			return Token.new(TokenKind.BRACKET_L, pos, pos + 1, line, col, prev)
		elseif
			code == 93 -- ]
		then
			return Token.new(TokenKind.BRACKET_R, pos, pos + 1, line, col, prev)
		elseif
			code == 123 -- {
		then
			return Token.new(TokenKind.BRACE_L, pos, pos + 1, line, col, prev)
		elseif
			code == 124 -- |
		then
			return Token.new(TokenKind.PIPE, pos, pos + 1, line, col, prev)
		elseif
			code == 125 -- }
		then
			return Token.new(TokenKind.BRACE_R, pos, pos + 1, line, col, prev)
		elseif
			code == 34 -- "
		then
			if
				String.charCodeAt(body, pos + 1) == 34
				and String.charCodeAt(body, pos + 2) == 34
			then
				return readBlockString(source, pos, line, col, prev, lexer)
			end
			return readString(source, pos, line, col, prev)
		elseif
			code == 45 -- -
			or code == 48 --  0
			or code == 49 --  1
			or code == 50 --  2
			or code == 51 --  3
			or code == 52 --  4
			or code == 53 --  5
			or code == 54 --  6
			or code == 55 --  7
			or code == 56 --  8
			or code == 57 --  9
		then
			return readNumber(source, pos, code, line, col, prev)
		elseif
			code == 65 --  A
			or code == 66 --  B
			or code == 67 --  C
			or code == 68 --  D
			or code == 69 --  E
			or code == 70 --  F
			or code == 71 --  G
			or code == 72 --  H
			or code == 73 --  I
			or code == 74 --  J
			or code == 75 --  K
			or code == 76 --  L
			or code == 77 --  M
			or code == 78 --  N
			or code == 79 --  O
			or code == 80 --  P
			or code == 81 --  Q
			or code == 82 --  R
			or code == 83 --  S
			or code == 84 --  T
			or code == 85 --  U
			or code == 86 --  V
			or code == 87 --  W
			or code == 88 --  X
			or code == 89 --  Y
			or code == 90 --  Z
			or code == 95 --  _
			or code == 97 --  a
			or code == 98 --  b
			or code == 99 --  c
			or code == 100 -- d
			or code == 101 -- e
			or code == 102 -- f
			or code == 103 -- g
			or code == 104 -- h
			or code == 105 -- i
			or code == 106 -- j
			or code == 107 -- k
			or code == 108 -- l
			or code == 109 -- m
			or code == 110 -- n
			or code == 111 -- o
			or code == 112 -- p
			or code == 113 -- q
			or code == 114 -- r
			or code == 115 -- s
			or code == 116 -- t
			or code == 117 -- u
			or code == 118 -- v
			or code == 119 -- w
			or code == 120 -- x
			or code == 121 -- y
			or code == 122 -- z
		then
			return readName(source, pos, line, col, prev)
		end
		error(syntaxError(source, pos, unexpectedCharacterMessage(code)))
	end

	local line = lexer.line
	local col = pos - lexer.lineStart
	return Token.new(TokenKind.EOF, bodyLength + 1, bodyLength + 1, line, col, prev)
end

local Lexer: Lexer = {} :: Lexer;
(Lexer :: any).__index = Lexer

function Lexer.new(source: Source): Lexer
	local startOfFileToken = Token.new(TokenKind.SOF, 1, 1, 0, 0, nil)

	local self = {}
	self.source = source
	self.lastToken = startOfFileToken
	self.token = startOfFileToken
	self.line = 1
	self.lineStart = 0

	return (setmetatable(self, Lexer) :: any) :: Lexer
end

function Lexer:advance(): Token
	self.lastToken = self.token
	self.token = self:lookahead()
	return self.token
end

function Lexer:lookahead(): Token
	local token = self.token
	if token.kind ~= TokenKind.EOF then
		repeat
			-- ROBLOX deviation BEGIN: align this loop to 16.x.x, which has better type safety
			if token.next then
				token = token.next
			else
				local nextToken = readToken(self, token)
				token.next = nextToken
				nextToken.prev = token
				token = nextToken
			end
		-- ROBLOX deviation END
		until not (token.kind == TokenKind.COMMENT)
	end
	return token
end

--[[
 * @internal
]]
-- ROBLOX deviation: Luau doesn't model  %checks {
local function isPunctuatorTokenKind(kind: TokenKindEnum): boolean
	local tokenKind = kind == TokenKind.BANG
		or kind == TokenKind.DOLLAR
		or kind == TokenKind.AMP
		or kind == TokenKind.PAREN_L
		or kind == TokenKind.PAREN_R
		or kind == TokenKind.SPREAD
		or kind == TokenKind.COLON
		or kind == TokenKind.EQUALS
		or kind == TokenKind.AT
		or kind == TokenKind.BRACKET_L
		or kind == TokenKind.BRACKET_R
		or kind == TokenKind.BRACE_L
		or kind == TokenKind.PIPE
		or kind == TokenKind.BRACE_R
	return tokenKind
end

--[[
  Reads a block string token from the source file.
  """("?"?(\\"""|\\(?!=""")|[^"\\]))*"""
]]
--
function readBlockString(source, start, line, col, prev, lexer)
	local body = source.body
	local position = start + 3
	local chunkStart = position
	local code = 0
	local rawValue = ""

	while position <= string.len(body) and not isNaN(String.charCodeAt(body, position)) do
		code = String.charCodeAt(body, position)
		-- Closing Triple-Quote (""")
		if
			code == 34
			and String.charCodeAt(body, position + 1) == 34
			and String.charCodeAt(body, position + 2) == 34
		then
			rawValue = rawValue .. String.slice(body, chunkStart, position)
			return Token.new(
				TokenKind.BLOCK_STRING,
				start,
				position + 3,
				line,
				col,
				prev,
				dedentBlockStringValue(rawValue)
			)
		end

		-- SourceCharacter
		if code < 0x0020 and code ~= 0x0009 and code ~= 0x000a and code ~= 0x000d then
			error(
				syntaxError(
					source,
					position,
					"Invalid character within String: " .. printCharCode(code) .. "."
				)
			)
		end

		if code == 10 then
			-- new line
			position += 1
			lexer.line += 1
			lexer.lineStart = position - 1
		elseif code == 13 then
			-- carriage return
			if String.charCodeAt(body, position + 1) == 10 then
				position += 2
			else
				position += 1
			end
			lexer.line += 1
			lexer.lineStart = position - 1
		elseif
			code == 92
			and String.charCodeAt(body, position + 1) == 34
			and String.charCodeAt(body, position + 2) == 34
			and String.charCodeAt(body, position + 3) == 34
		then
			rawValue = rawValue .. String.slice(body, chunkStart, position) .. '"""'
			position += 4
			chunkStart = position
		else
			position += 1
		end
	end

	error(syntaxError(source, position, "Unterminated string."))
end

--[[
  Reads a string token from the source file.
  "([^"\\\u000A\u000D]|(\\(u[0-9a-fA-F]{4}|["\\/bfnrt])))*"
]]
--
function readString(source, start, line, col, prev)
	local body = source.body
	local bodyLength = utf8.len(body)
	assert(bodyLength ~= nil, "invalid utf8 sequence detected")
	local position = start + 1
	local chunkStart = position
	local value = ""

	while position <= bodyLength do
		local code = String.charCodeAt(body, position)

		-- ROBLOX deviation? can't find this in upstream
		if isNaN(code) then
			break
		end

		-- Closing Quote (")
		if code == 34 then
			value = value .. String.slice(body, chunkStart, position)
			return Token.new(TokenKind.STRING, start, position + 1, line, col, prev, value)
		end

		-- Escape sequence (\)
		-- ROBLOX TODO: this is slightly different in upstream 16.x.x

		-- LineTerminator (\n | \r)
		if code == 0x000a or code == 0x000d then
			break
		end

		-- SourceCharacter
		if code < 0x0020 and code ~= 0x0009 then
			error(
				syntaxError(
					source,
					position,
					"Invalid character within String: " .. printCharCode(code) .. "."
				)
			)
		end

		position += 1
		if code == 92 then
			-- \
			value = value .. String.slice(body, chunkStart, position - 1)
			code = String.charCodeAt(body, position)
			if code == 34 then
				value = value .. '"'
			elseif code == 47 then
				value = value .. "/"
			elseif code == 92 then
				value = value .. "\\"
			elseif code == 98 then
				value = value .. "\b"
			elseif code == 102 then
				value = value .. "\f"
			elseif code == 110 then
				value = value .. "\n"
			elseif code == 114 then
				value = value .. "\r"
			elseif code == 116 then
				value = value .. "\t"
			elseif code == 117 then
				-- uXXXX
				local charCode = uniCharCode(
					String.charCodeAt(body, position + 1),
					String.charCodeAt(body, position + 2),
					String.charCodeAt(body, position + 3),
					String.charCodeAt(body, position + 4)
				)
				if charCode < 0 then
					local invalidSequence = String.slice(body, position + 1, position + 5)
					error(
						syntaxError(
							source,
							position,
							"Invalid character escape sequence: \\u" .. invalidSequence .. "."
						)
					)
				end
				value = value .. utf8.char(charCode)
				position += 4
			else
				error(
					syntaxError(
						source,
						position,
						"Invalid character escape sequence: \\" .. utf8.char(code) .. "."
					)
				)
			end

			position += 1
			chunkStart = position
		end
	end

	error(syntaxError(source, position, "Unterminated string."))
end

return {
	Lexer = Lexer,
	isPunctuatorTokenKind = isPunctuatorTokenKind,
}
