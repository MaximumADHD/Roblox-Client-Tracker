-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-runner/src/index.ts

--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local Packages = script.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Error = LuauPolyfill.Error
local Map = LuauPolyfill.Map
local console = LuauPolyfill.console
type Array<T> = LuauPolyfill.Array<T>
type Error = LuauPolyfill.Error
type Map<T, U> = LuauPolyfill.Map<T, U>
type Promise<T> = LuauPolyfill.Promise<T>

local Promise = require(Packages.Promise)

-- ROBLOX deviation START: additional function to construct file path from ModuleScript
local getDataModelService = require(Packages.RobloxShared).getDataModelService
local CoreScriptSyncService = getDataModelService("CoreScriptSyncService")
-- ROBLOX deviation END

local exports = {}

-- ROBLOX deviation: chalk used only in parallel tests
-- local chalk = require(Packages.ChalkLua)
local emitteryModule = require(Packages.Emittery)
local Emittery = emitteryModule.default
type Emittery = emitteryModule.Emittery
type Emittery_UnsubscribeFn = emitteryModule.Emittery_UnsubscribeFn

-- ROBLOX deviation: exit used only in parallel tests
-- local exit = require(Packages.exit)
local throatModule = require(Packages.Throat)
local throat = throatModule.default
type ThroatLateBound<TResult, TArgs> = throatModule.ThroatLateBound<TResult, TArgs>
local test_resultModule = require(Packages.JestTestResult)
type SerializableError = test_resultModule.SerializableError
type Context = test_resultModule.Context
export type Test = test_resultModule.Test
export type TestEvents = test_resultModule.TestEvents
export type TestFileEvent = test_resultModule.TestFileEvent
type TestResult = test_resultModule.TestResult
local jestTypesModule = require(Packages.JestTypes)
type Config_GlobalConfig = jestTypesModule.Config_GlobalConfig
local deepCyclicCopy = require(Packages.JestUtil).deepCyclicCopy
-- ROBLOX deviation START: Worker not used yet
-- local jest_workerModule = require(Packages.JestWorker)
-- local PromiseWithCustomMessage = jest_workerModule.PromiseWithCustomMessage
-- local Worker = jest_workerModule.Worker
-- ROBLOX deviation END
local runTest = require(script.runTest).default
-- ROBLOX deviation START: Worker not used yet
-- local testWorkerModule = require(script.testWorker)
-- type SerializableResolver = testWorkerModule.SerializableResolver
-- type worker = testWorkerModule.worker
-- ROBLOX deviation END

-- ROBLOX deviation START: types are exported above
-- -- TODO: remove re-export in Jest 28
-- exports.Test = test_resultModule.Test
-- exports.TestFileEvent = test_resultModule.TestFileEvent
-- exports.TestEvents = test_resultModule.TestEvents
-- ROBLOX deviation END

-- ROBLOX deviation START: Worker not used yet
-- local TEST_WORKER_PATH = require_:resolve("./testWorker")

-- type WorkerInterface = Worker & { worker: typeof(worker) }
-- ROBLOX deviation END

local typesModule = require(script.types)
export type OnTestFailure = typesModule.OnTestFailure
export type OnTestStart = typesModule.OnTestStart
export type OnTestSuccess = typesModule.OnTestSuccess
export type TestWatcher = typesModule.TestWatcher
export type TestRunnerContext = typesModule.TestRunnerContext
export type TestRunnerOptions = typesModule.TestRunnerOptions

-- ROBLOX deviation START: predefine variables
local CancelRun
-- ROBLOX deviation END

export type TestRunner = {
	new: (globalConfig: Config_GlobalConfig, context: TestRunnerContext?) -> TestRunner,

	__PRIVATE_UNSTABLE_API_supportsEventEmitters__: boolean,
	isSerial: boolean,
	runTests: (
		self: TestRunner,
		tests: Array<Test>,
		watcher: TestWatcher,
		onStart: OnTestStart | nil,
		onResult: OnTestSuccess | nil,
		onFailure: OnTestFailure | nil,
		options: TestRunnerOptions
	) -> Promise<nil>,
	on: <Name>(
		self: TestRunner,
		eventName: Name,
		listener: (
			eventData: any
			--[[ ROBLOX TODO: Unhandled node for type: TSIndexedAccessType ]]
			--[[ TestEvents[Name] ]]
		) -> ...Promise<nil>
	) -> Emittery_UnsubscribeFn,

	-- ROBLOX NOTE: private
	_globalConfig: Config_GlobalConfig,
	_context: TestRunnerContext,
	-- ROBLOX deviation START: add cache of loaded module functions to a test runner
	_loadedModuleFns: Map<ModuleScript, { any }>,
	cleanup: (self: TestRunner) -> (),
	-- ROBLOX deviation END
	eventEmitter: Emittery,
	_createInBandTestRun: (
		self: TestRunner,
		tests: Array<Test>,
		watcher: TestWatcher,
		onStart: OnTestStart?,
		onResult: OnTestSuccess?,
		onFailure: OnTestFailure?
	) -> Promise<nil>,
	_createParallelTestRun: (
		self: TestRunner,
		tests: Array<Test>,
		watcher: TestWatcher,
		onStart: OnTestStart?,
		onResult: OnTestSuccess?,
		onFailure: OnTestFailure?
	) -> Promise<nil>,
}

local TestRunner = {} :: TestRunner;
(TestRunner :: any).__index = TestRunner

function TestRunner.new(globalConfig: Config_GlobalConfig, context: TestRunnerContext?): TestRunner
	local self = setmetatable({}, TestRunner)
	self.eventEmitter = Emittery.new()
	self.__PRIVATE_UNSTABLE_API_supportsEventEmitters__ = true
	self._globalConfig = globalConfig
	self._context = Boolean.toJSBoolean(context) and context or {}
	-- ROBLOX deviation START: add cache of loaded module functions to a test runner
	self._loadedModuleFns = Map.new()
	-- ROBLOX deviation END
	return (self :: any) :: TestRunner
end

function TestRunner:runTests(
	tests: Array<Test>,
	watcher: TestWatcher,
	onStart: OnTestStart | nil,
	onResult: OnTestSuccess | nil,
	onFailure: OnTestFailure | nil,
	options: TestRunnerOptions
): Promise<nil>
	return Promise.resolve():andThen(function()
		return (
			if Boolean.toJSBoolean(options.serial)
				then self:_createInBandTestRun(tests, watcher, onStart, onResult, onFailure):expect()
				else self:_createParallelTestRun(tests, watcher, onStart, onResult, onFailure):expect()
		)
	end)
end
function TestRunner:_createInBandTestRun(
	tests: Array<Test>,
	watcher: TestWatcher,
	onStart: OnTestStart?,
	onResult: OnTestSuccess?,
	onFailure: OnTestFailure?
)
	return Promise.resolve():andThen(function()
		-- ROBLOX deviation: no process available in Luau
		-- process.env.JEST_WORKER_ID = "1"
		local mutex = throat(1) :: ThroatLateBound<nil, nil>
		return Array.reduce(tests, function(promise: Promise<nil>, test: Test)
			if CoreScriptSyncService then
				test.path = CoreScriptSyncService:GetScriptFilePath(test.script)
			end
			return mutex(function()
				-- ROBLOX FIXME START: Promise type doesn't support changing return type with :andThen call
				return (promise :: Promise<any>)
					:andThen(function(): Promise<TestResult>
						return Promise.resolve():andThen(function()
							if watcher:isInterrupted() then
								error(CancelRun.new())
							end
							local sendMessageToJest

							-- Remove `if(onStart)` in Jest 27: TestFileEvent
							if onStart ~= nil then
								onStart(test):expect()
								return runTest(
									-- ROBLOX deviation: using `script` instead of `path`
									test.script,
									self._globalConfig,
									test.context.config,
									-- ROBLOX deviation START: resolver no supported
									nil,
									-- test.context.resolver,
									-- ROBLOX deviation END
									self._context,
									nil,
									-- ROBLOX deviation START: add cache of loaded module functions to a test runner
									self._loadedModuleFns
									-- ROBLOX deviation END
								)
							else
								-- `deepCyclicCopy` used here to avoid mem-leak
								sendMessageToJest = function(eventName: string, args)
									return self.eventEmitter:emit(
										eventName,
										deepCyclicCopy(args, { keepPrototype = false })
									)
								end
								self.eventEmitter:emit("test-file-start", { test }):expect()
								return runTest(
									-- ROBLOX deviation: using `script` instead of `path`
									test.script,
									self._globalConfig,
									test.context.config,
									-- ROBLOX deviation START: resolver no supported
									nil,
									-- test.context.resolver,
									-- ROBLOX deviation END
									self._context,
									sendMessageToJest,
									-- ROBLOX deviation START: add cache of loaded module functions to a test runner
									self._loadedModuleFns
									-- ROBLOX deviation END
								)
							end
						end)
					end)
					:andThen(function(result: TestResult)
						if onResult ~= nil then
							return onResult(test, result)
						else
							return self.eventEmitter:emit("test-file-success", { test :: any, result })
						end
					end)
					:catch(function(err)
						if onFailure ~= nil then
							return onFailure(test, err)
						else
							return self.eventEmitter:emit("test-file-failure", { test :: any, err })
						end
					end) :: Promise<nil>
				-- ROBLOX FIXME END
			end)
		end, Promise.resolve())
	end)
end

function TestRunner:_createParallelTestRun(
	tests: Array<Test>,
	watcher: TestWatcher,
	onStart: OnTestStart?,
	onResult: OnTestSuccess?,
	onFailure: OnTestFailure?
)
	return Promise.resolve():andThen(function()
		-- ROBLOX deviation START: parallel test run not implemented yet
		console.warn("Parallel tests run not implemented yet\nRunning tests in band instead")
		return self:_createInBandTestRun(tests, watcher, onStart, onResult, onFailure)
		-- local resolvers: Map<string, SerializableResolver> = Map.new()
		-- for _, test in tests do
		-- 	if not resolvers:has(test.context.config.name) then
		-- 		resolvers:set(test.context.config.name, {
		-- 			config = test.context.config,
		-- 			serializableModuleMap = test.context.moduleMap:toJSON(),
		-- 		})
		-- 	end
		-- end

		-- local worker = Worker.new(TEST_WORKER_PATH, {
		-- 	exposedMethods = { "worker" },
		-- 	forkOptions = { stdio = "pipe" },
		-- 	maxRetries = 3,
		-- 	numWorkers = self._globalConfig.maxWorkers,
		-- 	setupArgs = { { serializableResolvers = Array.from(resolvers:values()) } },
		-- }) :: WorkerInterface

		-- if Boolean.toJSBoolean(worker:getStdout()) then
		-- 	worker:getStdout():pipe(process.stdout)
		-- end
		-- if Boolean.toJSBoolean(worker:getStderr()) then
		-- 	worker:getStderr():pipe(process.stderr)
		-- end

		-- local mutex = throat(self._globalConfig.maxWorkers)

		-- -- Send test suites to workers continuously instead of all at once to track
		-- -- the start time of individual tests.
		-- local function runTestInWorker(test: Test)
		-- 	return mutex(function()
		-- 		return Promise.resolve():andThen(function()
		-- 			if Boolean.toJSBoolean(watcher:isInterrupted()) then
		-- 				return Promise:reject()
		-- 			end

		-- 			-- Remove `if(onStart)` in Jest 27
		-- 			if Boolean.toJSBoolean(onStart) then
		-- 				onStart(test):expect()
		-- 			else
		-- 				self.eventEmitter:emit("test-file-start", { test }):expect()
		-- 			end

		-- 			local promise = worker:worker({
		-- 				config = test.context.config,
		-- 				context = Object.assign({}, self._context, {
		-- 					changedFiles = if Boolean.toJSBoolean(self._context.changedFiles)
		-- 						then Array.from(self._context.changedFiles)
		-- 						else self._context.changedFiles,
		-- 					sourcesRelatedToTestsInChangedFiles = if Boolean.toJSBoolean(
		-- 							self._context.sourcesRelatedToTestsInChangedFiles
		-- 						)
		-- 						then Array.from(self._context.sourcesRelatedToTestsInChangedFiles)
		-- 						else self._context.sourcesRelatedToTestsInChangedFiles,
		-- 				}),
		-- 				globalConfig = self._globalConfig,
		-- 				path = test.path,
		-- 			}) :: PromiseWithCustomMessage<TestResult>

		-- 			if Boolean.toJSBoolean(promise.UNSTABLE_onCustomMessage) then
		-- 				-- TODO: Get appropriate type for `onCustomMessage`
		-- 				promise:UNSTABLE_onCustomMessage(function(ref: any)
		-- 					local event, payload = table.unpack(ref, 1, 2)
		-- 					self.eventEmitter:emit(event, payload)
		-- 				end)
		-- 			end

		-- 			return promise
		-- 		end)
		-- 	end)
		-- end

		-- local function onError(err: SerializableError, test: Test)
		-- 	return Promise.resolve():andThen(function()
		-- 		-- Remove `if(onFailure)` in Jest 27
		-- 		if onFailure ~= nil then
		-- 			onFailure(test, err):expect()
		-- 		else
		-- 			self.eventEmitter:emit("test-file-failure", { test, err }):expect()
		-- 		end
		-- 		if err.type == "ProcessTerminatedError" then
		-- 			console.error(
		-- 				"A worker process has quit unexpectedly! " .. "Most likely this is an initialization error."
		-- 			)
		-- 			exit(1)
		-- 		end
		-- 	end)
		-- end

		-- local onInterrupt = Promise.new(function(_, reject)
		-- 	watcher:on("change", function(state)
		-- 		if state.interrupted then
		-- 			reject(CancelRun.new())
		-- 		end
		-- 	end)
		-- end)

		-- local runAllTests = Promise:all(Array.map(tests, function(test)
		-- 	return runTestInWorker(test)
		-- 		:andThen(function(result)
		-- 			if onResult ~= nil then
		-- 				return onResult(test, result)
		-- 			else
		-- 				return self.eventEmitter:emit("test-file-success", { test, result })
		-- 			end
		-- 		end)
		-- 		:catch(function(error_)
		-- 			return onError(error_, test)
		-- 		end)
		-- end))

		-- local function cleanup()
		-- 	return Promise.resolve():andThen(function()
		-- 		local forceExited = worker:end_():expect().forceExited
		-- 		if Boolean.toJSBoolean(forceExited) then
		-- 			console.error(
		-- 				chalk.yellow(
		-- 					"A worker process has failed to exit gracefully and has been force exited. "
		-- 						.. "This is likely caused by tests leaking due to improper teardown. "
		-- 						.. "Try running with --detectOpenHandles to find leaks. "
		-- 						.. "Active timers can also cause this, ensure that .unref() was called on them."
		-- 				)
		-- 			)
		-- 		end
		-- 	end)
		-- end
		-- return Promise.race({ runAllTests, onInterrupt }):andThen(cleanup, cleanup)
		-- ROBLOX deviation END
	end)
end

function TestRunner:on<Name>(
	eventName: Name,
	listener: (
		eventData: any
		--[[ ROBLOX TODO: Unhandled node for type: TSIndexedAccessType ]]
		--[[ TestEvents[Name] ]]
	) -> () | Promise<nil>
): Emittery_UnsubscribeFn
	return self.eventEmitter:on(eventName, listener)
end

-- ROBLOX deviation START: add cache of loaded module functions to a test runner
-- test runner should call clean up functions when it is done
function TestRunner:cleanup()
	self._loadedModuleFns:forEach(function(val)
		local cleanup = val[3]
		if cleanup ~= nil then
			cleanup()
		end
	end)
end
-- ROBLOX deviation END

exports.default = TestRunner

type CancelRun = Error & {}
CancelRun = setmetatable({}, { __index = Error })
CancelRun.__index = CancelRun
function CancelRun.new(message: string?): CancelRun
	local self = setmetatable(Error.new(message), CancelRun)
	self.name = "CancelRun"
	return (self :: any) :: CancelRun
end
return exports
