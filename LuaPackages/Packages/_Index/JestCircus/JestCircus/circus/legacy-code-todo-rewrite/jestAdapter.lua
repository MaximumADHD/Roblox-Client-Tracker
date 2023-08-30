-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-circus/src/legacy-code-todo-rewrite/jestAdapter.ts
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
type Promise<T> = LuauPolyfill.Promise<T>
local Promise = require(Packages.Promise)

local environmentModule = require(Packages.JestEnvironment)
type JestEnvironment = environmentModule.JestEnvironment
local test_resultModule = require(Packages.JestTestResult)
type TestFileEvent = test_resultModule.TestFileEvent
type TestResult = test_resultModule.TestResult
local typesModule = require(Packages.JestTypes)
type Config_GlobalConfig = typesModule.Config_GlobalConfig
type Config_ProjectConfig = typesModule.Config_ProjectConfig
local jest_runtimeModule = require(Packages.JestRuntime)
type Runtime = jest_runtimeModule.Runtime
-- ROBLOX TODO START: not implemented yet
-- local jest_snapshotModule = require(Packages.JestSnapshot)
type SnapshotStateType = any -- jest_snapshotModule.SnapshotStateType
-- ROBLOX TODO END
local deepCyclicCopy = require(Packages.JestUtil).deepCyclicCopy
local FRAMEWORK_INITIALIZER = script.Parent.jestAdapterInit

-- ROBLOX deviation START: predeclare variables
local _addSnapshotData
-- ROBLOX deviation END

local function jestAdapter(
	globalConfig: Config_GlobalConfig,
	config: Config_ProjectConfig,
	environment: JestEnvironment,
	runtime: Runtime,
	-- ROBLOX deviation: accept ModuleScript instead of string
	testPath: ModuleScript,
	sendMessageToJest: TestFileEvent?
): Promise<TestResult>
	return Promise.resolve():andThen(function()
		local ref = runtime:requireInternalModule(FRAMEWORK_INITIALIZER)
		local initialize, runAndTransformResultsToJestFormat = ref.initialize, ref.runAndTransformResultsToJestFormat

		local ref_ = initialize({
			config = config,
			environment = environment,
			globalConfig = globalConfig,
			localRequire = function(...)
				return runtime:requireModule(...)
			end,
			-- ROBLOX TODO: do we need this?
			-- parentProcess = process,
			sendMessageToJest = sendMessageToJest,
			setGlobalsForRuntime = function(...)
				runtime:setGlobalsForRuntime(...)
			end,
			testPath = testPath,
		}):expect()
		local globals, snapshotState = ref_.globals, ref_.snapshotState;

		-- ROBLOX deviation START: no modern/legacy timers
		(environment.fakeTimers :: any):useFakeTimers()
		-- if config.timers == "fake" or config.timers == "modern" then
		-- 	-- during setup, this cannot be null (and it's fine to explode if it is)
		-- 	(environment.fakeTimersModern :: any):useFakeTimers()
		-- elseif config.timers == "legacy" then
		-- 	(environment.fakeTimers :: any):useFakeTimers()
		-- end
		-- ROBLOX deviation END

		globals.beforeEach(function()
			if config.resetModules then
				runtime:resetModules()
			end
			if config.clearMocks then
				runtime:clearAllMocks()
			end
			if config.resetMocks then
				runtime:resetAllMocks()
				if
					Boolean.toJSBoolean(
						if Boolean.toJSBoolean(config.fakeTimers.enableGlobally)
							then config.fakeTimers.legacyFakeTimers
							else config.fakeTimers.enableGlobally
					)
				then
					-- during setup, this cannot be null (and it's fine to explode if it is)
					(environment.fakeTimers :: any):useFakeTimers()
				end
			end
			if config.restoreMocks then
				runtime:restoreAllMocks()
			end
		end)

		for _, path in config.setupFilesAfterEnv do
			-- ROBLOX deviation START: no esm modules in Lua
			runtime:requireModule(path, nil, nil, nil, true)
			-- local esm = runtime:unstable_shouldLoadAsEsm(path)
			-- if esm then
			-- 	runtime:unstable_importModule(path):expect()
			-- else
			-- 	runtime:requireModule(path)
			-- end
			-- ROBLOX deviation END
		end
		-- ROBLOX deviation START: no esm modules in Lua
		runtime:requireModule(testPath, nil, nil, nil, true)
		-- 	local esm = runtime:unstable_shouldLoadAsEsm(testPath)

		-- if esm then
		-- 	runtime:unstable_importModule(testPath):expect()
		-- else
		-- 	runtime:requireModule(testPath)
		-- end
		-- ROBLOX deviation END

		local results = runAndTransformResultsToJestFormat({
			config = config,
			globalConfig = globalConfig,
			testPath = testPath,
		}):expect()

		_addSnapshotData(results, snapshotState)

		-- We need to copy the results object to ensure we don't leaks the prototypes
		-- from the VM. Jasmine creates the result objects in the parent process, we
		-- should consider doing that for circus as well.
		return deepCyclicCopy(results, { keepPrototype = false })
	end)
end

function _addSnapshotData(results: TestResult, snapshotState: SnapshotStateType)
	Array.forEach(results.testResults, function(ref)
		local fullName, status = ref.fullName, ref.status
		if status == "pending" or status == "failed" then
			-- if test is skipped or failed, we don't want to mark
			-- its snapshots as obsolete.
			snapshotState:markSnapshotsAsCheckedForTest(fullName)
		end
	end)

	local uncheckedCount = snapshotState:getUncheckedCount()
	local uncheckedKeys = snapshotState:getUncheckedKeys()
	if Boolean.toJSBoolean(uncheckedCount) then
		snapshotState:removeUncheckedKeys()
	end

	local status = snapshotState:save()
	results.snapshot.fileDeleted = status.deleted
	results.snapshot.added = snapshotState.added
	results.snapshot.matched = snapshotState.matched
	results.snapshot.unmatched = snapshotState.unmatched
	results.snapshot.updated = snapshotState.updated
	results.snapshot.unchecked = if not status.deleted then uncheckedCount else 0
	-- Copy the array to prevent memory leaks
	results.snapshot.uncheckedKeys = Array.from(uncheckedKeys)
end

return jestAdapter
