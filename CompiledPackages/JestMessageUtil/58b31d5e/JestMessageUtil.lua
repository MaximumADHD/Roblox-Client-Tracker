-- upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-message-util/src/index.ts

local CurrentModule = script
local Packages = CurrentModule.Parent

local RegExp = require(Packages.RegExp)

local chalk = require(Packages.ChalkLua)
local jestTypesModule = require(Packages.JestTypes)
local Error = jestTypesModule.Error
type Error = jestTypesModule.Error
type Config_Path = jestTypesModule.Config_Path
type TestResult_SerializableError = jestTypesModule.TestResult_SerializableError
type TestResult_AssertionResult = jestTypesModule.TestResult_AssertionResult
local prettyFormat = require(Packages.PrettyFormat).format

type Path = Config_Path

local RobloxShared = require(Packages.RobloxShared)
local normalizePromiseError = RobloxShared.normalizePromiseError
local cleanLoadStringStack = RobloxShared.cleanLoadStringStack

-- forward declarations
local formatStackTrace, getStackTraceLines, separateMessageFromStack

export type StackTraceConfig = {
	rootDir: Instance?,
	testMatch: { string },
}

export type StackTraceOptions = { noStackTrace: boolean, noCodeFrame: boolean?, stackDepth: number? }

-- rewrote regex patterns and split up patterns for alternations
-- filter for noisy stack trace lines
local JASMINE_IGNORE = "%s+at(.jasmine%-)"
local JASMINE_IGNORE_BUILDEXPECTATIONRESULT = "%s+at(%s+jasmine%.buildExpectationResult)"
local ANONYMOUS_FN_IGNORE = "^%s+at <anonymous>.*$"
-- no optional capturing group in Lua string patterns so we try matching against both
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

local function indentAllLines(lines: string, indent: string?): string
	local t = string.split(lines, "\n")
	for i, l in t do
		t[i] = (indent or "") .. l
	end
	return table.concat(t, "\n")
end

local function trim(string_: string): string
	return ((string_ or ""):match("^%s*(.-)%s*$")) :: string
end

-- Some errors contain not only line numbers in stack traces
-- e.g. SyntaxErrors can contain snippets of code, and we don't
-- want to trim those, because they may have pointers to the column/character
-- which will get misaligned.
local function trimPaths(string_: string): string
	-- match both since Lua doesn't have alternations
	if string_:find(STACK_PATH_REGEXP) or string_:find(STACK_PATH_REGEXP_NATIVE) then
		return trim(string_)
	end
	return string_
end

-- can't match for blank string in Lua so we match for NOT blank string
local notBlankStringRegexp = "%S"
local blankStringRegexp = {
	test = function(_self, str: string): boolean
		return string.match(str, notBlankStringRegexp) == nil
	end,
}

local function checkForCommonEnvironmentErrors(error_): string
	return error_
end

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
	if error_ == nil or error_ == "" or typeof(error_) == "number" then
		error_ = Error.new(('Expected an Error, but "%s" was thrown'):format(tostring(error_)));
		(error_ :: any).stack = ""
	end

	local message: string, stack: string

	if typeof(error_) == "string" or error_ == nil then
		if error_ == nil or error_ == "" then
			error_ = "EMPTY ERROR"
		end
		message = ""
		stack = error_ :: string
	else
		if (error_ :: any).kind == "ExecutionError" then
			error_ = normalizePromiseError(error_)
		end
		message = error_.message
		stack = if typeof(error_.stack) == "string"
			then error_.stack
			else ("thrown: %s"):format(prettyFormat(error_, { maxDepth = 3 }))
	end

	local separated = separateMessageFromStack(if stack ~= "" then stack else "")
	stack = separated.stack

	if string.find(separated.message, trim(message), 1, true) ~= nil then
		-- Often stack trace already contains the duplicate of the message
		message = separated.message
	end

	message = checkForCommonEnvironmentErrors(message)

	message = indentAllLines(message, MESSAGE_INDENT)

	stack = if stack ~= "" and not options.noStackTrace
		then "\n" .. formatStackTrace(stack, config, options, testPath)
		else ""

	if typeof(stack) ~= "string" or (blankStringRegexp:test(message) and blankStringRegexp:test(stack)) then
		-- this can happen if an empty object is thrown.
		message = ("thrown: %s"):format(tostring(prettyFormat(error_, { maxDepth = 3 })))
	end

	local messageToUse
	if reuseMessage then
		messageToUse = (" %s"):format(trim(message))
	else
		messageToUse = ("%s\n\n%s"):format(EXEC_ERROR_MESSAGE, message)
	end

	return TITLE_INDENT .. TITLE_BULLET .. messageToUse .. stack .. "\n"
end

local function removeInternalStackEntries(lines: { string }, options: StackTraceOptions): { string }
	local pathCounter = 0

	local result = {}
	for _, line in lines do
		local keep = true

		if line:find(ANONYMOUS_FN_IGNORE) then
			keep = false
		elseif line:find(ANONYMOUS_PROMISE_IGNORE) or line:find(ANONYMOUS_NEW_PROMISE_IGNORE) then
			keep = false
		elseif line:find(ANONYMOUS_GENERATOR_IGNORE) then
			keep = false
		elseif line:find(NATIVE_NEXT_IGNORE) then
			keep = false
		elseif not line:find(STACK_PATH_REGEXP) or not line:find(STACK_PATH_REGEXP_NATIVE) then
			-- not a stack path line, keep it
		elseif line:find(JASMINE_IGNORE) or line:find(JASMINE_IGNORE_BUILDEXPECTATIONRESULT) then
			keep = false
		else
			pathCounter += 1
			if pathCounter == 1 then
				-- always keep the first line even if it's from Jest
			elseif options.noStackTrace then
				keep = false
			end
		end

		if keep then
			table.insert(result, line)
		end
	end
	return result
end

local function formatPaths(config, relativeTestPath, line: string): string
	-- if loadstring is used, format the loadstring stacktrace to look like a path
	return cleanLoadStringStack(line)
end

function getStackTraceLines(stack: string, options: StackTraceOptions): { string }
	if options == nil then
		options = { noCodeFrame = false, noStackTrace = false }
	end
	local lines = removeInternalStackEntries(string.split(stack, "\n"), options)
	if options.stackDepth and options.stackDepth > 0 and #lines > options.stackDepth then
		local truncated = table.move(lines, 1, options.stackDepth, 1, {})
		table.insert(truncated, ("      ... %d more lines truncated"):format(#lines - options.stackDepth))
		return truncated
	end
	return lines
end

function formatStackTrace(stack: string, config, options: StackTraceOptions, testPath): string
	local lines = getStackTraceLines(stack, options)

	local relativeTestPath = nil
	if testPath then
		relativeTestPath = "unsupported"
	end

	local filtered = {}
	for _, line in lines do
		if line ~= nil and line ~= "" then
			table.insert(filtered, STACK_INDENT .. formatPaths(config, relativeTestPath, trimPaths(line)))
		end
	end
	local stacktrace = table.concat(filtered, "\n")

	return string.format("\n%s", stacktrace)
end

type FailedResults = {
	{
		content: string,
		result: TestResult_AssertionResult,
	}
}

local function formatResultsErrors(
	testResults: { TestResult_AssertionResult },
	config: StackTraceConfig,
	options: StackTraceOptions,
	testPath: Path?
): string | nil
	local failedResults: FailedResults = {}
	for _, result in testResults do
		for _, item in result.failureMessages do
			table.insert(failedResults, { content = checkForCommonEnvironmentErrors(item), result = result })
		end
	end

	if #failedResults == 0 then
		return nil
	end

	local mapped = {}
	for _, ref in failedResults do
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
					.. table.concat(result.ancestorTitles, ANCESTRY_SEPARATOR)
					.. (if #result.ancestorTitles > 0 then ANCESTRY_SEPARATOR else "")
					.. result.title
			)
		) .. "\n"
		table.insert(mapped, title .. "\n" .. message .. "\n" .. stack)
	end

	return table.concat(mapped, "\n")
end

local errorRegexp = "^Error:?%s*$"

local function removeBlankErrorLine(str: string): string
	local lines = string.split(str, "\n")
	local filtered = {}
	for _, line in lines do
		if not line:find(errorRegexp) then
			table.insert(filtered, line)
		end
	end
	local joined = table.concat(filtered, "\n")
	return (joined:match("^(.-)%s*$")) :: string
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
	-- adjusted the RegExp to look for Luau specific stacktrace - line starting with LoadedCode
	local re = RegExp([=[^(?:Error: )?([\s\S]*?(?=\n\s*LoadedCode.*:\d*)|\s*.*)([\s\S]*)$]=])
	local messageMatch = re:exec(content)
	if not messageMatch then
		-- For typescript
		error("If you hit this error, the regex above is buggy.")
	end
	local message = removeBlankErrorLine(messageMatch[2])
	local stack = removeBlankErrorLine(messageMatch[3])
	return { message = message, stack = stack }
end

return {
	indentAllLines = indentAllLines,
	formatExecError = formatExecError,
	getStackTraceLines = getStackTraceLines,
	formatStackTrace = formatStackTrace,
	formatResultsErrors = formatResultsErrors,
	separateMessageFromStack = separateMessageFromStack,
}
