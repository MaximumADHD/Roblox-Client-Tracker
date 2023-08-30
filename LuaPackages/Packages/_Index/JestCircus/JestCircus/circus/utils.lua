-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-circus/src/utils.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Error = LuauPolyfill.Error
type Array<T> = LuauPolyfill.Array<T>
type Error = LuauPolyfill.Error
type Promise<T> = LuauPolyfill.Promise<T>

local Promise = require(Packages.Promise)

-- ROBLOX deviation START: predefine variables
local makeTestResults
local getTestID
local _getError
local getErrorStack
local invariant
-- ROBLOX deviation END

-- ROBLOX deviation START: add additional imports
local RegExp = require(Packages.RegExp)
-- ROBLOX deviation END

-- ROBLOX deviation START: add function to extract bare string message from stacktrace line
local function separateMessageFromStack(content: string): { message: string, stack: string }
	if not content then
		return { message = "", stack = "" }
	end
	local message = content
	local stack = ""
	local re = RegExp([=[^(\s*LoadedCode.*:\d+)?(: )?(.*)$]=])
	local messageMatch = re:exec(content)
	if messageMatch then
		message = messageMatch[4]
		stack = messageMatch[2]
	end
	return { message = message, stack = stack }
end
-- ROBLOX deviation END

-- ROBLOX FIXME START: added types and objects that do not exist in Luau
type NodeJS_Timeout = LuauPolyfill.Timeout
-- ROBLOX FIXME END

local exports = {}

-- ROBLOX deviation START: not using path and co dependencies
-- local path = require(Packages.path)
-- local co = require(Packages.co).default
-- ROBLOX deviation END
-- ROBLOX deviation: use dedent implementation from graphql-lua
local dedent = require(Packages.RobloxShared).dedent
-- ROBLOX deviation: generator functions are not supported in Lua
-- local isGeneratorFn = require(Packages["is-generator-fn"]).default
--[[
	ROBLOX deviation:
	not using slash and stack-utils dependencies
	original code:
	import slash = require('slash');
	import StackUtils = require('stack-utils');
]]
local testResultModule = require(Packages.JestTestResult)
type AssertionResult = testResultModule.AssertionResult
type Status = testResultModule.Status
local typesModule = require(Packages.JestTypes)
type Circus_BlockName = typesModule.Circus_BlockName
type Circus_DescribeBlock = typesModule.Circus_DescribeBlock
type Circus_BlockMode = typesModule.Circus_BlockMode
type Circus_TestFn = typesModule.Circus_TestFn
type Circus_TestMode = typesModule.Circus_TestMode
type Circus_TestName = typesModule.Circus_TestName
type Circus_Exception = typesModule.Circus_Exception
type Circus_TestEntry = typesModule.Circus_TestEntry
type Circus_Hook = typesModule.Circus_Hook
type Circus_AsyncFn = typesModule.Circus_AsyncFn
type Circus_TestContext = typesModule.Circus_TestContext
type Circus_TestResult = typesModule.Circus_TestResult
type Circus_TestResults = typesModule.Circus_TestResults
type Circus_TestStatus = typesModule.Circus_TestStatus
type Circus_RunResult = typesModule.Circus_RunResult
type Global_PromiseReturningTestFn = typesModule.Global_PromiseReturningTestFn
type Global_TestReturnValue = typesModule.Global_TestReturnValue
type Global_GeneratorReturningTestFn = typesModule.Global_GeneratorReturningTestFn
local jestUtilModule = require(Packages.JestUtil)
local ErrorWithStack = jestUtilModule.ErrorWithStack
local convertDescriptorToString = jestUtilModule.convertDescriptorToString
local formatTime = jestUtilModule.formatTime
local prettyFormat = require(Packages.PrettyFormat).format
-- ROBLOX deviation: move to `state_.lua` to avoid cyclic dependency
local stateModule = require(script.Parent.state_)
local ROOT_DESCRIBE_BLOCK_NAME = stateModule.ROOT_DESCRIBE_BLOCK_NAME
local getState = stateModule.getState

-- ROBLOX deviation START: not using slash and stack-utils dependencies
-- local stackUtils = StackUtils.new({ cwd = "A path that does not exist" })
-- local jestEachBuildDir = slash(path:dirname(require:resolve("jest-each")))
-- ROBLOX deviation END

local function takesDoneCallback(
	fn: Circus_AsyncFn
): boolean --[[ ROBLOX FIXME: change to TSTypePredicate equivalent if supported ]] --[[ fn is Global.DoneTakingTestFn ]]
	return debug.info(fn, "a") > 1
end

-- ROBLOX deviation START: generator functions are not supported in Lua
local function isGeneratorFunction(
	_fn: Global_PromiseReturningTestFn | Global_GeneratorReturningTestFn
): boolean --[[ ROBLOX FIXME: change to TSTypePredicate equivalent if supported ]] --[[ fn is Global.GeneratorReturningTestFn ]]
	--[[
		ROBLOX deviation START: generator functions are not supported in Lua
		original code:
		return isGeneratorFn(fn);
	]]
	return false
	-- ROBLOX deviation END
end

local function makeDescribe(
	name: Circus_BlockName,
	parent: Circus_DescribeBlock?,
	mode: Circus_BlockMode?
): Circus_DescribeBlock
	local _mode = mode
	if parent ~= nil and not Boolean.toJSBoolean(mode) then
		-- If not set explicitly, inherit from the parent describe.
		_mode = parent.mode
	end

	return {
		type = "describeBlock", -- eslint-disable-next-line sort-keys
		children = {},
		hooks = {},
		-- ROBLOX FIXME Luau: if statement above should narrow the type to non-nil
		mode = _mode :: Circus_BlockMode,
		name = convertDescriptorToString(name),
		parent = parent,
		tests = {},
	}
end
exports.makeDescribe = makeDescribe

local function makeTest(
	fn: Circus_TestFn,
	mode: Circus_TestMode,
	name: Circus_TestName,
	parent: Circus_DescribeBlock,
	timeout: number | nil,
	asyncError: Circus_Exception
): Circus_TestEntry
	return {
		type = "test", -- eslint-disable-next-line sort-keys
		asyncError = asyncError,
		duration = nil,
		errors = {},
		fn = fn,
		invocations = 0,
		mode = mode,
		name = convertDescriptorToString(name),
		parent = parent,
		retryReasons = {},
		seenDone = false,
		startedAt = nil,
		status = nil,
		timeout = timeout,
	}
end
exports.makeTest = makeTest

-- Traverse the tree of describe blocks and return true if at least one describe
-- block has an enabled test.
-- Traverse the tree of describe blocks and return true if at least one describe
-- block has an enabled test.
local function hasEnabledTest(describeBlock: Circus_DescribeBlock): boolean
	local ref = getState()
	local hasFocusedTests, testNamePattern = ref.hasFocusedTests, ref.testNamePattern
	return Array.some(describeBlock.children, function(child: Circus_DescribeBlock | Circus_TestEntry)
		return if child.type == "describeBlock"
			then hasEnabledTest(child)
			else not (
				child.mode == "skip"
				or (hasFocusedTests and child.mode ~= "only")
				or (testNamePattern and not testNamePattern:test(getTestID(child :: Circus_TestEntry)))
			)
	end)
end

type DescribeHooks = {
	beforeAll: Array<Circus_Hook>,
	afterAll: Array<Circus_Hook>,
}

local function getAllHooksForDescribe(describe: Circus_DescribeBlock): DescribeHooks
	local result: DescribeHooks = { afterAll = {}, beforeAll = {} }

	if hasEnabledTest(describe) then
		for _, hook in ipairs(describe.hooks) do
			if hook.type == "beforeAll" then
				table.insert(result.beforeAll, hook)
			elseif hook.type == "afterAll" then
				table.insert(result.afterAll, hook)
			end
		end
	end

	return result
end
exports.getAllHooksForDescribe = getAllHooksForDescribe

type TestHooks = {
	beforeEach: Array<Circus_Hook>,
	afterEach: Array<Circus_Hook>,
}

local function getEachHooksForTest(test: Circus_TestEntry): TestHooks
	local result: TestHooks = { afterEach = {}, beforeEach = {} }
	local block: Circus_DescribeBlock | nil = test.parent

	repeat
		local beforeEachForCurrentBlock = {}
		-- TODO: inline after https://github.com/microsoft/TypeScript/pull/34840 is released

		local hook: Circus_Hook
		for _, hook_ in ipairs((block :: Circus_DescribeBlock).hooks) do
			hook = hook_
			if hook.type == "beforeEach" then
				table.insert(beforeEachForCurrentBlock, hook)
			elseif hook.type == "afterEach" then
				table.insert(result.afterEach, hook)
			end
		end
		-- 'beforeEach' hooks are executed from top to bottom, the opposite of the
		-- way we traversed it.

		result.beforeEach = Array.concat({}, beforeEachForCurrentBlock, result.beforeEach)

		block = (block :: Circus_DescribeBlock).parent
	until not Boolean.toJSBoolean(block)
	return result
end
exports.getEachHooksForTest = getEachHooksForTest

local function describeBlockHasTests(describe: Circus_DescribeBlock): boolean
	return Array.some(describe.children, function(child)
		return child.type == "test" or describeBlockHasTests(child)
	end)
end
exports.describeBlockHasTests = describeBlockHasTests

local function _makeTimeoutMessage(timeout: number, isHook: boolean)
	return ("Exceeded timeout of %s for a %s.\nUse jest.setTimeout(newTimeout) to increase the timeout value, if this is a long-running test."):format(
		formatTime(timeout),
		if isHook then "hook" else "test"
	)
end

-- Global values can be overwritten by mocks or tests. We'll capture
-- the original values in the variables before we require any files.
-- ROBLOX deviation: using LuauPolyfill instead of global
local setTimeout, clearTimeout = LuauPolyfill.setTimeout, LuauPolyfill.clearTimeout

local function checkIsError(
	error_: unknown
): boolean --[[ ROBLOX FIXME: change to TSTypePredicate equivalent if supported ]] --[[ error is Error ]]
	return Boolean.toJSBoolean(error_)
		and Boolean.toJSBoolean((error_ :: Error).message)
		and Boolean.toJSBoolean((error_ :: Error).stack)
end

local function callAsyncCircusFn(
	testOrHook: Circus_TestEntry | Circus_Hook,
	testContext: Circus_TestContext | nil,
	ref: { isHook: boolean, timeout: number }
): Promise<unknown>
	local isHook, timeout = ref.isHook, ref.timeout
	local timeoutID: NodeJS_Timeout
	local completed = false

	local fn, asyncError = testOrHook.fn, testOrHook.asyncError

	return Promise.new(function(resolve: (...any) -> (), reject: (reason: any) -> ())
		timeoutID = setTimeout(function()
			return reject(_makeTimeoutMessage(timeout, isHook))
		end, timeout)

		-- If this fn accepts `done` callback we return a promise that fulfills as
		-- soon as `done` called.
		if takesDoneCallback(fn) then
			local returnedValue: unknown = nil

			local function done(reason: (Error | string)?): ()
				-- We need to keep a stack here before the promise tick
				local errorAtDone = ErrorWithStack.new(nil, done)

				if not completed and testOrHook.seenDone then
					errorAtDone.message = "Expected done to be called once, but it was called multiple times."

					if Boolean.toJSBoolean(reason) then
						errorAtDone.message ..= " Reason: " .. prettyFormat(reason, { maxDepth = 3 })
					end
					reject(errorAtDone)
					error(errorAtDone)
				else
					-- ROBLOX FIXME Luau: both Circus_TestEntry and Circus_Hook have this field but Luau analyze still complains
					(testOrHook :: any).seenDone = true
				end

				-- Use `Promise.resolve` to allow the event loop to go a single tick in case `done` is called synchronously
				-- ROBLOX deviation: using Promise.delay instead of Promise.resolve as the latter resolves synchronously in Lua implementation
				Promise.delay(0):andThen(function()
					if returnedValue ~= nil then
						-- ROBLOX CHECK: dedent with tagged templates might be implemented differently
						asyncError.message = dedent(([[

      Test functions cannot both take a 'done' callback and return something. Either use a 'done' callback, or return a promise.
      Returned value: %s
      ]]):format(prettyFormat(returnedValue, {
							maxDepth = 3,
						})))
						return reject(asyncError)
					end

					local errorAsErrorObject: Error
					if checkIsError(reason) then
						-- ROBLOX FIXME: Luau doesn't support type assertions with a function
						errorAsErrorObject = reason :: Error
					else
						errorAsErrorObject = errorAtDone
						errorAtDone.message = ("Failed: %s"):format(prettyFormat(reason, { maxDepth = 3 }))
					end

					-- Consider always throwing, regardless if `reason` is set or not
					if completed and Boolean.toJSBoolean(reason) then
						errorAsErrorObject.message = "Caught error after test environment was torn down\n\n"
							.. errorAsErrorObject.message

						error(errorAsErrorObject)
					end

					return if Boolean.toJSBoolean(reason) then reject(errorAsErrorObject) else resolve()
				end)
			end

			-- ROBLOX FIXME Luau: roblox cli doesn't allow to call when type is a union of functions
			returnedValue = (fn :: any)(testContext, done)

			return
		end

		local returnedValue: Global_TestReturnValue
		-- ROBLOX FIXME Luau: seems like a false negative for type conversion
		if isGeneratorFunction(fn :: any) then
			-- ROBLOX deviation START: generator functions are not supported in Lua
			error("Generator functions are not supported in Lua")
			-- returnedValue = co:wrap(fn)({})
			-- ROBLOX deviation END
		else
			-- ROBLOX FIXME Luau: pcall should accept variadic number of params
			local ok, result = (pcall :: any)(fn, testContext)
			if not ok then
				local error_ = result
				reject(error_)
				return
			end
			returnedValue = result
		end

		-- If it's a Promise, return it. Test for an object with a `then` function
		-- to support custom Promise implementations.
		if
			typeof(returnedValue) == "table"
			and returnedValue ~= nil
			and typeof(returnedValue.andThen) == "function"
		then
			returnedValue:andThen(function()
				return resolve()
			end, reject)
			return
		end

		if not isHook and returnedValue ~= nil then
			-- ROBLOX CHECK: dedent with tagged templates might be implemented differently
			reject((dedent(([[

test functions can only return Promise or undefined.
      Returned value: %s
      ]]):format(prettyFormat(returnedValue, {
				maxDepth = 3,
			})))))
			return
		end

		-- Otherwise this test is synchronous, and if it didn't throw it means
		-- it passed.
		resolve()
	end)
		:andThen(function()
			completed = true
			-- If timeout is not cleared/unrefed the node process won't exit until
			-- it's resolved.
			-- ROBLOX deviation: no need to unref the timeoutID in Lua
			-- timeoutID.unref?.()
			clearTimeout(timeoutID)
		end)
		:catch(function(error_)
			completed = true
			-- ROBLOX deviation: no need to unref the timeoutID in Lua
			-- timeoutID.unref?.()
			clearTimeout(timeoutID)
			-- ROBLOX deviation START: add special handling for bare strings getting thrown as Promise chain will make them unusable otherwise
			if typeof(error_) == "string" then
				local separated = separateMessageFromStack(error_)
				local wrappedError = Error.new(separated.message);
				(wrappedError :: any).__stack = separated.stack
				Error.__recalculateStacktrace(wrappedError)
				error(wrappedError)
			end
			-- ROBLOX deviation END
			error(error_)
		end)
end
exports.callAsyncCircusFn = callAsyncCircusFn

local function getTestDuration(test: Circus_TestEntry): number | nil
	local startedAt = test.startedAt
	return if typeof(startedAt) == "number" then DateTime.now().UnixTimestampMillis - startedAt else nil
end
exports.getTestDuration = getTestDuration

local function makeRunResult(describeBlock: Circus_DescribeBlock, unhandledErrors: Array<Error>): Circus_RunResult
	return {
		testResults = makeTestResults(describeBlock),
		unhandledErrors = Array.map(Array.map(unhandledErrors, _getError), getErrorStack),
	}
end
exports.makeRunResult = makeRunResult

local function makeSingleTestResult(test: Circus_TestEntry): Circus_TestResult
	local _includeTestLocationInResult = getState().includeTestLocationInResult
	local testPath = {}
	local parent: Circus_TestEntry | Circus_DescribeBlock | nil = test

	local status = test.status
	invariant(status, "Status should be present after tests are run.")

	repeat
		--[[
			ROBLOX FIXME Luau:
			weird type checking issue.
			In the first loop pass parent is guaranteed to not be nil because it's equal to `test`
			Every concecutive loop run is guarded by until check
		]]
		table.insert(testPath, 1, (parent :: Circus_TestEntry | Circus_DescribeBlock).name)

		parent = (parent :: Circus_TestEntry | Circus_DescribeBlock).parent
	until parent == nil

	local location = nil
	-- ROBLOX TODO START: uncomment when implemented relevant pieces of stackUtils
	-- if includeTestLocationInResult then
	-- 	local stackLines = String.split(test.asyncError.stack, "\n")
	-- 	local stackLine = stackLines[2]
	-- 	local parsedLine = stackUtils:parseLine(stackLine)
	-- 	if parsedLine ~= nil and parsedLine.file ~= nil and String.startsWith(parsedLine.file, jestEachBuildDir) then
	-- 		local stackLine = stackLines[5]
	-- 		parsedLine = stackUtils:parseLine(stackLine)
	-- 	end
	-- 	if
	-- 		Boolean.toJSBoolean(parsedLine)
	-- 		and typeof(parsedLine.column) == "number"
	-- 		and typeof(parsedLine.line) == "number"
	-- 	then
	-- 		location = {
	-- 			column = parsedLine.column,
	-- 			line = parsedLine.line,
	-- 		}
	-- 	end
	-- end
	-- ROBLOX TODO END

	local errorsDetailed = Array.map(test.errors, _getError)

	return {
		duration = test.duration,
		errors = Array.map(errorsDetailed, getErrorStack),
		errorsDetailed = errorsDetailed,
		invocations = test.invocations,
		location = location,
		retryReasons = Array.map(Array.map(test.retryReasons, _getError), getErrorStack),
		-- ROBLOX FIXME Luau: assert above should narrow the type to non-nil
		status = status :: Circus_TestStatus,
		testPath = Array.from(testPath),
	}
end
exports.makeSingleTestResult = makeSingleTestResult

function makeTestResults(describeBlock: Circus_DescribeBlock): Circus_TestResults
	local testResults: Circus_TestResults = {}

	for _, child in ipairs(describeBlock.children) do
		if child.type == "describeBlock" then
			testResults = Array.concat(testResults, makeTestResults(child))
		elseif child.type == "test" then
			table.insert(testResults, makeSingleTestResult(child))
		end
	end

	return testResults
end

-- Return a string that identifies the test (concat of parent describe block
-- names + test title)
function getTestID(test: Circus_TestEntry): string
	local titles = {}
	local parent: Circus_TestEntry | Circus_DescribeBlock | nil = test
	repeat
		--[[
			ROBLOX FIXME Luau:
			weird type checking issue.
			In the first loop pass parent is guaranteed to not be nil because it's equal to `test`
			Every concecutive loop run is guarded by until check
		]]
		table.insert(titles, 1, (parent :: Circus_TestEntry | Circus_DescribeBlock).name)

		parent = (parent :: Circus_TestEntry | Circus_DescribeBlock).parent
	until parent == nil

	table.remove(titles, 1) -- remove TOP_DESCRIBE_BLOCK_NAME
	return Array.join(titles, " ")
end
exports.getTestID = getTestID

function _getError(errors: (Circus_Exception | Array<Circus_Exception | nil | Circus_Exception>)?): Error
	local error_
	local asyncError: Circus_Exception

	if Array.isArray(errors) then
		-- ROBLOX FIXME START: Luau doesn't support type assertions with a function
		local errors_ = errors :: Array<Circus_Exception | nil | Circus_Exception>
		error_ = errors_[1]
		asyncError = errors_[2]
		-- ROBLOX FIXME END
	else
		error_ = errors
		asyncError = Error.new()
	end

	if error_ ~= nil and (typeof(error_.stack) == "string" or Boolean.toJSBoolean(error_.message)) then
		return error_
	end

	asyncError.message = ("thrown: %s"):format(prettyFormat(error_, { maxDepth = 3 }))

	return asyncError
end

function getErrorStack(error_): string
	return if typeof(error_.stack) == "string" then error_.stack else error_.message
end

local function addErrorToEachTestUnderDescribe(
	describeBlock: Circus_DescribeBlock,
	error_,
	asyncError: Circus_Exception
): ()
	for _, child in ipairs(describeBlock.children) do
		if child.type == "describeBlock" then
			-- ROBLOX FIXME Luau: analyze should narrow the child type here
			addErrorToEachTestUnderDescribe(child :: Circus_DescribeBlock, error_, asyncError)
		elseif child.type == "test" then
			table.insert(child.errors, { error_, asyncError })
		end
	end
end
exports.addErrorToEachTestUnderDescribe = addErrorToEachTestUnderDescribe

function invariant(
	condition: unknown,
	message: string?
): () --[[ ROBLOX FIXME: change to TSTypePredicate equivalent if supported ]] --[[ asserts condition ]]
	if not Boolean.toJSBoolean(condition) then
		error(Error.new(message))
	end
end
exports.invariant = invariant

local function parseSingleTestResult(testResult: Circus_TestResult): AssertionResult
	local status: Status
	if testResult.status == "skip" then
		status = "pending"
	elseif testResult.status == "todo" then
		status = "todo"
	elseif #testResult.errors > 0 then
		status = "failed"
	else
		status = "passed"
	end

	local ancestorTitles = Array.filter(testResult.testPath, function(name)
		return name ~= ROOT_DESCRIBE_BLOCK_NAME
	end)
	local title = table.remove(ancestorTitles)

	return {
		ancestorTitles = ancestorTitles,
		duration = testResult.duration,
		failureDetails = testResult.errorsDetailed,
		failureMessages = Array.from(testResult.errors),
		fullName = if Boolean.toJSBoolean(title)
			then Array.join(Array.concat(ancestorTitles, title), " ")
			else Array.join(ancestorTitles, " "),
		invocations = testResult.invocations,
		location = testResult.location,
		numPassingAsserts = 0,
		retryReasons = Array.from(testResult.retryReasons),
		status = status,
		title = testResult.testPath[#testResult.testPath],
	}
end
exports.parseSingleTestResult = parseSingleTestResult

return exports
