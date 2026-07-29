-- ROBLOX upstream: https://github.com/micromatch/picomatch/tree/2.3.1/lib/parse.js

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Error = LuauPolyfill.Error
local Object = LuauPolyfill.Object
local String = LuauPolyfill.String
local String_replace = require(CurrentModule.stringUtils).stringReplace
type Token = Object
type Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>

local RegExp = require(Packages.RegExp)
local constants = require(CurrentModule.constants)
local utils = require(CurrentModule.utils)

--[[*
 * Constants
 ]]

local MAX_LENGTH, POSIX_REGEX_SOURCE, REGEX_NON_SPECIAL_CHARS, REGEX_SPECIAL_CHARS_BACKREF, REPLACEMENTS =
	constants.MAX_LENGTH,
	constants.POSIX_REGEX_SOURCE,
	constants.REGEX_NON_SPECIAL_CHARS,
	constants.REGEX_SPECIAL_CHARS_BACKREF,
	constants.REPLACEMENTS

--[[*
 * Helpers
 ]]

local function expandRange(args: Array<any>, options)
	if typeof(options.expandRange) == "function" then
		return options.expandRange(table.unpack(args), options)
	end

	Array.sort(args)
	local value = ("[%s]"):format(Array.join(args, "-"))

	local ok = pcall(function()
		--[[ eslint-disable-next-line no-new ]]
		RegExp(value)
	end)
	if not ok then
		return Array.join(
			Array.map(args, function(v)
				return utils.escapeRegex(v)
			end),
			".."
		)
	end

	return value
end

--[[*
 * Create the message for a syntax error
 ]]

local function syntaxError(type, char)
	return ('Missing %s: "%s" - use "\\%s" to match literal characters'):format(type, char, char)
end

--[[*
 * Parse the given input string.
 * @param {String} input
 * @param {Object} options
 * @return {Object}
 ]]

-- ROBLOX deviation START: defining parse as callable table
local parse_
local parse = setmetatable({}, {
	__call = function(_self: any, input: string, options: Object?)
		return parse_(input, options)
	end,
})

function parse_(input, options) -- ROBLOX deviation END
	if typeof(input) ~= "string" then
		error(Error.new("TypeError: Expected a string"))
	end

	input = REPLACEMENTS[input] or input

	local opts = Object.assign({}, options)
	local max = if typeof(opts.maxLength) == "number" then math.min(MAX_LENGTH, opts.maxLength) else MAX_LENGTH

	local len = #input
	if len > max then
		error(
			Error.new(
				("SyntaxError: Input length: %s, exceeds maximum allowed length: %s"):format(
					tostring(len),
					tostring(max)
				)
			)
		)
	end

	local bos = { type = "bos", value = "", output = opts.prepend or "" }
	local tokens = { bos }

	local capture = if Boolean.toJSBoolean(opts.capture) then "" else "?:"
	local win32 = utils.isWindows(options)

	-- create constants based on platform, for windows or posix
	local PLATFORM_CHARS = constants.globChars(win32)
	local EXTGLOB_CHARS = constants.extglobChars(PLATFORM_CHARS)

	local DOT_LITERAL, PLUS_LITERAL, SLASH_LITERAL, ONE_CHAR, DOTS_SLASH, NO_DOT, NO_DOT_SLASH, NO_DOTS_SLASH, QMARK, QMARK_NO_DOT, STAR, START_ANCHOR =
		PLATFORM_CHARS.DOT_LITERAL,
		PLATFORM_CHARS.PLUS_LITERAL,
		PLATFORM_CHARS.SLASH_LITERAL,
		PLATFORM_CHARS.ONE_CHAR,
		PLATFORM_CHARS.DOTS_SLASH,
		PLATFORM_CHARS.NO_DOT,
		PLATFORM_CHARS.NO_DOT_SLASH,
		PLATFORM_CHARS.NO_DOTS_SLASH,
		PLATFORM_CHARS.QMARK,
		PLATFORM_CHARS.QMARK_NO_DOT,
		PLATFORM_CHARS.STAR,
		PLATFORM_CHARS.START_ANCHOR

	local function globstar(opts)
		return ("(%s(?:(?!%s%s).)*?)"):format(
			capture,
			START_ANCHOR,
			if Boolean.toJSBoolean(opts.dot) then DOTS_SLASH else DOT_LITERAL
		)
	end

	local nodot = if Boolean.toJSBoolean(opts.dot) then "" else NO_DOT
	local qmarkNoDot = if Boolean.toJSBoolean(opts.dot) then QMARK else QMARK_NO_DOT
	local star = if opts.bash == true then globstar(opts) else STAR

	if Boolean.toJSBoolean(opts.capture) then
		star = ("(%s)"):format(star)
	end

	-- minimatch options support
	if typeof(opts.noext) == "boolean" then
		opts.noextglob = opts.noext
	end

	local state = {
		input = input,
		index = 0,
		start = 1,
		dot = opts.dot == true,
		consumed = "",
		output = "",
		prefix = "",
		backtrack = false,
		negated = false,
		brackets = 0,
		braces = 0,
		parens = 0,
		quotes = 0,
		globstar = false,
		tokens = tokens,
	}

	input = utils.removePrefix(input, state)
	len = #input

	local extglobs: Array<Token> = {}
	local braces: Array<Token> = {}
	local stack: Array<string> = {}
	local prev: Token = bos
	local value

	--[[*
	 * Tokenizing helpers
	 ]]

	local function eos()
		return state.index == len
	end
	state.peek = function(n_: number?)
		local n = if n_ ~= nil then n_ else 1
		return string.sub(input, state.index + n, state.index + n)
	end
	local peek = state.peek
	state.advance = function()
		state.index += 1
		return string.sub(input, state.index, state.index) or ""
	end
	local advance = state.advance
	local function remaining()
		return string.sub(input, state.index + 1)
	end
	local function consume(value_: string?, num_: number?)
		local value = value_ or ""
		local num = num_ or 0
		state.consumed ..= value
		state.index += num
	end

	local function append(token: Token)
		state.output ..= if token.output ~= nil then token.output else token.value
		consume(token.value)
	end

	local function negate()
		local count = 1

		while peek() == "!" and (peek(2) ~= "(" or peek(3) == "?") do
			advance()
			state.start += 1
			count += 1
		end

		if count % 2 == 0 then
			return false
		end

		state.negated = true
		state.start += 1
		return true
	end

	local function increment(type)
		state[type] += 1
		table.insert(stack, type)
	end

	local function decrement(type)
		state[type] -= 1
		table.remove(stack)
	end

	--[[*
	 * Push tokens onto the tokens array. This helper speeds up
	 * tokenizing by 1) helping us avoid backtracking as much as possible,
	 * and 2) helping us avoid creating extra tokens when consecutive
	 * characters are plain text. This improves performance and simplifies
	 * lookbehinds.
	 ]]

	local function push(tok: Token)
		if prev.type == "globstar" then
			local isBrace = state.braces > 0 and (tok.type == "comma" or tok.type == "brace")
			local isExtglob = tok.extglob == true
				or if #extglobs ~= 0 then tok.type == "pipe" or tok.type == "paren" else #extglobs

			if tok.type ~= "slash" and tok.type ~= "paren" and not isBrace and not isExtglob then
				state.output = String.slice(state.output, 0, -#prev.output)
				prev.type = "star"
				prev.value = "*"
				prev.output = star
				state.output ..= prev.output
			end
		end

		if #extglobs ~= 0 and tok.type ~= "paren" then
			extglobs[#extglobs].inner ..= tok.value
		end

		if Boolean.toJSBoolean(tok.value) or Boolean.toJSBoolean(tok.output) then
			append(tok)
		end
		if prev ~= nil and prev.type == "text" and tok.type == "text" then
			prev.value ..= tok.value
			prev.output = (prev.output or "") .. tok.value
			return
		end

		tok.prev = prev
		table.insert(tokens, tok)
		prev = tok
	end

	local function extglobOpen(type, value)
		local token = Object.assign({}, EXTGLOB_CHARS[value], { conditions = 1, inner = "" })

		token.prev = prev
		token.parens = state.parens
		token.output = state.output
		local output = (if Boolean.toJSBoolean(opts.capture) then "(" else "") .. token.open

		increment("parens")
		push({
			type = type,
			value = value,
			output = if Boolean.toJSBoolean(state.output) then "" else ONE_CHAR,
		})
		push({ type = "paren", extglob = true, value = advance(), output = output })
		table.insert(extglobs, token)
	end

	local function extglobClose(token: Token)
		local output = token.close .. (if Boolean.toJSBoolean(opts.capture) then ")" else "")
		local rest

		if token.type == "negate" then
			local extglobStar = star

			if token.inner ~= nil and #token.inner > 1 and token.inner:find("/", 1, true) ~= nil then
				extglobStar = globstar(opts)
			end

			if extglobStar ~= star or eos() or RegExp("^\\)+$"):test(remaining()) then
				token.close = (")$))%s"):format(extglobStar)
				output = token.close
			end

			if
				token.inner:find("*", 1, true) ~= nil
				and (function()
					rest = remaining()
					return rest
				end)()
				and RegExp("^\\.[^\\\\/.]+$"):test(rest)
			then
				-- Any non-magical string (`.ts`) or even nested expression (`.{ts,tsx}`) can follow after the closing parenthesis.
				-- In this case, we need to parse the string and use it in the output of the original pattern.
				-- Suitable patterns: `/!(*.d).ts`, `/!(*.d).{ts,tsx}`, `**/!(*-dbg).@(js)`.
				--
				-- Disabling the `fastpaths` option due to a problem with parsing strings as `.ts` in the pattern like `**/!(*.d).ts`.
				local expression = parse(rest, Object.assign({}, options, { fastpaths = false })).output

				token.close = (")%s)%s)"):format(expression, extglobStar)
				output = token.close
			end

			if token.prev.type == "bos" then
				state.negatedExtglob = true
			end
		end

		push({ type = "paren", extglob = true, value = value, output = output })
		decrement("parens")
	end

	--[[*
	 * Fast paths
	 ]]

	if opts.fastpaths ~= false and not RegExp('(^[*!]|[/()[\\]{}"])'):test(input) then
		local backslashes = false

		-- ROBLOX deviation: using custom string.replace implementation
		local output = String_replace(input, REGEX_SPECIAL_CHARS_BACKREF, function(m, esc, chars, first, rest, index)
			if first == "\\" then
				backslashes = true
				return m
			end

			if first == "?" then
				if Boolean.toJSBoolean(esc) then
					return esc .. first .. if rest ~= nil then string.rep(QMARK, #rest) else ""
				end
				if index == 0 then
					return qmarkNoDot .. if rest ~= nil then string.rep(QMARK, #rest) else ""
				end
				return string.rep(QMARK, #chars)
			end

			if first == "." then
				return string.rep(DOT_LITERAL, #chars)
			end

			if first == "*" then
				if Boolean.toJSBoolean(esc) then
					return esc .. first .. if rest ~= nil then star else ""
				end
				return star
			end
			return if Boolean.toJSBoolean(esc) then m else ("\\%s"):format(m)
		end)

		if backslashes == true then
			if opts.unescape == true then
				-- ROBLOX FIXME START: change :replace to working solution
				error("not implemented")
				-- output = output:replace(RegExp("\\", "g")(""))
				-- ROBLOX FIXME END
			else
				-- ROBLOX FIXME START: change :replace to working solution
				error("not implemented")
				-- output = output:replace(RegExp("\\+", "g"), function(m)
				-- 	return if #m % 2 == 0 then "\\\\" else (if Boolean.toJSBoolean(m) then "\\" else "")
				-- end)
				-- ROBLOX FIXME END
			end
		end

		if output == input and opts.contains == true then
			state.output = input
			return state
		end

		state.output = utils.wrapOutput(output, state, options)
		return state
	end

	--[[*
	 * Tokenize input until we reach end-of-string
	 ]]

	while not eos() do
		value = advance()

		if value == "\u{0000}" then
			continue
		end

		--[[*
		 * Escaped characters
		 ]]

		if value == "\\" then
			local next = peek()

			if next == "/" and opts.bash ~= true then
				continue
			end

			if next == "." or next == ";" then
				continue
			end

			if not Boolean.toJSBoolean(next) then
				-- ROBLOX FIXME Luau: it seems that Luau narrows the type to be singleton type of "\\" and doesn't allow to append anything to it
				value ..= "\\" :: any
				push({ type = "text", value = value })
				continue
			end

			-- collapse slashes to reduce potential for exploits
			local match = (RegExp("^\\\\+")):exec(remaining())
			local slashes = 0

			if match ~= nil and #match[1] > 2 then
				slashes = #match[1]
				state.index += slashes
				if slashes % 2 ~= 0 then
					-- ROBLOX FIXME Luau: it seems that Luau narrows the type to be singleton type of "\\" and doesn't allow to append anything to it
					value ..= "\\" :: any
				end
			end

			if opts.unescape == true then
				value = advance()
			else
				-- ROBLOX FIXME Luau: it seems that Luau narrows the type to be singleton type of "\\" and doesn't allow to append anything to it
				value ..= advance() :: any
			end

			if state.brackets == 0 then
				push({ type = "text", value = value })
				continue
			end
		end

		--[[*
		 * If we're inside a regex character class, continue
		 * until we reach the closing bracket.
		 ]]

		if state.brackets > 0 and (value ~= "]" or prev.value == "[" or prev.value == "[^") then
			if opts.posix ~= false and value == ":" then
				local inner = String.slice(prev.value, 1)
				if inner:find("[", 1, true) ~= nil then
					prev.posix = true

					if inner:find(":", 1, true) ~= nil then
						local idx = String.lastIndexOf(prev.value, "[")
						local pre = String.slice(prev.value, 1, idx)
						local rest = String.slice(prev.value, idx + 2)
						local posix = POSIX_REGEX_SOURCE[rest]
						if posix then
							prev.value = pre .. posix
							state.backtrack = true
							advance()

							if
								not Boolean.toJSBoolean(bos.output)
								and Array.indexOf(tokens, prev) == 2 --[[ ROBLOX deviation: added 1 to account for 1-based indexing]]
							then
								bos.output = ONE_CHAR
							end
							continue
						end
					end
				end
			end

			if value == "[" and peek() ~= ":" or value == "-" and peek() == "]" then
				value = ("\\%s"):format(value)
			end

			if value == "]" and (prev.value == "[" or prev.value == "[^") then
				value = ("\\%s"):format(value)
			end

			if opts.posix == true and value == "!" and prev.value == "[" then
				value = "^"
			end

			-- ROBLOX FIXME Luau: it seems that Luau narrows the type to be singleton type of "\\" and doesn't allow to append anything to it
			prev.value ..= value :: any
			append({ value = value })
			continue
		end

		--[[*
		 * If we're inside a quoted string, continue
		 * until we reach the closing double quote.
		 ]]

		if state.quotes == 1 and value ~= '"' then
			value = utils.escapeRegex(value)
			prev.value ..= value
			append({ value = value })
			continue
		end

		--[[*
		 * Double quotes
		 ]]

		if value == '"' then
			state.quotes = state.quotes == 1 and 0 or 1
			if opts.keepQuotes == true then
				push({ type = "text", value = value })
			end
			continue
		end

		--[[*
		 * Parentheses
		 ]]

		if value == "(" then
			increment("parens")
			push({ type = "paren", value = value })
			continue
		end

		if value == ")" then
			if state.parens == 0 and opts.strictBrackets == true then
				error(Error.new("SyntaxError: " .. syntaxError("opening", "(")))
			end

			local extglob = extglobs[#extglobs]
			if extglob ~= nil and state.parens == extglob.parens + 1 then
				extglobClose(table.remove(extglobs) :: Token)
				continue
			end

			push({
				type = "paren",
				value = value,
				output = if Boolean.toJSBoolean(state.parens) then ")" else "\\)",
			})
			decrement("parens")
			continue
		end

		--[[*
		 * Square brackets
		 ]]

		if value == "[" then
			if opts.nobracket == true or remaining():find("]", 1, true) == nil then
				if opts.nobracket ~= true and opts.strictBrackets == true then
					error(Error.new("SyntaxError: " .. syntaxError("closing", "]")))
				end

				value = ("\\%s"):format(value)
			else
				increment("brackets")
			end

			push({ type = "bracket", value = value })
			continue
		end

		if value == "]" then
			if opts.nobracket == true or (prev ~= nil and prev.type == "bracket" and #prev.value == 1) then
				push({ type = "text", value = value, output = ("\\%s"):format(value) })
				continue
			end
			if state.brackets == 0 then
				if opts.strictBrackets == true then
					error(Error.new("SyntaxError: " .. syntaxError("opening", "[")))
				end

				push({ type = "text", value = value, output = ("\\%s"):format(value) })
				continue
			end

			decrement("brackets")

			local prevValue = String.slice(prev.value, 2)
			if prev.posix ~= true and prevValue:sub(1, 1) == "^" and prevValue:find("/", 1, true) == nil then
				value = ("/%s"):format(value)
			end

			prev.value ..= value
			append({ value = value })

			-- when literal brackets are explicitly disabled
			-- assume we should match with a regex character class
			if opts.literalBrackets == false or utils.hasRegexChars(prevValue) then
				continue
			end

			local escaped = utils.escapeRegex(prev.value)
			state.output = String.slice(state.output, 1, -#prev.value)

			-- when literal brackets are explicitly enabled
			-- assume we should escape the brackets to match literal characters
			if opts.literalBrackets == true then
				state.output ..= escaped
				prev.value = escaped
				continue
			end

			-- when the user specifies nothing, try to match both
			prev.value = ("(%s%s|%s)"):format(capture, escaped, prev.value)
			state.output ..= prev.value
			continue
		end

		--[[*
		 * Braces
		 ]]

		if value == "{" and opts.nobrace ~= true then
			increment("braces")

			local open = {
				type = "brace",
				value = value,
				output = "(",
				outputIndex = #state.output,
				tokensIndex = #state.tokens,
			}

			table.insert(braces, open)
			push(open)
			continue
		end

		if value == "}" then
			local brace = braces[#braces]

			if opts.nobrace == true or not Boolean.toJSBoolean(brace) then
				push({ type = "text", value = value, output = value })
				continue
			end

			local output = ")"

			if brace.dots == true then
				local arr = Array.slice(tokens)
				local range = {}

				for i = #arr, 1, -1 do
					table.remove(tokens)
					if arr[i].type == "brace" then
						break
					end
					if arr[i].type ~= "dots" then
						table.insert(range, 1, arr[i].value)
					end
				end

				output = expandRange(range, opts)
				state.backtrack = true
			end

			if brace.comma ~= true and brace.dots ~= true then
				local out = String.slice(state.output, 1, brace.outputIndex)
				local toks = Array.slice(state.tokens, brace.tokensIndex)
				brace.output = "\\{"
				brace.value = brace.output
				output = "\\}"
				value = output
				state.output = out
				for _, t in ipairs(toks) do
					state.output ..= if Boolean.toJSBoolean(t.output) then t.output else t.value
				end
			end

			push({ type = "brace", value = value, output = output })
			decrement("braces")
			table.remove(braces)
			continue
		end

		--[[*
		 * Pipes
		 ]]

		if value == "|" then
			if #extglobs > 0 then
				extglobs[#extglobs].conditions += 1
			end
			push({ type = "text", value = value })
			continue
		end

		--[[*
		 * Commas
		 ]]

		if value == "," then
			local output = value

			local brace = braces[#braces]
			if Boolean.toJSBoolean(brace) and stack[#stack] == "braces" then
				brace.comma = true
				output = "|"
			end

			push({ type = "comma", value = value, output = output })
			continue
		end

		--[[*
		 * Slashes
		 ]]

		if value == "/" then
			-- if the beginning of the glob is "./", advance the start
			-- to the current index, and don't add the "./" characters
			-- to the state. This greatly simplifies lookbehinds when
			-- checking for BOS characters like "!" and "." (not "./")
			if prev.type == "dot" and state.index == state.start + 1 then
				state.start = state.index + 1
				state.consumed = ""
				state.output = ""
				table.remove(tokens)
				prev = bos -- reset "prev" to the first token
				continue
			end

			push({ type = "slash", value = value, output = SLASH_LITERAL })
			continue
		end

		--[[*
		 * Dots
		 ]]

		if value == "." then
			if state.braces > 0 and prev.type == "dot" then
				if prev.value == "." then
					prev.output = DOT_LITERAL
				end
				local brace = braces[#braces]
				prev.type = "dots"
				prev.output ..= value
				prev.value ..= value
				brace.dots = true
				continue
			end

			if state.braces + state.parens == 0 and prev.type ~= "bos" and prev.type ~= "slash" then
				push({ type = "text", value = value, output = DOT_LITERAL })
				continue
			end

			push({ type = "dot", value = value, output = DOT_LITERAL })
			continue
		end

		--[[*
		 * Question marks
		 ]]

		if value == "?" then
			local isGroup = Boolean.toJSBoolean(prev) and prev.value == "("
			if not isGroup and opts.noextglob ~= true and peek() == "(" and peek(2) ~= "?" then
				extglobOpen("qmark", value)
				continue
			end

			if Boolean.toJSBoolean(prev) and prev.type == "paren" then
				local next = peek()
				local output = value

				if next == "<" and not utils.supportsLookbehinds() then
					error(Error.new("Node.js v10 or higher is required for regex lookbehinds"))
				end

				if
					(prev.value == "(" and not RegExp("[!=<:]"):test(next))
					or (next == "<" and not RegExp("<([!=]|\\w+>)"):test(remaining()))
				then
					output = ("\\%s"):format(value)
				end

				push({ type = "text", value = value, output = output })
				continue
			end

			if opts.dot ~= true and (prev.type == "slash" or prev.type == "bos") then
				push({ type = "qmark", value = value, output = QMARK_NO_DOT })
				continue
			end

			push({ type = "qmark", value = value, output = QMARK })
			continue
		end

		--[[*
		 * Exclamation
		 ]]

		if value == "!" then
			if opts.noextglob ~= true and peek() == "(" then
				if peek(2) ~= "?" or not RegExp("[!=<:]"):test(peek(3)) then
					extglobOpen("negate", value)
					continue
				end
			end

			if opts.nonegate ~= true and state.index == 1 then
				negate()
				continue
			end
		end

		--[[*
		 * Plus
		 ]]

		if value == "+" then
			if opts.noextglob ~= true and peek() == "(" and peek(2) ~= "?" then
				extglobOpen("plus", value)
				continue
			end

			if prev ~= nil and prev.value == "(" or opts.regex == false then
				push({ type = "plus", value = value, output = PLUS_LITERAL })
				continue
			end

			if
				(prev ~= nil and (prev.type == "bracket" or prev.type == "paren" or prev.type == "brace"))
				or state.parens > 0
			then
				push({ type = "plus", value = value })
				continue
			end

			push({ type = "plus", value = PLUS_LITERAL })
			continue
		end

		--[[*
		 * Plain text
		 ]]

		if value == "@" then
			if opts.noextglob ~= true and peek() == "(" and peek(2) ~= "?" then
				push({ type = "at", extglob = true, value = value, output = "" })
				continue
			end

			push({ type = "text", value = value })
			continue
		end

		--[[*
		 * Plain text
		 ]]

		if value ~= "*" then
			if value == "$" or value == "^" then
				value = ("\\%s"):format(value)
			end

			local match = string.match(remaining(), REGEX_NON_SPECIAL_CHARS)
			if match ~= nil then
				value ..= match
				state.index += #match
			end

			push({ type = "text", value = value })
			continue
		end

		--[[*
		 * Stars
		 ]]

		if prev ~= nil and (prev.type == "globstar" or prev.star == true) then
			prev.type = "star"
			prev.star = true
			prev.value ..= value
			prev.output = star
			state.backtrack = true
			state.globstar = true
			consume(value)
			continue
		end

		local rest = remaining()
		if Boolean.toJSBoolean(opts.noextglob ~= true and RegExp("^\\([^?]"):test(rest)) then
			extglobOpen("star", value)
			continue
		end

		if prev.type == "star" then
			if opts.noglobstar == true then
				consume(value)
				continue
			end

			local prior = prev.prev
			local before = prior.prev
			local isStart = prior.type == "slash" or prior.type == "bos"
			local afterStar = if Boolean.toJSBoolean(before)
				then before.type == "star" or before.type == "globstar"
				else before

			if opts.bash == true and (not isStart or (rest:sub(1, 1) ~= nil and rest:sub(1, 1) ~= "/")) then
				push({ type = "star", value = value, output = "" })
				continue
			end

			local isBrace = state.braces > 0 and (prior.type == "comma" or prior.type == "brace")
			local isExtglob = #extglobs > 0 and (prior.type == "pipe" or prior.type == "paren")
			if not isStart and prior.type ~= "paren" and not isBrace and not isExtglob then
				push({ type = "star", value = value, output = "" })
				continue
			end

			-- strip consecutive `/**/`
			while String.slice(rest, 1, 4) == "/**" do
				local after = input:sub(state.index + 4, state.index + 4)
				if Boolean.toJSBoolean(after) and after ~= "/" then
					break
				end
				rest = String.slice(rest, 4)
				consume("/**", 3)
			end

			if prior.type == "bos" and eos() then
				prev.type = "globstar"
				prev.value ..= value
				prev.output = globstar(opts)
				state.output = prev.output
				state.globstar = true
				consume(value)
				continue
			end

			if prior.type == "slash" and prior.prev.type ~= "bos" and not Boolean.toJSBoolean(afterStar) and eos() then
				state.output = String.slice(state.output, 1, -#(prior.output .. prev.output))
				prior.output = ("(?:%s"):format(prior.output)

				prev.type = "globstar"
				prev.output = globstar(opts) .. (if opts.strictSlashes then ")" else "|$)")
				prev.value ..= value
				state.globstar = true
				state.output ..= prior.output .. prev.output
				consume(value)
				continue
			end

			if prior.type == "slash" and prior.prev.type ~= "bos" and rest:sub(1, 1) == "/" then
				local end_ = if rest:sub(2, 2) ~= nil then "|$" else ""

				state.output = String.slice(state.output, 1, -#(prior.output .. prev.output))
				prior.output = ("(?:%s"):format(prior.output)

				prev.type = "globstar"
				prev.output = ("%s%s|%s%s)"):format(globstar(opts), SLASH_LITERAL, SLASH_LITERAL, end_)
				prev.value ..= value

				state.output ..= prior.output .. prev.output
				state.globstar = true

				consume(value .. advance())

				push({ type = "slash", value = "/", output = "" })
				continue
			end

			if prior.type == "bos" and rest:sub(1, 1) == "/" then
				prev.type = "globstar"
				prev.value ..= value
				prev.output = ("(?:^|%s|%s%s)"):format(SLASH_LITERAL, globstar(opts), SLASH_LITERAL)
				state.output = prev.output
				state.globstar = true
				consume(value .. advance())
				push({ type = "slash", value = "/", output = "" })
				continue
			end

			-- remove single star from output
			state.output = String.slice(state.output, 1, -#prev.output)

			-- reset previous token to globstar
			prev.type = "globstar"
			prev.output = globstar(opts)
			prev.value ..= value

			-- reset output with globstar
			state.output ..= prev.output
			state.globstar = true
			consume(value)
			continue
		end

		local token = { type = "star", value = value, output = star }

		if opts.bash == true then
			token.output = ".*?"
			if prev.type == "bos" or prev.type == "slash" then
				token.output = nodot .. token.output
			end
			push(token)
			continue
		end

		if prev ~= nil and (prev.type == "bracket" or prev.type == "paren") and opts.regex == true then
			token.output = value
			push(token)
			continue
		end

		if state.index == state.start or prev.type == "slash" or prev.type == "dot" then
			if prev.type == "dot" then
				state.output ..= NO_DOT_SLASH
				prev.output ..= NO_DOT_SLASH
			elseif opts.dot == true then
				state.output ..= NO_DOTS_SLASH
				prev.output ..= NO_DOTS_SLASH
			else
				state.output ..= nodot
				prev.output ..= nodot
			end

			if peek() ~= "*" then
				state.output ..= ONE_CHAR
				prev.output ..= ONE_CHAR
			end
		end

		push(token)
	end

	while state.brackets > 0 do
		if opts.strictBrackets == true then
			error(Error.new("SyntaxError: " .. syntaxError("closing", "]")))
		end
		state.output = utils.escapeLast(state.output, "[")
		decrement("brackets")
	end

	while state.parens > 0 do
		if opts.strictBrackets == true then
			error(Error.new("SyntaxError: " .. syntaxError("closing", ")")))
		end
		state.output = utils.escapeLast(state.output, "(")
		decrement("parens")
	end

	while state.braces > 0 do
		if opts.strictBrackets == true then
			error(Error.new("SyntaxError: " .. syntaxError("closing", "}")))
		end
		state.output = utils.escapeLast(state.output, "{")
		decrement("braces")
	end

	if opts.strictSlashes ~= true and (prev.type == "star" or prev.type == "bracket") then
		push({ type = "maybe_slash", value = "", output = ("%s?"):format(SLASH_LITERAL) })
	end

	-- rebuild the output if we had to backtrack at any point
	if state.backtrack == true then
		state.output = ""

		for _, token: Token in ipairs(state.tokens) do
			state.output ..= if token.output ~= nil then token.output else token.value

			if token.suffix then
				state.output ..= token.suffix
			end
		end
	end
	return state
end

--[[*
 * Fast paths for creating regular expressions for common glob patterns.
 * This can significantly speed up processing and has very little downside
 * impact when none of the fast paths match.
 ]]

parse.fastpaths = function(input: string, options: Object?)
	local opts = Object.assign({}, options)
	local max = if typeof(opts.maxLength) == "number" then math.min(MAX_LENGTH, opts.maxLength) else MAX_LENGTH
	local len = #input
	if len > max then
		error(
			Error.new(
				("SyntaxError: Input length: %s, exceeds maximum allowed length: %s"):format(
					tostring(len),
					tostring(max)
				)
			)
		)
	end

	input = Boolean.toJSBoolean(REPLACEMENTS[input]) and REPLACEMENTS[input] or input
	local win32 = utils.isWindows(options)

	-- create constants based on platform, for windows or posix

	local ref = constants.globChars(win32)
	local DOT_LITERAL, SLASH_LITERAL, ONE_CHAR, DOTS_SLASH, NO_DOT, NO_DOTS, NO_DOTS_SLASH, STAR, START_ANCHOR =
		ref.DOT_LITERAL,
		ref.SLASH_LITERAL,
		ref.ONE_CHAR,
		ref.DOTS_SLASH,
		ref.NO_DOT,
		ref.NO_DOTS,
		ref.NO_DOTS_SLASH,
		ref.STAR,
		ref.START_ANCHOR

	local nodot = if Boolean.toJSBoolean(opts.dot) then NO_DOTS else NO_DOT
	local slashDot = if Boolean.toJSBoolean(opts.dot) then NO_DOTS_SLASH else NO_DOT
	local capture = if Boolean.toJSBoolean(opts.capture) then "" else "?:"
	local state = { negated = false, prefix = "" }
	local star = if opts.bash == true then ".*?" else STAR

	if Boolean.toJSBoolean(opts.capture) then
		star = ("(%s)"):format(star)
	end

	local function globstar(opts)
		if opts.noglobstar == true then
			return star
		end
		return ("(%s(?:(?!%s%s).)*?)"):format(
			capture,
			START_ANCHOR,
			if Boolean.toJSBoolean(opts.dot) then DOTS_SLASH else DOT_LITERAL
		)
	end

	local function create(str): string?
		if str == "*" then
			return ("%s%s%s"):format(nodot, ONE_CHAR, star)
		elseif str == ".*" then
			return ("%s%s%s"):format(DOT_LITERAL, ONE_CHAR, star)
		elseif str == "*.*" then
			return ("%s%s%s%s%s"):format(nodot, star, DOT_LITERAL, ONE_CHAR, star)
		elseif str == "*/*" then
			return ("%s%s%s%s%s%s"):format(nodot, star, SLASH_LITERAL, ONE_CHAR, slashDot, star)
		elseif str == "**" then
			return nodot .. globstar(opts)
		elseif str == "**/*" then
			return ("(?:%s%s%s)?%s%s%s"):format(nodot, globstar(opts), SLASH_LITERAL, slashDot, ONE_CHAR, star)
		elseif str == "**/*.*" then
			return ("(?:%s%s%s)?%s%s%s%s%s"):format(
				nodot,
				globstar(opts),
				SLASH_LITERAL,
				slashDot,
				star,
				DOT_LITERAL,
				ONE_CHAR,
				star
			)
		elseif str == "**/.*" then
			return ("(?:%s%s%s)?%s%s%s"):format(nodot, globstar(opts), SLASH_LITERAL, DOT_LITERAL, ONE_CHAR, star)
		else
			local match = RegExp("^(.*?)\\.(\\w+)$"):exec(str)
			if not Boolean.toJSBoolean(match) then
				return nil
			end

			local source = create(match[2])
			if not Boolean.toJSBoolean(source) then
				return nil
			end

			return source .. DOT_LITERAL .. match[3]
		end
	end

	local output = utils.removePrefix(input, state)
	local source = create(output)

	if source ~= nil and Boolean.toJSBoolean(source) and opts.strictSlashes ~= true then
		source ..= ("%s?"):format(SLASH_LITERAL)
	end

	return source
end

return parse
