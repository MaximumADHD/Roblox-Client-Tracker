-- ROBLOX upstream: https://github.com/micromatch/picomatch/tree/2.3.1/lib/scan.js

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
local String = LuauPolyfill.String
type Object = LuauPolyfill.Object
type Token = any

local utils = require(CurrentModule.utils)
local Constants = require(CurrentModule.constants)
local CHAR_ASTERISK, CHAR_AT, CHAR_BACKWARD_SLASH, CHAR_COMMA, CHAR_DOT, CHAR_EXCLAMATION_MARK, CHAR_FORWARD_SLASH, CHAR_LEFT_CURLY_BRACE, CHAR_LEFT_PARENTHESES, CHAR_LEFT_SQUARE_BRACKET, CHAR_PLUS, CHAR_QUESTION_MARK, CHAR_RIGHT_CURLY_BRACE, CHAR_RIGHT_PARENTHESES, CHAR_RIGHT_SQUARE_BRACKET =
	Constants.CHAR_ASTERISK, --[[ * ]]
	Constants.CHAR_AT, --[[ @ ]]
	Constants.CHAR_BACKWARD_SLASH, --[[ \ ]]
	Constants.CHAR_COMMA, --[[ , ]]
	Constants.CHAR_DOT, --[[ . ]]
	Constants.CHAR_EXCLAMATION_MARK, --[[ ! ]]
	Constants.CHAR_FORWARD_SLASH, --[[ / ]]
	Constants.CHAR_LEFT_CURLY_BRACE, --[[ { ]]
	Constants.CHAR_LEFT_PARENTHESES, --[[ ( ]]
	Constants.CHAR_LEFT_SQUARE_BRACKET, --[[ [ ]]
	Constants.CHAR_PLUS, --[[ + ]]
	Constants.CHAR_QUESTION_MARK, --[[ ? ]]
	Constants.CHAR_RIGHT_CURLY_BRACE, --[[ } ]]
	Constants.CHAR_RIGHT_PARENTHESES, --[[ ) ]]
	Constants.CHAR_RIGHT_SQUARE_BRACKET --[[ ] ]]

local function isPathSeparator(code)
	return code == CHAR_FORWARD_SLASH or code == CHAR_BACKWARD_SLASH
end

local function depth(token)
	if token.isPrefix ~= true then
		token.depth = if Boolean.toJSBoolean(token.isGlobstar) then math.huge else 1
	end
end

--[[*
 * Quickly scans a glob pattern and returns an object with a handful of
 * useful properties, like `isGlob`, `path` (the leading non-glob, if it exists),
 * `glob` (the actual pattern), `negated` (true if the path starts with `!` but not
 * with `!(`) and `negatedExtglob` (true if the path starts with `!(`).
 *
 * ```js
 * const pm = require('picomatch');
 * console.log(pm.scan('foo/bar/*.js'));
 * { isGlob: true, input: 'foo/bar/*.js', base: 'foo/bar', glob: '*.js' }
 * ```
 * @param {String} `str`
 * @param {Object} `options`
 * @return {Object} Returns an object with tokens and regex source string.
 * @api public
 ]]

local function scan(input: string, options: Object?)
	local opts: Object = options or {}

	local length = #input + 1
	local scanToEnd = opts.parts == true or opts.scanToEnd == true
	local slashes = {}
	local tokens = {}
	local parts = {}

	local str = input
	local index = 0
	local start = 1
	local lastIndex = 1
	local isBrace = false
	local isBracket = false
	local isGlob = false
	local isExtglob = false
	local isGlobstar = false
	local braceEscaped = false
	local backslashes = false
	local negated = false
	local negatedExtglob = false
	local finished = false
	local braces = 0
	local prev
	local code
	-- ROBLOX FIXME: specify type explicitely to avoid type narrowing
	local token: Token = { value = "", depth = 0, isGlob = false }

	local function eos()
		return index >= length
	end
	local function peek()
		return String.charCodeAt(str, index + 1)
	end
	local function advance()
		prev = code
		index += 1
		return String.charCodeAt(str, index)
	end
	while index < length do
		code = advance()
		local next

		if code == CHAR_BACKWARD_SLASH then
			token.backslashes = true
			backslashes = token.backslashes
			code = advance()

			if code == CHAR_LEFT_CURLY_BRACE then
				braceEscaped = true
			end
			continue
		end

		if braceEscaped == true or code == CHAR_LEFT_CURLY_BRACE then
			braces += 1
			while eos() ~= true and Boolean.toJSBoolean((function()
				code = advance()
				return code
			end)()) do
				if code == CHAR_BACKWARD_SLASH then
					token.backslashes = true
					backslashes = token.backslashes
					advance()
					continue
				end

				if code == CHAR_LEFT_CURLY_BRACE then
					braces += 1
					continue
				end

				if
					braceEscaped ~= true
					and code == CHAR_DOT
					and (function()
						code = advance()
						return code
					end)() == CHAR_DOT
				then
					token.isBrace = true
					isBrace = token.isBrace
					token.isGlob = true
					isGlob = token.isGlob
					finished = true

					if scanToEnd == true then
						continue
					end

					break
				end

				if braceEscaped ~= true and code == CHAR_COMMA then
					token.isBrace = true
					isBrace = token.isBrace
					token.isGlob = true
					isGlob = token.isGlob
					finished = true

					if scanToEnd == true then
						continue
					end

					break
				end

				if code == CHAR_RIGHT_CURLY_BRACE then
					braces -= 1

					if braces == 0 then
						braceEscaped = false
						token.isBrace = true
						isBrace = token.isBrace
						finished = true
						break
					end
				end
			end

			if scanToEnd == true then
				continue
			end

			break
		end

		if code == CHAR_FORWARD_SLASH then
			table.insert(slashes, index)
			table.insert(tokens, token)
			token = { value = "", depth = 0, isGlob = false }

			if finished == true then
				continue
			end
			if prev == CHAR_DOT and index == start + 1 then
				start += 2
				continue
			end

			lastIndex = index + 1
			continue
		end

		if opts.noext ~= true then
			local isExtglobChar = code == CHAR_PLUS
				or code == CHAR_AT
				or code == CHAR_ASTERISK
				or code == CHAR_QUESTION_MARK
				or code == CHAR_EXCLAMATION_MARK

			if isExtglobChar == true and peek() == CHAR_LEFT_PARENTHESES then
				token.isGlob = true
				isGlob = token.isGlob
				token.isExtglob = true
				isExtglob = token.isExtglob
				finished = true
				if code == CHAR_EXCLAMATION_MARK and index == start then
					negatedExtglob = true
				end

				if scanToEnd == true then
					while
						eos() ~= true
						and Boolean.toJSBoolean((function()
							code = advance()
							return code
						end)())
					do
						if code == CHAR_BACKWARD_SLASH then
							token.backslashes = true
							backslashes = token.backslashes
							code = advance()
							continue
						end

						if code == CHAR_RIGHT_PARENTHESES then
							token.isGlob = true
							isGlob = token.isGlob
							finished = true
							break
						end
					end
					continue
				end
				break
			end
		end

		if code == CHAR_ASTERISK then
			if prev == CHAR_ASTERISK then
				token.isGlobstar = true
				isGlobstar = token.isGlobstar
			end
			token.isGlob = true
			isGlob = token.isGlob
			finished = true

			if scanToEnd == true then
				continue
			end
			break
		end

		if code == CHAR_QUESTION_MARK then
			token.isGlob = true
			isGlob = token.isGlob
			finished = true

			if scanToEnd == true then
				continue
			end
			break
		end

		if code == CHAR_LEFT_SQUARE_BRACKET then
			while eos() ~= true and Boolean.toJSBoolean((function()
				next = advance()
				return next
			end)()) do
				if next == CHAR_BACKWARD_SLASH then
					token.backslashes = true
					backslashes = token.backslashes
					advance()
					continue
				end

				if next == CHAR_RIGHT_SQUARE_BRACKET then
					token.isBracket = true
					isBracket = token.isBracket
					token.isGlob = true
					isGlob = token.isGlob
					finished = true
					break
				end
			end

			if scanToEnd == true then
				continue
			end

			break
		end

		if opts.nonegate ~= true and code == CHAR_EXCLAMATION_MARK and index == start then
			token.negated = true
			negated = token.negated
			start += 1
			continue
		end

		if opts.noparen ~= true and code == CHAR_LEFT_PARENTHESES then
			token.isGlob = true
			isGlob = token.isGlob

			if scanToEnd == true then
				while
					eos() ~= true
					and Boolean.toJSBoolean((function()
						code = advance()
						return code
					end)())
				do
					if code == CHAR_LEFT_PARENTHESES then
						token.backslashes = true
						backslashes = token.backslashes
						code = advance()
						continue
					end

					if code == CHAR_RIGHT_PARENTHESES then
						finished = true
						break
					end
				end
				continue
			end
			break
		end

		if isGlob == true then
			finished = true

			if scanToEnd == true then
				continue
			end

			break
		end
	end

	if opts.noext == true then
		isExtglob = false
		isGlob = false
	end

	local base = str
	local prefix = ""
	local glob = ""

	if start > 1 then
		prefix = String.slice(str, 1, start)
		str = String.slice(str, start)
		lastIndex -= start
	end

	if Boolean.toJSBoolean(base) and isGlob == true and lastIndex > 1 then
		base = String.slice(str, 1, lastIndex)
		glob = String.slice(str, lastIndex)
	elseif isGlob == true then
		base = ""
		glob = str
	else
		base = str
	end

	if Boolean.toJSBoolean(base) and base ~= "" and base ~= "/" and base ~= str then
		if isPathSeparator(String.charCodeAt(base, #base)) then
			base = String.slice(base, 1, -1)
		end
	end

	if opts.unescape == true then
		if Boolean.toJSBoolean(glob) then
			glob = utils.removeBackslashes(glob)
		end

		if Boolean.toJSBoolean(base) and backslashes == true then
			base = utils.removeBackslashes(base)
		end
	end

	local state = {
		prefix = prefix,
		input = input,
		start = start,
		base = base,
		glob = glob,
		isBrace = isBrace,
		isBracket = isBracket,
		isGlob = isGlob,
		isExtglob = isExtglob,
		isGlobstar = isGlobstar,
		negated = negated,
		negatedExtglob = negatedExtglob,
	}

	if opts.tokens == true then
		state.maxDepth = 0
		if not isPathSeparator(code) then
			table.insert(tokens, token)
		end
		state.tokens = tokens
	end

	if opts.parts == true or opts.tokens == true then
		local prevIndex

		for idx = 1, #slashes do
			local n = if Boolean.toJSBoolean(prevIndex) then prevIndex + 1 else start
			local i = slashes[idx]
			local value = String.slice(input, n, i)
			if Boolean.toJSBoolean(opts.tokens) then
				if idx == 1 and start ~= 1 then
					tokens[idx].isPrefix = true
					tokens[idx].value = prefix
				else
					tokens[idx].value = value
				end
				depth(tokens[idx])
				state.maxDepth += tokens[idx].depth
			end
			if idx ~= 1 or value ~= "" then
				table.insert(parts, value)
			end
			prevIndex = i
		end

		if Boolean.toJSBoolean(prevIndex) and prevIndex + 1 < #input then
			local value = String.slice(input, prevIndex + 1)
			table.insert(parts, value)

			if Boolean.toJSBoolean(opts.tokens) then
				tokens[#tokens].value = value
				depth(tokens[#tokens])
				state.maxDepth += tokens[#tokens].depth
			end
		end

		state.slashes = slashes
		state.parts = parts
	end

	return state
end

return scan
