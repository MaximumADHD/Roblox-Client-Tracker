-- ROBLOX upstream: https://github.com/micromatch/picomatch/tree/2.3.1/lib/picomatch.js

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Error = LuauPolyfill.Error
local Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>
type Object = LuauPolyfill.Object

local RegExp = require(Packages.RegExp)
type RegExp = RegExp.RegExp

-- ROBLOX deviation: skipping path
-- local path = require("path")
local scan = require(CurrentModule.scan)
local parse = require(CurrentModule.parse)
local utils = require(CurrentModule.utils)
local constants = require(CurrentModule.constants)
local function isObject(val)
	return typeof(val) == "table" and not Array.isArray(val)
end

--[[*
 * Creates a matcher function from one or more glob patterns. The
 * returned function takes a string to match as its first argument,
 * and returns true if the string is a match. The returned matcher
 * function also takes a boolean as the second argument that, when true,
 * returns an object with additional information.
 *
 * ```js
 * const picomatch = require('picomatch');
 * // picomatch(glob[, options]);
 *
 * const isMatch = picomatch('*.!(*a)');
 * console.log(isMatch('a.a')); //=> false
 * console.log(isMatch('a.b')); //=> true
 * ```
 * @name picomatch
 * @param {String|Array} `globs` One or more glob patterns.
 * @param {Object=} `options`
 * @return {Function=} Returns a matcher function.
 * @api public
 ]]

-- ROBLOX deviation START: defining picomatch as callable table
local picomatch_
local picomatch = setmetatable({}, {
	__call = function(_self: any, glob: any, options: Object?, returnState: boolean?)
		return picomatch_(glob, options, returnState)
	end,
})

function picomatch_(
	glob: any,
	options: Object?,
	returnState_: boolean?
): typeof(setmetatable({ state = {} :: any }, {
	__call = function(_self: any, str: string, returnObject: boolean?): any
		return nil :: any
	end,
})) -- ROBLOX deviation END
	local returnState = returnState_ or false

	if Array.isArray(glob) then
		local fns = Array.map(glob, function(input)
			return picomatch(input, options, returnState)
		end)
		-- ROBLOX deviation START: defining arrayMatcher as callable table
		local arrayMatcher_
		local arrayMatcher = setmetatable({}, {
			__call = function(_self: any, str: string)
				return arrayMatcher_(str)
			end,
		})

		function arrayMatcher_(str: string) -- ROBLOX deviation: END
			for _, isMatch in ipairs(fns) do
				local state = isMatch(str)
				if state then
					return state
				end
			end
			return false
		end
		return arrayMatcher
	end

	local isState = isObject(glob) and Boolean.toJSBoolean(glob.tokens) and Boolean.toJSBoolean(glob.input)

	if glob == "" or typeof(glob) ~= "string" and not isState then
		error(Error.new("TypeError: Expected pattern to be a non-empty string"))
	end

	local opts = options or {} :: Object
	local posix = utils.isWindows(options)
	-- ROBLOX Luau FIXME: needs normalization to avoid Type 'RegExp' could not be converted into 'RegExp & {| state: any? |}'
	local regex: RegExp & { state: any? } = if isState
		then picomatch.compileRe(glob, options) :: any
		else picomatch.makeRe(glob, options, false, true)

	local state = regex.state
	regex.state = nil

	local isIgnored: (str: string) -> boolean
	function isIgnored(_)
		return false
	end
	if Boolean.toJSBoolean(opts.ignore) then
		local ignoreOpts = Object.assign(
			{},
			options,
			{ ignore = Object.None, onMatch = Object.None, onResult = Object.None }
		)
		-- ROBLOX FIXME Luau: Callable table can't be assigned to a function
		isIgnored = picomatch(opts.ignore, ignoreOpts, returnState) :: any
	end

	-- ROBLOX deviation START: defining matcher as callable table
	local matcher_
	local matcher = setmetatable({}, {
		__call = function(_self: any, input: string, returnObject: boolean?)
			return matcher_(input, returnObject)
		end,
	})

	function matcher_(input: string, returnObject_: boolean?) -- ROBLOX deviation END
		local returnObject = returnObject_ or false

		local ref = picomatch.test(input, regex, options, { glob = glob, posix = posix })
		local isMatch, match, output = ref.isMatch, ref.match, ref.output
		local result = {
			glob = glob,
			state = state,
			regex = regex,
			posix = posix,
			input = input,
			output = output,
			match = match,
			isMatch = isMatch,
		}

		if typeof(opts.onResult) == "function" then
			opts.onResult(result)
		end

		if isMatch == false then
			result.isMatch = false
			return if returnObject then result else false
		end

		if isIgnored(input) then
			if typeof(opts.onIgnore) == "function" then
				opts.onIgnore(result)
			end
			result.isMatch = false
			return if returnObject then result else false
		end

		if typeof(opts.onMatch) == "function" then
			opts.onMatch(result)
		end
		return if returnObject then result else true
	end

	if Boolean.toJSBoolean(returnState) then
		matcher.state = state
	end
	return matcher
end

--[[*
 * Test `input` with the given `regex`. This is used by the main
 * `picomatch()` function to test the input string.
 *
 * ```js
 * const picomatch = require('picomatch');
 * // picomatch.test(input, regex[, options]);
 *
 * console.log(picomatch.test('foo/bar', /^(?:([^/]*?)\/([^/]*?))$/));
 * // { isMatch: true, match: [ 'foo/', 'foo', 'bar' ], output: 'foo/bar' }
 * ```
 * @param {String} `input` String to test.
 * @param {RegExp} `regex`
 * @return {Object} Returns an object with matching info.
 * @api public
 ]]

function picomatch.test(input: string, regex: RegExp, options: Object?, ref_: Object?)
	local ref: Object = ref_ or {}
	local glob, posix = ref.glob, ref.posix

	if typeof(input) ~= "string" then
		error(Error.new("TypeError: Expected input to be a string"))
	end

	if input == "" then
		return { isMatch = false, output = "" }
	end

	local opts: Object = options or {}
	local format = if Boolean.toJSBoolean(opts.format)
		then opts.format
		else if Boolean.toJSBoolean(posix) then utils.toPosixSlashes else nil
	local match = input == glob
	local output = if match and Boolean.toJSBoolean(format) then format(input) else input

	if match == false then
		output = if Boolean.toJSBoolean(format) then format(input) else input
		match = output == glob
	end

	if match == false or opts.capture == true then
		if opts.matchBase == true or opts.basename == true then
			match = picomatch.matchBase(input, regex, options, posix)
		else
			-- ROBLOX FIXME: Luau narrows the type to boolean and doesn't allow for result of RegExp:exec to be assigned
			match = regex:exec(output) :: any
		end
	end

	return { isMatch = Boolean.toJSBoolean(match), match = match, output = output }
end

--[[*
 * Match the basename of a filepath.
 *
 * ```js
 * const picomatch = require('picomatch');
 * // picomatch.matchBase(input, glob[, options]);
 * console.log(picomatch.matchBase('foo/bar.js', '*.js'); // true
 * ```
 * @param {String} `input` String to test.
 * @param {RegExp|String} `glob` Glob pattern or regex created by [.makeRe](#makeRe).
 * @return {Boolean}
 * @api public
 ]]

-- ROBLOX TODO START: implement when possible
function picomatch.matchBase(input, glob, options, posix_: boolean?): boolean
	error("matchBase not implemented")
	-- local _posix = posix_ or utils.isWindows(options)

	-- local regex = if instanceof(glob, RegExp) then glob else picomatch.makeRe(glob, options)
	-- -- ROBLOX FIXME: return regex:test(path:basename(input))
	-- return regex:test(input)
end
-- ROBLOX TODO END

--[[*
 * Returns true if **any** of the given glob `patterns` match the specified `string`.
 *
 * ```js
 * const picomatch = require('picomatch');
 * // picomatch.isMatch(string, patterns[, options]);
 *
 * console.log(picomatch.isMatch('a.a', ['b.*', '*.a'])); //=> true
 * console.log(picomatch.isMatch('a.a', 'b.*')); //=> false
 * ```
 * @param {String|Array} str The string to test.
 * @param {String|Array} patterns One or more glob patterns to use for matching.
 * @param {Object} [options] See available [options](#options).
 * @return {Boolean} Returns true if any patterns match `str`
 * @api public
 ]]

function picomatch.isMatch(str: string, patterns, options: Object?)
	return picomatch(patterns, options)(str)
end

--[[*
 * Parse a glob pattern to create the source string for a regular
 * expression.
 *
 * ```js
 * const picomatch = require('picomatch');
 * const result = picomatch.parse(pattern[, options]);
 * ```
 * @param {String} `pattern`
 * @param {Object} `options`
 * @return {Object} Returns an object with useful properties and output to be used as a regex source string.
 * @api public
 ]]

function picomatch.parse(pattern, options: Object?)
	if Array.isArray(pattern) then
		return Array.map(pattern, function(p)
			return picomatch.parse(p, options)
		end)
	end
	return parse(pattern, Object.assign({}, options, { fastpaths = false }))
end

--[[*
 * Scan a glob pattern to separate the pattern into segments.
 *
 * ```js
 * const picomatch = require('picomatch');
 * // picomatch.scan(input[, options]);
 *
 * const result = picomatch.scan('!./foo/*.js');
 * console.log(result);
 * { prefix: '!./',
 *   input: '!./foo/*.js',
 *   start: 3,
 *   base: 'foo',
 *   glob: '*.js',
 *   isBrace: false,
 *   isBracket: false,
 *   isGlob: true,
 *   isExtglob: false,
 *   isGlobstar: false,
 *   negated: true }
 * ```
 * @param {String} `input` Glob pattern to scan.
 * @param {Object} `options`
 * @return {Object} Returns an object with
 * @api public
 ]]

function picomatch.scan(input, options: Object?)
	return scan(input, options)
end

--[[*
 * Compile a regular expression from the `state` object returned by the
 * [parse()](#parse) method.
 *
 * @param {Object} `state`
 * @param {Object} `options`
 * @param {Boolean} `returnOutput` Intended for implementors, this argument allows you to return the raw output from the parser.
 * @param {Boolean} `returnState` Adds the state to a `state` property on the returned regex. Useful for implementors and debugging.
 * @return {RegExp}
 * @api public
 ]]

picomatch.compileRe = function(state: Object, options: Object?, returnOutput_: boolean?, returnState_: boolean?): RegExp
	local returnOutput = returnOutput_ or false
	local returnState = returnState_ or false

	if returnOutput == true then
		return state.output
	end

	local opts: Object = options or {}
	local prepend = if Boolean.toJSBoolean(opts.contains) then "" else "^"
	local append = if Boolean.toJSBoolean(opts.contains) then "" else "$"

	local source = ("%s(?:%s)%s"):format(prepend, tostring(state.output), append)
	if typeof(state) == "table" and state.negated == true then
		source = ("^(?!%s).*$"):format(source)
	end

	local regex = picomatch.toRegex(source, options)
	if returnState == true then
		regex.state = state
	end

	return regex
end

--[[*
 * Create a regular expression from a parsed glob pattern.
 *
 * ```js
 * const picomatch = require('picomatch');
 * const state = picomatch.parse('*.js');
 * // picomatch.compileRe(state[, options]);
 *
 * console.log(picomatch.compileRe(state));
 * //=> /^(?:(?!\.)(?=.)[^/]*?\.js)$/
 * ```
 * @param {String} `state` The object returned from the `.parse` method.
 * @param {Object} `options`
 * @param {Boolean} `returnOutput` Implementors may use this argument to return the compiled output, instead of a regular expression. This is not exposed on the options to prevent end-users from mutating the result.
 * @param {Boolean} `returnState` Implementors may use this argument to return the state from the parsed glob with the returned regular expression.
 * @return {RegExp} Returns a regex created from the given pattern.
 * @api public
 ]]

function picomatch.makeRe(input: string, options_: Object?, returnOutput_: boolean?, returnState_: boolean?): RegExp
	local options: Object = options_ or {}
	local returnOutput = returnOutput_ or false
	local returnState = returnState_ or false

	if not Boolean.toJSBoolean(input) or typeof(input) ~= "string" then
		error(Error.new("TypeError: Expected a non-empty string"))
	end

	local parsed = { negated = false, fastpaths = true }

	if options.fastpaths ~= false and (string.sub(input, 1, 1) == "." or string.sub(input, 1, 1) == "*") then
		parsed.output = parse.fastpaths(input, options)
	end

	if not Boolean.toJSBoolean(parsed.output) then
		parsed = parse(input, options)
	end

	return picomatch.compileRe(parsed, options, returnOutput, returnState)
end

--[[*
 * Create a regular expression from the given regex source string.
 *
 * ```js
 * const picomatch = require('picomatch');
 * // picomatch.toRegex(source[, options]);
 *
 * const { output } = picomatch.parse('*.js');
 * console.log(picomatch.toRegex(output));
 * //=> /^(?:(?!\.)(?=.)[^/]*?\.js)$/
 * ```
 * @param {String} `source` Regular expression source string.
 * @param {Object} `options`
 * @return {RegExp}
 * @api public
 ]]

function picomatch.toRegex(source: string, options: Object?)
	local ok, result = pcall(function()
		local opts: Object = options or {}
		return RegExp(
			source,
			Boolean.toJSBoolean(opts.flags) and opts.flags or if Boolean.toJSBoolean(opts.nocase) then "i" else ""
		)
	end)
	if not ok then
		local err = result
		if options ~= nil and options.debug == true then
			error(err)
		end
		return RegExp("$^")
	end
	return result
end

--[[*
 * Picomatch constants.
 * @return {Object}
 ]]

picomatch.constants = constants

--[[*
 * Expose "picomatch"
 ]]

return picomatch
