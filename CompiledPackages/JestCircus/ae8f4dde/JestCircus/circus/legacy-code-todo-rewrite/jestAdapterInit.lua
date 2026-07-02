-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-circus/src/legacy-code-todo-rewrite/jestAdapterInit.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local Packages = script.Parent.Parent.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>
type Promise<T> = LuauPolyfill.Promise<T>
local Promise = require(Packages.Promise)

-- ROBLOX FIXME START: added types and objects that do not exist in Luau
type NodeJS_Process = any
-- ROBLOX FIXME END

local exports = {}

local throatModule = require(Packages.Throat)
local throat = throatModule.default
type ThroatLateBound<TResult, TArgs> = throatModule.ThroatLateBound<TResult, TArgs>

local environmentModule = require(Packages.JestEnvironment)
type JestEnvironment = environmentModule.JestEnvironment
local test_resultModule = require(Packages.JestTestResult)
type AssertionResult = test_resultModule.AssertionResult
type Status = test_resultModule.Status
type TestFileEvent = test_resultModule.TestFileEvent
type TestResult = test_resultModule.TestResult
local createEmptyTestResult = test_resultModule.createEmptyTestResult
local typesModule = require(Packages.JestTypes)
type Circus_Event = typesModule.Circus_Event
type Circus_RunResult = typesModule.Circus_RunResult
type Circus_TestEntry = typesModule.Circus_TestEntry
type Config_GlobalConfig = typesModule.Config_GlobalConfig
type Config_Path = typesModule.Config_Path
type Config_ProjectConfig = typesModule.Config_ProjectConfig
type Global_ConcurrentTestFn = typesModule.Global_ConcurrentTestFn
type Global_TestFrameworkGlobals = typesModule.Global_TestFrameworkGlobals
-- ROBLOX deviation START: additional types
type Global_ItBase = typesModule.Global_ItBase
type Global_ItConcurrentBase = typesModule.Global_ItConcurrentBase
type Global_ItConcurrent = typesModule.Global_ItConcurrent
type Global_ItConcurrentExtended = typesModule.Global_ItConcurrentExtended
-- ROBLOX deviation END
local expectModule = require(Packages.Expect)
local extractExpectedAssertionsErrors = expectModule.extractExpectedAssertionsErrors
local getState = expectModule.getState
local setState = expectModule.setState
local bind = require(Packages.JestEach).bind
local jest_message_utilModule = require(Packages.JestMessageUtil)
local formatExecError = jest_message_utilModule.formatExecError
local formatResultsErrors = jest_message_utilModule.formatResultsErrors
local jest_snapshotModule = require(Packages.JestSnapshot)
local SnapshotState = jest_snapshotModule.SnapshotState
type SnapshotStateType = jest_snapshotModule.JestSnapshot_SnapshotStateType
local addSerializer = jest_snapshotModule.addSerializer
local buildSnapshotResolver = jest_snapshotModule.buildSnapshotResolver
local globals = require(script.Parent.Parent).default
local run = require(script.Parent.Parent.run).default
local stateModule = require(script.Parent.Parent.state)
local ROOT_DESCRIBE_BLOCK_NAME = stateModule.ROOT_DESCRIBE_BLOCK_NAME
local addEventHandler = stateModule.addEventHandler
local dispatch = stateModule.dispatch
local getRunnerState = stateModule.getState
local testCaseReportHandler = require(script.Parent.Parent.testCaseReportHandler).default
local getTestID = require(script.Parent.Parent.utils).getTestID
local jestExpectModule = require(script.Parent.jestExpect)
local createExpect = jestExpectModule.default
type Expect = jestExpectModule.Expect

type Process = NodeJS_Process

type JestGlobals = Global_TestFrameworkGlobals & { expect: Expect, expectExtended: any }

-- ROBLOX deviation START: additional deps
local RobloxShared = require(Packages.RobloxShared)
local getRelativePath = RobloxShared.getRelativePath
-- ROBLOX deviation END

-- ROBLOX deviation START: predeclare variables
local handleSnapshotStateAfterRetry
local eventHandler
local _addExpectedAssertionErrors
local _addSuppressedErrors
-- ROBLOX deviation END

local function initialize(
	ref: {
		config: Config_ProjectConfig,
		environment: JestEnvironment,
		globalConfig: Config_GlobalConfig,
		-- ROBLOX deviation: no default param
		localRequire: <T>(path: Config_Path) -> T,
		-- ROBLOX deviation START: use ModuleScript instead of string
		testPath: ModuleScript,
		-- ROBLOX deviation END
		parentProcess: Process,
		sendMessageToJest: TestFileEvent?,
		setGlobalsForRuntime: (globals: JestGlobals) -> (),
	}
): Promise<{ globals: Global_TestFrameworkGlobals, snapshotState: SnapshotStateType }>
	local config, environment, globalConfig, localRequire, parentProcess, sendMessageToJest, setGlobalsForRuntime, testPath =
		ref.config,
		ref.environment,
		ref.globalConfig,
		ref.localRequire,
		ref.parentProcess,
		ref.sendMessageToJest,
		ref.setGlobalsForRuntime,
		ref.testPath

	return Promise.resolve():andThen(function()
		if globalConfig.testTimeout ~= nil and globalConfig.testTimeout > 0 then
			getRunnerState().testTimeout = globalConfig.testTimeout
		end

		local mutex = throat(globalConfig.maxConcurrency) :: ThroatLateBound<any, any>

		-- @ts-expect-error
		local globalsObject: Global_TestFrameworkGlobals = Object.assign({}, globals, {
			fdescribe = globals.describe.only,
			fit = globals.it.only,
			xdescribe = globals.describe.skip,
			xit = globals.it.skip,
			xtest = globals.it.skip,
		})

		globalsObject.test.concurrent = (function(
			-- ROBLOX FIXME Luau: this type should be inferred
			test: Global_ItConcurrent
		): Global_ItConcurrentExtended
			local function concurrent_(testName: string, testFn: Global_ConcurrentTestFn, timeout: number?)
				-- For concurrent tests we first run the function that returns promise, and then register a
				-- normal test that will be waiting on the returned promise (when we start the test, the promise
				-- will already be in the process of execution).
				-- Unfortunately at this stage there's no way to know if there are any `.only` tests in the suite
				-- that will result in this test to be skipped, so we'll be executing the promise function anyway,
				-- even if it ends up being skipped.
				local promise = mutex(function()
					return testFn()
				end)
				-- Avoid triggering the uncaught promise rejection handler in case the test errors before
				-- being awaited on.
				promise:catch(function() end);
				-- ROBLOX FIXME Luau: analyze shouldn't need this cast to Global_ItBase
				(globalsObject.test :: Global_ItBase)(testName, function()
					return promise
				end, timeout)
			end
			local concurrent = setmetatable({}, {
				__call = function(_self, testName: string, testFn: Global_ConcurrentTestFn, timeout: number?): ()
					concurrent_(testName, testFn, timeout)
				end,
			}) :: Global_ItConcurrentExtended

			local function only_(testName: string, testFn: Global_ConcurrentTestFn, timeout: number?)
				local promise = mutex(function()
					return testFn()
				end)
				-- eslint-disable-next-line jest/no-focused-tests
				test.only(testName, function()
					return promise
				end, timeout)
			end
			local only = setmetatable({}, {
				__call = function(_self, testName: string, testFn: Global_ConcurrentTestFn, timeout: number?)
					return only_(testName, testFn, timeout)
				end,
			}) :: Global_ItConcurrentBase

			concurrent.only = only
			concurrent.skip = test.skip

			concurrent.each = bind(test, false)
			concurrent.skip.each = bind(test.skip, false)
			only.each = bind(test.only, false)

			return concurrent
		end)(globalsObject.test)

		addEventHandler(eventHandler)

		if environment.handleTestEvent ~= nil then
			local handleTestEvent = environment.handleTestEvent
			addEventHandler(function(...: any)
				return handleTestEvent(environment, ...)
			end)
		end

		local runtimeGlobals: JestGlobals = Object.assign({}, globalsObject, { expect = createExpect(globalConfig) })
		runtimeGlobals.expectExtended = runtimeGlobals.expect
		setGlobalsForRuntime(runtimeGlobals)

		if config.injectGlobals then
			Object.assign(environment.global, runtimeGlobals)
		end

		dispatch({
			name = "setup",
			parentProcess = parentProcess,
			runtimeGlobals = runtimeGlobals,
			testNamePattern = globalConfig.testNamePattern,
		}):expect()

		if config.testLocationInResults then
			dispatch({ name = "include_test_location_in_result" }):expect()
		end

		-- Jest tests snapshotSerializers in order preceding built-in serializers.
		-- Therefore, add in reverse because the last added is the first tested.
		Array.forEach(Array.reverse(Array.concat(config.snapshotSerializers)), function(path)
			return addSerializer(localRequire(path))
		end)

		local expand, updateSnapshot = globalConfig.expand, globalConfig.updateSnapshot
		local snapshotResolver = buildSnapshotResolver(config, localRequire):expect()
		local snapshotPath = snapshotResolver:resolveSnapshotPath(testPath)

		local snapshotState = SnapshotState.new(
			snapshotPath,
			--[[
				ROBLOX FIXME Luau: getting analyze error that doesn't actually makes sense. Seems it might be related to type unification issues somehow.
				Type '{ expand: boolean?, snapshotFormat: PrettyFormatOptions, updateSnapshot: string }' could not be converted into 'SnapshotStateOptions'

				and the SnapshotStateOptions is defined as follows:
				type ConfigSnapshotUpdateState = string
				type SnapshotStateOptions = {
					updateSnapshot: ConfigSnapshotUpdateState,
					-- ROBLOX deviation: the function return is defined as any instead of null | Prettier
					-- prettierPath: ConfigPath;
					expand: boolean?,
					snapshotFormat: PrettyFormatOptions,
				}
			]]
			{
				expand = expand,
				-- ROBLOX deviation START: not supported
				-- prettierPath = config.prettierPath,
				-- ROBLOX deviation END
				snapshotFormat = config.snapshotFormat,
				updateSnapshot = updateSnapshot,
			} :: any
		)
		-- @ts-expect-error: snapshotState is a jest extension of `expect`
		setState({ snapshotState = snapshotState, testPath = testPath })

		addEventHandler(handleSnapshotStateAfterRetry(snapshotState))
		if sendMessageToJest ~= nil then
			addEventHandler(testCaseReportHandler(getRelativePath(testPath), sendMessageToJest))
		end

		-- Return it back to the outer scope (test runner outside the VM).
		return { globals = globalsObject, snapshotState = snapshotState }
	end)
end
exports.initialize = initialize

local function runAndTransformResultsToJestFormat(ref: {
	config: Config_ProjectConfig,
	globalConfig: Config_GlobalConfig,
	testPath: string,
}): Promise<TestResult>
	local config, globalConfig, testPath = ref.config, ref.globalConfig, ref.testPath

	return Promise.resolve():andThen(function()
		local runResult: Circus_RunResult = Promise.resolve(run()):expect()

		local numFailingTests = 0
		local numPassingTests = 0
		local numPendingTests = 0
		local numTodoTests = 0

		local assertionResults: Array<AssertionResult> = Array.map(runResult.testResults, function(testResult)
			local status: Status
			if testResult.status == "skip" then
				status = "pending"
				numPendingTests += 1
			elseif testResult.status == "todo" then
				status = "todo"
				numTodoTests += 1
			elseif #testResult.errors ~= 0 then
				status = "failed"
				numFailingTests += 1
			else
				status = "passed"
				numPassingTests += 1
			end

			local ancestorTitles = Array.filter(testResult.testPath, function(name)
				return name ~= ROOT_DESCRIBE_BLOCK_NAME
			end)
			local title = table.remove(ancestorTitles)

			return {
				ancestorTitles = ancestorTitles,
				duration = testResult.duration,
				failureDetails = testResult.errorsDetailed,
				failureMessages = testResult.errors,
				fullName = if Boolean.toJSBoolean(title)
					then Array.join(Array.concat(ancestorTitles, title), " ")
					else Array.join(ancestorTitles, " "),
				invocations = testResult.invocations,
				location = testResult.location,
				numPassingAsserts = 0,
				retryReasons = testResult.retryReasons,
				status = status,
				title = testResult.testPath[#testResult.testPath],
			}
		end)

		local failureMessage = formatResultsErrors(
			assertionResults,
			config,
			-- ROBLOX FIXME Luau: Config_GlobalConfig contains noStackTrace and noCodeFrame is optional in StackTraceOptions so it should be fine
			(globalConfig :: any) :: { noStackTrace: boolean, noCodeFrame: boolean? },
			testPath
		)
		local testExecError

		if #runResult.unhandledErrors ~= 0 then
			testExecError = {
				message = "",
				stack = Array.join(runResult.unhandledErrors, "\n"),
			}
			failureMessage = (Boolean.toJSBoolean(failureMessage) and failureMessage or "")
				.. "\n\n"
				.. Array.join(
					Array.map(runResult.unhandledErrors, function(err)
						return formatExecError(
							err,
							config,
							-- ROBLOX FIXME Luau: Config_GlobalConfig contains noStackTrace and noCodeFrame is optional in StackTraceOptions so it should be fine
							(globalConfig :: any) :: { noStackTrace: boolean, noCodeFrame: boolean? }
						)
					end),
					"\n"
				)
		end

		dispatch({ name = "teardown" }):expect()

		return Object.assign({}, createEmptyTestResult(), {
			console = Object.None,
			displayName = config.displayName,
			failureMessage = failureMessage,
			numFailingTests = numFailingTests,
			numPassingTests = numPassingTests,
			numPendingTests = numPendingTests,
			numTodoTests = numTodoTests,
			testExecError = testExecError,
			testFilePath = testPath,
			testResults = assertionResults,
		})
	end)
end
exports.runAndTransformResultsToJestFormat = runAndTransformResultsToJestFormat

function handleSnapshotStateAfterRetry(snapshotState: SnapshotStateType)
	return function(_self, event: Circus_Event)
		if event.name == "test_retry" then
			-- Clear any snapshot data that occurred in previous test run
			snapshotState:clear()
		end
	end
end

function eventHandler(_self, event: Circus_Event)
	return Promise.resolve():andThen(function()
		repeat
			if event.name == "test_start" then
				setState({ currentTestName = getTestID(event.test) })
				break
			elseif event.name == "test_done" then
				_addSuppressedErrors(event.test)
				_addExpectedAssertionErrors(event.test)
				break
			end
		until true
	end)
end

function _addExpectedAssertionErrors(test: Circus_TestEntry)
	local failures = extractExpectedAssertionsErrors()
	local errors = Array.map(failures, function(failure)
		return failure.error
	end)
	test.errors = Array.concat(test.errors, errors)
end

-- Get suppressed errors from ``jest-matchers`` that weren't throw during
-- test execution and add them to the test result, potentially failing
-- a passing test.
function _addSuppressedErrors(test: Circus_TestEntry)
	local suppressedErrors = getState().suppressedErrors
	setState({ suppressedErrors = {} })
	if #suppressedErrors ~= 0 then
		test.errors = Array.concat(test.errors, suppressedErrors)
	end
end

return exports
