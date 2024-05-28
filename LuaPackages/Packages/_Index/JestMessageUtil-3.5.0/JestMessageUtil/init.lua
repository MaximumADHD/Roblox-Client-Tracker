-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-message-util/src/index.ts
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
local Boolean = LuauPolyfill.Boolean
local Error = LuauPolyfill.Error
local String = LuauPolyfill.String
type Array<T> = LuauPolyfill.Array<T>
type Error = LuauPolyfill.Error
local RegExp = require(Packages.RegExp)

local exports = {}

local chalk = require(Packages.ChalkLua)
local jestTypesModule = require(Packages.JestTypes)
type Config_Path = jestTypesModule.Config_Path
type TestResult_SerializableError = jestTypesModule.TestResult_SerializableError
type TestResult_AssertionResult = jestTypesModule.TestResult_AssertionResult
local prettyFormat = require(Packages.PrettyFormat).format

type Path = Config_Path

-- ROBLOX deviation START: additional dependencies
local normalizePromiseError = require(Packages.RobloxShared).normalizePromiseError
-- ROBLOX deviation END

-- ROBLOX deviation: forward declarations
local formatStackTrace, getStackTraceLines, separateMessageFromStack

-- ROBLOX deviation: omitting imports since they're mostly fs related

-- ROBLOX deviation: static definition for StackTraceConfig
export type StackTraceConfig = {
	-- ROBLOX deviation START: using Instance instead of string
	rootDir: Instance?,
	-- ROBLOX deviation END
	testMatch: Array<string>,
}

export type StackTraceOptions = { noStackTrace: boolean, noCodeFrame: boolean? }

--[[
	ROBLOX deviation: rewrote regex patterns and split up patterns for alternations
	original code:
	const JASMINE_IGNORE =
	  /^\s+at(?:(?:.jasmine\-)|\s+jasmine\.buildExpectationResult)/;
]]
-- filter for noisy stack trace lines
local JASMINE_IGNORE = "%s+at(.jasmine%-)"
local JASMINE_IGNORE_BUILDEXPECTATIONRESULT = "%s+at(%s+jasmine%.buildExpectationResult)"
--[[
	ROBLOX deviation: skipping JEST_INTERNALS_IGNORE
	original code:
	const JEST_INTERNALS_IGNORE =
	  /^\s+at.*?jest(-.*?)?(\/|\\)(build|node_modules|packages)(\/|\\)/;
]]
local ANONYMOUS_FN_IGNORE = "^%s+at <anonymous>.*$"
-- ROBLOX deviation: no optional capturing group in Lua string patterns so we try matching against both
local ANONYMOUS_PROMISE_IGNORE = "^%s+at Promise %(<anonymous>%).*$"
local ANONYMOUS_NEW_PROMISE_IGNORE = "^%s+at new Promise %(<anonymous>%).*$"
local ANONYMOUS_GENERATOR_IGNORE = "^%s+at Generator.next %(<anonymous>%).*$"
local NATIVE_NEXT_IGNORE = "^%s+at next %(native%).*$"
local TITLE_INDENT = "  "
local MESSAGE_INDENT = "    "
local STACK_INDENT = "      "
local ANCESTRY_SEPARATOR = " › "
local TITLE_BULLET = chalk.bold("● ")
local STACK_TRACE_COLOR = chalk.dim
local STACK_PATH_REGEXP = "%s*at.*%(?:%d*:%d*%)?"
local STACK_PATH_REGEXP_NATIVE = "%s*at.*%(?native%)?"
local EXEC_ERROR_MESSAGE = "Test suite failed to run"

-- ROBLOX deviation START: rewrote this because Lua doesn't have negative lookahead
local function indentAllLines(lines: string, indent: string?): string
	local t = string.split(lines, "\n")
	for i, l in t do
		t[i] = (indent or "") .. l
	end
	return table.concat(t, "\n")
end
exports.indentAllLines = indentAllLines
-- ROBLOX deviation END

-- string trim5 implementation from http://lua-users.org/wiki/StringTrim
local function trim(string_: string): string
	return String.trim(string_ or "")
end

-- Some errors contain not only line numbers in stack traces
-- e.g. SyntaxErrors can contain snippets of code, and we don't
-- want to trim those, because they may have pointers to the column/character
-- which will get misaligned.
local function trimPaths(string_: string): string
	-- ROBLOX deviation: match both since Lua doesn't have alternations
	if string_:find(STACK_PATH_REGEXP) or string_:find(STACK_PATH_REGEXP_NATIVE) then
		return trim(string_)
	end
	return string_
end

-- ROBLOX deviation START: can't match for blank string in Lua so we match for NOT blank string
local notBlankStringRegexp = "%S"
local blankStringRegexp = {
	test = function(_self, str: string): boolean
		return string.match(str, notBlankStringRegexp) == nil
	end,
}
-- ROBLOX deviation END

local function checkForCommonEnvironmentErrors(error_): string
	-- ROBLOX deviation START: no need to check for jsdom nor node specific environment errors
	-- if
	-- 	String.includes(error_, "ReferenceError: document is not defined")
	-- 	or String.includes(error_, "ReferenceError: window is not defined")
	-- 	or String.includes(error_, "ReferenceError: navigator is not defined")
	-- then
	-- 	return warnAboutWrongTestEnvironment(error_, "jsdom")
	-- elseif String.includes(error_, ".unref is not a function") then
	-- 	return warnAboutWrongTestEnvironment(error_, "node")
	-- end
	-- ROBLOX deviation END
	return error_
end

-- ROBLOX deviation START: not used
-- local function warnAboutWrongTestEnvironment(error_: string, env: "jsdom" | "node")
-- 	return chalk.red(
-- 		chalk.bold(
-- 			(
-- 				'The error below may be caused by using the wrong test environment, see %s.\nConsider using the "%s" test environment.\n\n'
-- 			):format(
-- 				chalk.underline(chalk.dim("https://jestjs.io/docs/configuration#testenvironment-string")),
-- 				tostring(env)
-- 			)
-- 		)
-- 	) .. error_
-- end
-- ROBLOX deviation END

-- ExecError is an error thrown outside of the test suite (not inside an `it` or
-- `before/after each` hooks). If it's thrown, none of the tests in the file
-- are executed.
local function formatExecError(
	error_: Error | TestResult_SerializableError | string | nil,
	config: StackTraceConfig,
	options: StackTraceOptions,
	testPath: string?,
	reuseMessage: boolean?
): string
	if not Boolean.toJSBoolean(error_) or typeof(error_) == "number" then
		error_ = Error.new(('Expected an Error, but "%s" was thrown'):format(tostring(error_)))
		error_.stack = ""
	end

	local message: string, stack: string

	if typeof(error_) == "string" or not Boolean.toJSBoolean(error_) or error_ == nil then
		if not Boolean.toJSBoolean(error_) then
			error_ = "EMPTY ERROR"
		end
		message = ""
		-- ROBLOX FIXME Luau: error_ is guaranteed to be string at this point
		stack = error_ :: string
	else
		-- ROBLOX deviation START: additional logic to handle Promise library error
		if (error_ :: any).kind == "ExecutionError" then
			error_ = normalizePromiseError(error_)
		end
		-- ROBLOX deviation END
		message = error_.message
		stack = if typeof(error_.stack) == "string"
			then error_.stack
			else ("thrown: %s"):format(prettyFormat(error_, { maxDepth = 3 }))
	end

	local separated = separateMessageFromStack(Boolean.toJSBoolean(stack) and stack or "")
	stack = separated.stack

	-- ROBLOX deviation START: using string.find instead
	-- 	if
	-- 		Boolean.toJSBoolean(
	-- 			Array.includes(separated.message, trim(message)) --[[ ROBLOX CHECK: check if 'separated.message' is an Array ]]
	-- 		)
	-- 	then
	if string.find(separated.message, trim(message), 1, true) ~= nil then
		-- ROBLOX deviation END
		-- Often stack trace already contains the duplicate of the message
		message = separated.message
	end

	message = checkForCommonEnvironmentErrors(message)

	message = indentAllLines(message, MESSAGE_INDENT)

	stack = if Boolean.toJSBoolean(stack) and not options.noStackTrace
		then "\n" .. formatStackTrace(stack, config, options, testPath)
		else ""

	if typeof(stack) ~= "string" or (blankStringRegexp:test(message) and blankStringRegexp:test(stack)) then
		-- this can happen if an empty object is thrown.
		message = ("thrown: %s"):format(tostring(prettyFormat(error_, { maxDepth = 3 })))
	end

	local messageToUse
	if reuseMessage then
		messageToUse = (" %s"):format(String.trim(message))
	else
		messageToUse = ("%s\n\n%s"):format(EXEC_ERROR_MESSAGE, message)
	end

	return TITLE_INDENT .. TITLE_BULLET .. messageToUse .. stack .. "\n"
end
exports.formatExecError = formatExecError

local function removeInternalStackEntries(lines: { string }, options: StackTraceOptions): { string }
	local pathCounter = 0

	return Array.filter(lines, function(line)
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

		-- ROBLOX deviation: omitting node specific stuff
		-- if (nodeInternals.some(internal => internal.test(line))) {
		-- 	return false;
		-- }

		-- ROBLOX deviation: match both since Lua doesn't have alternations
		if not line:find(STACK_PATH_REGEXP) or not line:find(STACK_PATH_REGEXP_NATIVE) then
			return true
		end

		-- ROBLOX deviation: match both since Lua doesn't have alternations
		if line:find(JASMINE_IGNORE) or line:find(JASMINE_IGNORE_BUILDEXPECTATIONRESULT) then
			return false
		end

		pathCounter += 1
		if pathCounter == 1 then
			return true -- always keep the first line even if it's from Jest
		end

		if options.noStackTrace then
			return false
		end

		-- if (JEST_INTERNALS_IGNORE.test(line)) {
		-- 	return false;
		-- }

		return true
	end)
end

-- ROBLOX deviation: config does not have StackTraceConfig type annotation
local function formatPaths(config, relativeTestPath, line: string): string
	-- ROBLOX deviation: we don't do any formatting of paths in Lua to align with upstream
	return line
end

function getStackTraceLines(stack: string, options: StackTraceOptions): { string }
	if options == nil then
		options = { noCodeFrame = false, noStackTrace = false }
	end
	return removeInternalStackEntries(string.split(stack, "\n"), options)
end
exports.getStackTraceLines = getStackTraceLines

function formatStackTrace(stack: string, config, options: StackTraceOptions, testPath): string
	local lines = getStackTraceLines(stack, options)

	local relativeTestPath = nil
	if testPath then
		relativeTestPath = "unsupported"
	end

	local stacktrace = table.concat(
		Array.map(Array.filter(lines, Boolean.toJSBoolean), function(line)
			return STACK_INDENT .. formatPaths(config, relativeTestPath, trimPaths(line))
		end),
		"\n"
	)

	return string.format("\n%s", stacktrace)
end
exports.formatStackTrace = formatStackTrace

type FailedResults = Array<{
	content: string,
	result: TestResult_AssertionResult,
}>

local function formatResultsErrors(
	testResults: Array<TestResult_AssertionResult>,
	config: StackTraceConfig,
	options: StackTraceOptions,
	testPath: Path?
): string | nil
	local failedResults: FailedResults = Array.reduce(testResults, function(errors, result)
		Array.forEach(result.failureMessages, function(item)
			table.insert(errors, { content = checkForCommonEnvironmentErrors(item), result = result })
		end)
		return errors
	end, {})

	if not (#failedResults > 0) then
		return nil
	end

	return Array.join(
		Array.map(failedResults, function(ref)
			local result, content = ref.result, ref.content
			local ref_ = separateMessageFromStack(content)
			local message, stack = ref_.message, ref_.stack
			stack = if options.noStackTrace
				then ""
				else STACK_TRACE_COLOR(formatStackTrace(stack, config, options, testPath)) .. "\n"
			message = indentAllLines(message, MESSAGE_INDENT)
			local title = chalk.bold(
				chalk.red(
					TITLE_INDENT
						.. TITLE_BULLET
						.. Array.join(result.ancestorTitles, ANCESTRY_SEPARATOR)
						.. (if #result.ancestorTitles > 0 then ANCESTRY_SEPARATOR else "")
						.. result.title
				)
			) .. "\n"
			return title .. "\n" .. message .. "\n" .. stack
		end),
		"\n"
	)
end
exports.formatResultsErrors = formatResultsErrors

local errorRegexp = "^Error:?%s*$"

local function removeBlankErrorLine(str: string): string
	return String.trimRight(table.concat(
		Array.filter(String.split(str, "\n"), function(line)
			return not line:find(errorRegexp)
		end),
		"\n"
	))
end

-- jasmine and worker farm sometimes don't give us access to the actual
-- Error object, so we have to regexp out the message from the stack string
-- to format it.
function separateMessageFromStack(content: string): { message: string, stack: string }
	if not content then
		return { message = "", stack = "" }
	end

	-- All lines up to what looks like a stack -- or if nothing looks like a stack
	-- (maybe it's a code frame instead), just the first non-empty line.
	-- If the error is a plain "Error:" instead of a SyntaxError or TypeError we
	-- remove the prefix from the message because it is generally not useful.
	--[[
		ROBLOX deviation START: adjusted the RegExp to look for Luau specific stacktrace - line starting with LoadedCode
		original regexp: RegExp([=[^(?:Error: )?([\s\S]*?(?=\n\s*at\s.*:\d*:\d*)|\s*.*)([\s\S]*)$]=])
	]]
	local re = RegExp([=[^(?:Error: )?([\s\S]*?(?=\n\s*LoadedCode.*:\d*)|\s*.*)([\s\S]*)$]=])
	-- ROBLOX deviation END
	local messageMatch = re:exec(content)
	if not messageMatch then
		-- For typescript
		error("If you hit this error, the regex above is buggy.")
	end
	local message = removeBlankErrorLine(messageMatch[2])
	local stack = removeBlankErrorLine(messageMatch[3])
	return { message = message, stack = stack }
end
exports.separateMessageFromStack = separateMessageFromStack

return exports
