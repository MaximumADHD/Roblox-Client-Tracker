-- upstream: https://github.com/facebook/jest/blob/v26.5.3/packages/jest-message-util/src/index.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  */

local CurrentModule = script
local Packages = CurrentModule.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local String = LuauPolyfill.String
local Boolean = LuauPolyfill.Boolean.toJSBoolean

-- local chalk = require(Packages.ChalkLua)

-- deviation: forward declarations
local formatStackTrace, getStackTraceLines--, separateMessageFromStack

-- deviation: omitting imports since they're mostly fs related

-- deviation: omitting type StackTraceConfig
type StackTraceOptions = { noStackTrace: boolean, noCodeFrame: boolean? };

-- deviation: rewrote regex patterns and split up patterns for alternations
-- // filter for noisy stack trace lines
local JASMINE_IGNORE = '%s+at(.jasmine%-)'
local JASMINE_IGNORE_BUILDEXPECTATIONRESULT = '%s+at(%s+jasmine%.buildExpectationResult)'
-- local JEST_INTERNALS_IGNORE = /^\s+at.*?jest(-.*?)?(\/|\\)(build|node_modules|packages)(\/|\\)/
local ANONYMOUS_FN_IGNORE = '^%s+at <anonymous>.*$'
-- deviation: no optional capturing group in Lua string patterns so we try matching against both
local ANONYMOUS_PROMISE_IGNORE = '^%s+at Promise %(<anonymous>%).*$'
local ANONYMOUS_NEW_PROMISE_IGNORE = '^%s+at new Promise %(<anonymous>%).*$'
local ANONYMOUS_GENERATOR_IGNORE = '^%s+at Generator.next %(<anonymous>%).*$'
local NATIVE_NEXT_IGNORE = '^%s+at next %(native%).*$'
-- local TITLE_INDENT = '  '
-- local MESSAGE_INDENT = '    '
local STACK_INDENT = '      '
-- local ANCESTRY_SEPARATOR = ' › '
-- local TITLE_BULLET = chalk.bold('● ')
-- local STACK_TRACE_COLOR = chalk.dim
local STACK_PATH_REGEXP = '%s*at.*%(?:%d*:%d*%)?'
local STACK_PATH_REGEXP_NATIVE = '%s*at.*%(?native%)?'
-- local EXEC_ERROR_MESSAGE = 'Test suite failed to run'

-- deviation: rewrote this because Lua doesn't have negative lookahead
-- currently commented out as it is unused
-- local function indentAllLines(lines: string, indent: string): string
-- 	local t = string.split(lines, '\n')
-- 	for i, l in ipairs(t) do
-- 		t[i] = indent .. l
-- 	end
-- 	return table.concat(t, '\n')
-- end

-- string trim5 implementation from http://lua-users.org/wiki/StringTrim
local function trim(string_: string): string
	return String.trim(string_ or '')
end

-- // Some errors contain not only line numbers in stack traces
-- // e.g. SyntaxErrors can contain snippets of code, and we don't
-- // want to trim those, because they may have pointers to the column/character
-- // which will get misaligned.
local function trimPaths(string_: string): string
	-- deviation: match both since Lua doesn't have alternations
	if string_:find(STACK_PATH_REGEXP) or string_:find(STACK_PATH_REGEXP_NATIVE) then
		return trim(string_)
	end
	return string_
end

-- deviation: can't match for blank string in Lua so we match for NOT blank string
-- currently commented out as it is unused
-- local notBlankStringRegexp = '%S'

local function removeInternalStackEntries(
	lines: { string },
	options: StackTraceOptions
): { string }
	local pathCounter = 0

	return Array.filter(
		lines,
		function(line)
			if line:find(ANONYMOUS_FN_IGNORE) then
				return false
			end

			if line:find(ANONYMOUS_PROMISE_IGNORE) or line:find(ANONYMOUS_NEW_PROMISE_IGNORE) then
				return false
			end

			if line:find(ANONYMOUS_GENERATOR_IGNORE) then
				return false
			end

			if line:find(NATIVE_NEXT_IGNORE) then
				return false
			end

			-- deviation: omitting node specific stuff
			-- if (nodeInternals.some(internal => internal.test(line))) {
			-- 	return false;
			-- }

			-- deviation: match both since Lua doesn't have alternations
			if not line:find(STACK_PATH_REGEXP) or not line:find(STACK_PATH_REGEXP_NATIVE) then
				return true
			end

			-- deviation: match both since Lua doesn't have alternations
			if line:find(JASMINE_IGNORE) or line:find(JASMINE_IGNORE_BUILDEXPECTATIONRESULT) then
				return false
			end

			pathCounter += 1
			if pathCounter == 1 then
				return true -- // always keep the first line even if it's from Jest
			end

			if options.noStackTrace then
				return false
			end

			-- if (JEST_INTERNALS_IGNORE.test(line)) {
			-- 	return false;
			-- }

			return true
		end
	)
end

-- deviation: config does not have StackTraceConfig type annotation
local function formatPaths(
	config,
	relativeTestPath,
	line: string
): string

	-- deviation: we don't do any formatting of paths in Lua to align with upstream
	return line
end

function getStackTraceLines(
	stack: string,
	options: StackTraceOptions
): { string }
	if options == nil then
		options = {noCodeFrame = false, noStackTrace = false}
	end
	return removeInternalStackEntries(string.split(stack, '\n'), options)
end

function formatStackTrace(
	stack: string,
	config,
	options: StackTraceOptions,
	testPath
): string
	local lines = getStackTraceLines(stack, options)

	local relativeTestPath = nil
	if testPath then
		relativeTestPath = "unsupported"
	end

	local stacktrace = table.concat(
		Array.map(
			Array.filter(lines, Boolean),
			function(line)
				return STACK_INDENT .. formatPaths(config, relativeTestPath, trimPaths(line))
			end
		),
		'\n'
	)

	return string.format(
		'\n%s',
		stacktrace
	)
end

-- local errorRegexp = '^Error:?%s*$'

-- deviation: function unused so commented out for now
-- local function removeBlankErrorLine(str: string): string
-- 	return String.trimRight(
-- 		table.concat(
-- 			Array.filter(
-- 				str:split('\n'),
-- 				function(line)
-- 					return not line:find(errorRegexp)
-- 				end
-- 			),
-- 			'\n'
-- 		)
-- 	)
-- end

-- deviation: function unused so commented out for now. If eventually ends up
-- being used, be careful of automatically loading the RegExp library since we
-- intentionally lazy-load it in Jest-Roblox for improved performance
-- // jasmine and worker farm sometimes don't give us access to the actual
-- // Error object, so we have to regexp out the message from the stack string
-- // to format it.
-- function separateMessageFromStack(
-- 	content: string
-- ): {message: string, stack: string}
-- 	if not content then
-- 		return {message = '', stack = ''}
-- 	end

-- 	-- // All lines up to what looks like a stack -- or if nothing looks like a stack
-- 	-- // (maybe it's a code frame instead), just the first non-empty line.
-- 	-- // If the error is a plain "Error:" instead of a SyntaxError or TypeError we
-- 	-- // remove the prefix from the message because it is generally not useful.
-- 	local re = RegExp([=[^(?:Error: )?([\s\S]*?(?=\n\s*at\s.*:\d*:\d*)|\s*.*)([\s\S]*)$]=])
-- 	local messageMatch = re:exec(content)
-- 	if not messageMatch then
-- 		-- // For typescript
-- 		error('If you hit this error, the regex above is buggy.')
-- 	end
-- 	local message = removeBlankErrorLine(messageMatch[2])
-- 	local stack = removeBlankErrorLine(messageMatch[3])
-- 	return {message = message, stack = stack}
-- end

return {
	formatStackTrace = formatStackTrace,
	getStackTraceLines = getStackTraceLines,
	-- separateMessageFromStack = separateMessageFromStack
}