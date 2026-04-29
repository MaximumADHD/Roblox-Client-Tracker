-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-core/src/TestScheduler.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Error = LuauPolyfill.Error
local Object = LuauPolyfill.Object
local Set = LuauPolyfill.Set
local WeakMap = LuauPolyfill.WeakMap
type Array<T> = LuauPolyfill.Array<T>
type Promise<T> = LuauPolyfill.Promise<T>
type Set<T> = LuauPolyfill.Set<T>
local Promise = require(Packages.Promise)
type Function = (...any) -> ...any
type Record<K, T> = { [K]: T }

local exports = {}

--[[ eslint-disable local/ban-types-eventually ]]
local chalk = require(Packages.ChalkLua)
local exit = require(Packages.RobloxShared).nodeUtils.exit
local reportersModule = require(Packages.JestReporters)
-- ROBLOX deviation START: not needed
-- local CoverageReporter = reportersModule.CoverageReporter
-- ROBLOX deviation END
local DefaultReporter = reportersModule.DefaultReporter
type JestReporter = reportersModule.BaseReporter
type Reporter = reportersModule.Reporter
type ReporterContext = reportersModule.ReporterContext
local GitHubActionsReporter = reportersModule.GitHubActionsReporter
local SummaryReporter = reportersModule.SummaryReporter
local VerboseReporter = reportersModule.VerboseReporter
local test_resultModule = require(Packages.JestTestResult)
type AggregatedResult = test_resultModule.AggregatedResult
type SerializableError = test_resultModule.SerializableError
type Test = test_resultModule.Test
type TestContext = test_resultModule.TestContext
type TestResult = test_resultModule.TestResult
local addResult = test_resultModule.addResult
local buildFailureTestResult = test_resultModule.buildFailureTestResult
local makeEmptyAggregatedTestResult = test_resultModule.makeEmptyAggregatedTestResult
-- ROBLOX deviation START: not needed
-- local createScriptTransformer = require(Packages["@jest"].transform).createScriptTransformer
-- ROBLOX deviation END
local typesModule = require(Packages.JestTypes)
type Config_GlobalConfig = typesModule.Config_GlobalConfig
type Config_Path = typesModule.Config_Path
type Config_ReporterConfig = typesModule.Config_ReporterConfig
local formatExecError = require(Packages.JestMessageUtil).formatExecError
local jest_runnerModule = require(Packages.JestRunner)
type TestRunner = jest_runnerModule.TestRunner
type TestRunnerContext = jest_runnerModule.TestRunnerContext
-- ROBLOX deviation START: snapshot not used yet
-- local snapshot = require(Packages.JestSnapshot)
-- ROBLOX deviation END
local ReporterDispatcherModule = require(script.Parent.ReporterDispatcher)
local ReporterDispatcher = ReporterDispatcherModule.default
type ReporterDispatcher = ReporterDispatcherModule.ReporterDispatcher
local TestWatcherModule = require(script.Parent.TestWatcher)
type TestWatcher = TestWatcherModule.TestWatcher
local shouldRunInBand = require(script.Parent.testSchedulerHelper).shouldRunInBand

-- ROBLOX deviation START: add additional imports and types
local types = require(script.Parent.types)
type ReporterConstructor = types.ReporterConstructor
-- ROBLOX deviation END

-- ROBLOX deviation START: predefine variables
local TestScheduler: TestSchedulerPrivate & TestScheduler_statics
local invariant
local createAggregatedResults
local getEstimatedTime
-- ROBLOX deviation END

export type TestSchedulerOptions = { startRun: (globalConfig: Config_GlobalConfig) -> () }
export type TestSchedulerContext = ReporterContext | TestRunnerContext

local function createTestScheduler(
	globalConfig: Config_GlobalConfig,
	context: TestSchedulerContext
): Promise<TestScheduler>
	return Promise.resolve():andThen(function()
		local scheduler = TestScheduler.new(globalConfig, context)
		scheduler:_setupReporters():expect()
		return scheduler
	end)
end
exports.createTestScheduler = createTestScheduler

type TestScheduler = {
	addReporter: (self: TestScheduler, reporter: Reporter) -> (),
	removeReporter: (self: TestScheduler, reporterConstructor: ReporterConstructor) -> (),
	scheduleTests: (self: TestScheduler, tests: Array<Test>, watcher: TestWatcher) -> Promise<AggregatedResult>,
	_setupReporters: (self: TestScheduler) -> Promise<nil>,
}

type TestSchedulerPrivate = {
	addReporter: (self: TestSchedulerPrivate, reporter: Reporter) -> (),
	removeReporter: (self: TestSchedulerPrivate, reporterConstructor: ReporterConstructor) -> (),
	scheduleTests: (
		self: TestSchedulerPrivate,
		tests: Array<Test>,
		watcher: TestWatcher
	) -> Promise<AggregatedResult>,
	_setupReporters: (self: TestSchedulerPrivate) -> Promise<nil>,

	_context: TestSchedulerContext,
	_dispatcher: ReporterDispatcher,
	_globalConfig: Config_GlobalConfig,
	_partitionTests: (
		self: TestSchedulerPrivate,
		testRunners: Record<string, TestRunner>,
		tests: Array<Test>
	) -> Record<string, Array<Test>> | nil,
	_addCustomReporter: (self: TestSchedulerPrivate, reporter: ModuleScript, options: Record<string, any>) -> any,
	_bailIfNeeded: (
		self: TestSchedulerPrivate,
		testContexts: Set<TestContext>,
		aggregatedResults: AggregatedResult,
		watcher: TestWatcher
	) -> Promise<nil>,
}

type TestScheduler_statics = {
	new: (globalConfig: Config_GlobalConfig, context: TestSchedulerContext) -> TestScheduler,
}

TestScheduler = {} :: TestSchedulerPrivate & TestScheduler_statics;
(TestScheduler :: any).__index = TestScheduler

function TestScheduler.new(globalConfig: Config_GlobalConfig, context: TestSchedulerContext): TestScheduler
	local self = setmetatable({}, TestScheduler)
	self._context = context
	self._dispatcher = ReporterDispatcher.new()
	self._globalConfig = globalConfig
	return (self :: any) :: TestScheduler
end

function TestScheduler:addReporter(reporter: Reporter): ()
	self._dispatcher:register(reporter)
end

function TestScheduler:removeReporter(reporterConstructor: ReporterConstructor): ()
	self._dispatcher:unregister(reporterConstructor)
end

function TestScheduler:scheduleTests(tests: Array<Test>, watcher: TestWatcher): Promise<AggregatedResult>
	return Promise.resolve():andThen(function()
		-- ROBLOX deviation START: predeclare functions
		local onResult
		local onFailure
		local updateSnapshotState
		-- ROBLOX deviation END

		local onTestFileStart = function(...)
			return self._dispatcher:onTestFileStart(...)
		end
		local timings: Array<number> = {}
		local testContexts = Set.new()
		Array.forEach(tests, function(test)
			testContexts:add(test.context)
			-- ROBLOX deviation START: can't compare nil to number
			local duration = test.duration or 0
			if duration > 0 then
				table.insert(timings, duration)
			end
			-- ROBLOX deviation END
		end)

		local aggregatedResults = createAggregatedResults(#tests)
		local estimatedTime = math.ceil(getEstimatedTime(timings, self._globalConfig.maxWorkers) / 1000)

		local runInBand = shouldRunInBand(tests, timings, self._globalConfig)

		function onResult(test: Test, testResult: TestResult): Promise<nil>
			return Promise.resolve():andThen(function()
				if watcher:isInterrupted() then
					return Promise.resolve()
				end

				if #testResult.testResults == 0 then
					local message = "Your test suite must contain at least one test."
					return onFailure(test, { message = message, stack = Error.new(message).stack })
				end -- Throws when the context is leaked after executing a test.
				if Boolean.toJSBoolean(testResult.leaks) then
					local message = ("%sYour test suite is leaking memory. Please ensure all references are cleaned.\n"):format(
						tostring(chalk.red:bold("EXPERIMENTAL FEATURE!\n"))
					) .. "\n" .. "There is a number of things that can leak memory:\n" .. "  - Async operations that have not finished (e.g. fs.readFile).\n" .. "  - Timers not properly mocked (e.g. setInterval, setTimeout).\n" .. "  - Keeping references to the global scope."
					return onFailure(test, { message = message, stack = Error.new(message).stack })
				end

				addResult(aggregatedResults, testResult)
				self._dispatcher:onTestFileResult(test, testResult, aggregatedResults):expect()
				return self:_bailIfNeeded(testContexts, aggregatedResults, watcher)
			end)
		end

		function onFailure(test: Test, error_: SerializableError): Promise<nil>
			return Promise.resolve():andThen(function()
				if watcher:isInterrupted() then
					return
				end
				local testResult = buildFailureTestResult(test.path, error_)
				testResult.failureMessage = formatExecError(
					testResult.testExecError,
					test.context.config,
					-- ROBLOX FIXME Luau: Config_GlobalConfig contains noStackTrace and noCodeFrame is optional in StackTraceOptions so it should be fine
					(self._globalConfig :: any) :: { noStackTrace: boolean, noCodeFrame: boolean? },
					test.path
				)
				addResult(aggregatedResults, testResult)
				self._dispatcher:onTestFileResult(test, testResult, aggregatedResults):expect()
			end)
		end

		function updateSnapshotState()
			return Promise.resolve():andThen(function()
				local contextsWithSnapshotResolvers = Promise.all(Array.map(Array.from(testContexts), function(context)
					return Promise.resolve():andThen(function()
						return {
							context,
							-- ROBLOX deviation START: no snapshot resolver implemented yet
							-- snapshot:buildSnapshotResolver(context.config):expect(),
							-- ROBLOX deviation END
						}
					end)
				end)):expect()

				Array.forEach(contextsWithSnapshotResolvers, function(_ref)
					-- ROBLOX deviation START: no snapshot resolver implemented yet
					-- local context, snapshotResolver = table.unpack(ref, 1, 2)
					local status = {
						filesRemoved = 0,
						filesRemovedList = {},
					}
					-- snapshot:cleanup(
					-- 	context.hasteFS,
					-- 	self._globalConfig.updateSnapshot,
					-- 	snapshotResolver,
					-- 	context.config.testPathIgnorePatterns
					-- )
					-- ROBLOX deviation END

					aggregatedResults.snapshot.filesRemoved += status.filesRemoved
					aggregatedResults.snapshot.filesRemovedList = Array.concat(
						if aggregatedResults.snapshot.filesRemovedList ~= nil
							then aggregatedResults.snapshot.filesRemovedList
							else {},
						status.filesRemovedList
					)
				end)
				local updateAll = self._globalConfig.updateSnapshot == "all"
				aggregatedResults.snapshot.didUpdate = updateAll
				aggregatedResults.snapshot.failure = not updateAll
					and (
						aggregatedResults.snapshot.unchecked > 0
						or aggregatedResults.snapshot.unmatched > 0
						or aggregatedResults.snapshot.filesRemoved > 0
					)
			end)
		end

		self._dispatcher
			:onRunStart(
				aggregatedResults,
				{ estimatedTime = estimatedTime, showStatus = not Boolean.toJSBoolean(runInBand) }
			)
			:expect()

		local testRunners: { [string]: TestRunner } = {}
		local contextsByTestRunner = WeakMap.new()
		Promise.all(Array.map(Array.from(testContexts), function(context)
			return Promise.resolve():andThen(function()
				local config = context.config
				if not Boolean.toJSBoolean(testRunners[config.runner]) then
					-- ROBLOX deviation START: use regular require to load TestRunner
					-- local transformer = createScriptTransformer(config):expect()
					-- local Runner: TestRunner = transformer:requireAndTranspileModule(config.runner):expect()
					local Runner: TestRunner = require(Packages.JestRunner).default
					-- ROBLOX deviation END
					local runner = Runner.new(self._globalConfig, {
						changedFiles = self._context.changedFiles,
						sourcesRelatedToTestsInChangedFiles = self._context.sourcesRelatedToTestsInChangedFiles,
					})
					testRunners[config.runner] = runner
					contextsByTestRunner:set(runner, context)
				end
			end)
		end)):expect()

		local testsByRunner = self:_partitionTests(testRunners, tests)

		if testsByRunner ~= nil then
			local ok, result = pcall(function()
				for _, runner in Object.keys(testRunners) do
					local testRunner = testRunners[runner]
					local context = contextsByTestRunner:get(testRunner)

					invariant(context)

					local tests = testsByRunner[runner]

					local testRunnerOptions = {
						serial = runInBand or Boolean.toJSBoolean(testRunner.isSerial),
					}

					--[[*
					 * Test runners with event emitters are still not supported
					 * for third party test runners.
					]]
					if testRunner.__PRIVATE_UNSTABLE_API_supportsEventEmitters__ then
						local unsubscribes = {
							testRunner:on("test-file-start", function(ref)
								local test = ref[1]
								return onTestFileStart(test)
							end),
							testRunner:on("test-file-success", function(ref)
								local test, testResult = table.unpack(ref, 1, 2)
								return onResult(test, testResult)
							end),
							testRunner:on("test-file-failure", function(ref)
								local test, error_ = table.unpack(ref, 1, 2)
								return onFailure(test, error_)
							end),
							testRunner:on("test-case-result", function(ref)
								local testPath, testCaseResult = table.unpack(ref, 1, 2)
								local test: Test = {
									context = context,
									path = testPath,
									script = nil :: any, -- TODO: remove when we clean up Test type
								}
								self._dispatcher:onTestCaseResult(test, testCaseResult)
							end),
						}

						testRunner
							:runTests(
								-- ROBLOX FIXME Luau: Type 'Array<Test>' from 'JestRoblox/_Workspace/JestCore/JestCore/TestScheduler' could not be converted into 'Array<Test>' from 'JestRoblox/_Workspace/JestRunner/JestRunner'
								tests :: Array<any>,
								watcher,
								nil,
								nil,
								nil,
								testRunnerOptions
							)
							:expect()

						Array.forEach(unsubscribes, function(sub)
							return sub()
						end)
					else
						testRunner
							:runTests(
								-- ROBLOX FIXME Luau: Type 'Array<Test>' from 'JestRoblox/_Workspace/JestCore/JestCore/TestScheduler' could not be converted into 'Array<Test>' from 'JestRoblox/_Workspace/JestRunner/JestRunner'
								tests :: Array<any>,
								watcher,
								onTestFileStart,
								-- ROBLOX FIXME Luau: Type '(Test, TestResult) -> Promise<nil>' could not be converted into '((Test, TestResult) -> Promise<nil>)?'
								onResult :: Function,
								-- ROBLOX FIXME Luau: Type '(Test, SerializableError) -> Promise<nil>' could not be converted into '((Test, SerializableError) -> Promise<nil>)?'
								onFailure :: Function,
								testRunnerOptions
							)
							:expect()
					end
					-- ROBLOX deviation START: add cache of loaded module functions to a test runner
					-- test runner should call clean up functions when it is done
					testRunner:cleanup()
					-- ROBLOX deviation END
				end
			end)

			if not ok then
				local error_ = result
				if not watcher:isInterrupted() then
					error(error_)
				end
			end
		end

		updateSnapshotState():expect()
		aggregatedResults.wasInterrupted = watcher:isInterrupted()
		self._dispatcher:onRunComplete(testContexts, aggregatedResults):expect()

		local anyTestFailures = not (
			aggregatedResults.numFailedTests == 0 and aggregatedResults.numRuntimeErrorTestSuites == 0
		)
		local anyReporterErrors = self._dispatcher:hasErrors()

		aggregatedResults.success = not (anyTestFailures or aggregatedResults.snapshot.failure or anyReporterErrors)

		return aggregatedResults
	end)
end

function TestScheduler:_partitionTests(
	testRunners: Record<string, TestRunner>,
	tests: Array<Test>
): Record<string, Array<Test>> | nil
	if #Object.keys(testRunners) > 1 then
		return Array.reduce(tests, function(testRuns, test)
			local runner = test.context.config.runner
			if not Boolean.toJSBoolean(testRuns[runner]) then
				testRuns[runner] = {}
			end
			table.insert(testRuns[runner], test)
			return testRuns
		end, {})
	elseif #tests > 0 and tests[1] ~= nil then
		-- If there is only one runner, don't partition the tests.
		return Object.assign({}, {
			[tests[1].context.config.runner] = tests,
		})
	else
		return nil
	end
end

function TestScheduler:_setupReporters()
	return Promise.resolve():andThen(function()
		local ref = self._globalConfig
		local coverage, notify, verbose = false, false, ref.verbose
		local reporters
		-- ROBLOX deviation: ReporterConfig is a named table since we can't type tuples
		if ref.reporters ~= nil then
			reporters = ref.reporters
		else
			reporters = { { reporter = "default", options = {} } }
		end
		local summary = false
		for _, val in reporters do
			local reporter = val
			local options = {}
			if typeof(val) == "table" then
				reporter = val.reporter
				options = val.options
			end

			if typeof(reporter) == "string" then
				if reporter == "default" then
					summary = true
					self:addReporter(
						if verbose
							then VerboseReporter.new(self._globalConfig)
							else DefaultReporter.new(self._globalConfig)
					)
				elseif reporter == "github-actions" then
					self:addReporter(GitHubActionsReporter.new(self._globalConfig))
				elseif reporter == "summary" then
					summary = true
				end
			elseif typeof(reporter) == "Instance" and reporter:IsA("ModuleScript") then
				self:_addCustomReporter(reporter, options):expect()
			end
		end

		if summary then
			self:addReporter(SummaryReporter.new(self._globalConfig))
		end
	end)
end

function TestScheduler:_addCustomReporter(reporter: ModuleScript, options: Record<string, any>)
	return Promise.resolve():andThen(function()
		local ok, result, hasReturned = xpcall(function()
			local reporterConstructor: ReporterConstructor = require(reporter) :: any
			self:addReporter(reporterConstructor.new(self._globalConfig, options, self._context :: ReporterContext))
		end, function(error_)
			error_.message = ('An error occurred while adding the reporter at path "%s".\n%s'):format(
				chalk.bold(reporter),
				error_.message
			)
			error(error_)
		end)
	end)
end

function TestScheduler:_bailIfNeeded(
	testContexts: Set<TestContext>,
	aggregatedResults: AggregatedResult,
	watcher: TestWatcher
): Promise<nil>
	return Promise.resolve():andThen(function()
		if self._globalConfig.bail ~= 0 and aggregatedResults.numFailedTests >= self._globalConfig.bail then
			if watcher:isWatchMode() then
				watcher:setState({ interrupted = true }):expect()
				return
			end

			local ok, result = pcall(function()
				self._dispatcher:onRunComplete(testContexts, aggregatedResults):expect()
			end)
			local exitCode = self._globalConfig.testFailureExitCode
			exit(exitCode)
			if not ok then
				error(result)
			end
		end
	end)
end

function invariant(
	condition: unknown,
	message: string?
): () --[[ ROBLOX FIXME: change to TSTypePredicate equivalent if supported ]] --[[ asserts condition ]]
	if not Boolean.toJSBoolean(condition) then
		error(Error.new(message))
	end
end

function createAggregatedResults(numTotalTestSuites: number)
	local result = makeEmptyAggregatedTestResult()
	result.numTotalTestSuites = numTotalTestSuites
	result.startTime = DateTime.now().UnixTimestampMillis
	result.success = false
	return result
end

function getEstimatedTime(timings: Array<number>, workers: number): number
	if #timings == 0 then
		return 0
	end
	local max = math.max(table.unpack(timings))
	return if #timings <= workers
		then max
		else math.max(Array.reduce(timings, function(
			-- ROBLOX FIXME Luau: should be inferred from reduce's initial value
			sum: number,
			time_
		)
			return sum + time_
		end) / workers, max)
end

return exports
