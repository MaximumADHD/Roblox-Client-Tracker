-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-runner/src/runTest.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 ]]

local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local console = LuauPolyfill.console
local setTimeout = LuauPolyfill.setTimeout
type Map<T, U> = LuauPolyfill.Map<T, U>
local setImmediate = setTimeout
local Promise = require(Packages.Promise)
type Promise<T> = LuauPolyfill.Promise<T>

-- ROBLOX deviation START: additional function to construct file path from ModuleScript
local getRelativePath = require(Packages.RobloxShared).getRelativePath
-- ROBLOX deviation END

local exports = {}

local chalk = require(Packages.ChalkLua)
-- ROBLOX deviation START: unnecessary variables
-- local fs = require(Packages["graceful-fs"])
-- local sourcemapSupport = require(Packages["source-map-support"])
-- ROBLOX deviation END
local consoleModule = require(Packages.JestConsole)
local BufferedConsole = consoleModule.BufferedConsole
type BufferedConsole = consoleModule.BufferedConsole
local CustomConsole = consoleModule.CustomConsole
type CustomConsole = consoleModule.CustomConsole
type LogMessage = consoleModule.LogMessage
type LogType = consoleModule.LogType
local NullConsole = consoleModule.NullConsole
type NullConsole = consoleModule.NullConsole
local getConsoleOutput = consoleModule.getConsoleOutput
local environmentModule = require(Packages.JestEnvironment)
type JestEnvironment = environmentModule.JestEnvironment
local test_resultModule = require(Packages.JestTestResult)
type TestFileEvent = test_resultModule.TestFileEvent
type TestResult = test_resultModule.TestResult
-- ROBLOX deviation: unnecessary variable
-- local createScriptTransformer = require(Packages.JestTransform).createScriptTransformer
local jestTypesModule = require(Packages.JestTypes)
type Config_GlobalConfig = jestTypesModule.Config_GlobalConfig
-- ROBLOX deviation: running test based on ModuleScript rather than file
type Config_Path = ModuleScript --jestTypesModule.Config_Path
type Config_ProjectConfig = jestTypesModule.Config_ProjectConfig
-- local docblock = require(Packages["jest-docblock"])
-- local LeakDetector = require(Packages["jest-leak-detector"]).default
-- ROBLOX TODO START: implement
-- local formatExecError = require(Packages.JestMessageUtil).formatExecError
-- local jest_resolveModule = require(Packages["jest-resolve"])
-- local Resolver = jest_resolveModule.default
type Resolver = any
-- local resolveTestEnvironment = jest_resolveModule.resolveTestEnvironment
-- local jest_runtimeModule = require(Packages.JestRuntime)
-- type RuntimeClass = jest_runtimeModule.default
type RuntimeClass = typeof(require(Packages.JestRuntime))
-- ROBLOX TODO END
local jest_utilModule = require(Packages.JestUtil)
local ErrorWithStack = jest_utilModule.ErrorWithStack
-- ROBLOX deviation: unnecessary variable
-- local interopRequireDefault = jest_utilModule.interopRequireDefault
local setGlobal = jest_utilModule.setGlobal
local typesModule = require(script.Parent.types)
type TestFramework = typesModule.TestFramework
type TestRunnerContext = typesModule.TestRunnerContext

local Writeable = require(Packages.RobloxShared).Writeable
type LeakDetector = nil
type RunTestInternalResult = {
	leakDetector: LeakDetector | nil,
	result: TestResult,
}
local function freezeConsole(testConsole: BufferedConsole | CustomConsole | NullConsole, config: Config_ProjectConfig)
	-- @ts-expect-error: `_log` is `private` - we should figure out some proper API here
	local function fakeConsolePush(self: any, _type: LogType, message: LogMessage)
		local _error_ = ErrorWithStack.new(
			('%s\nAttempted to log "%s".'):format(
				chalk.red(
					("%s Did you forget to wait for something async in your test?"):format(
						chalk.bold("Cannot log after tests are done.")
					)
				),
				message
			),
			fakeConsolePush
		)
		-- local formattedError = formatExecError(error_, config, { noStackTrace = false }, nil, true)
		-- process.stderr:write("\n" .. tostring(formattedError) .. "\n")
		-- process.exitCode = 1
	end
	(testConsole :: any)._log = fakeConsolePush
end

-- Keeping the core of "runTest" as a separate function (as "runTestInternal")
-- is key to be able to detect memory leaks. Since all variables are local to
-- the function, when "runTestInternal" finishes its execution, they can all be
-- freed, UNLESS something else is leaking them (and that's why we can detect
-- the leak!).
--
-- If we had all the code in a single function, we should manually nullify all
-- references to verify if there is a leak, which is not maintainable and error
-- prone. That's why "runTestInternal" CANNOT be inlined inside "runTest".
local function runTestInternal(
	-- ROBLOX deviation: accept ModuleScript instead of string
	path: ModuleScript,
	globalConfig: Config_GlobalConfig,
	projectConfig: Config_ProjectConfig,
	resolver: Resolver,
	context: TestRunnerContext,
	sendMessageToJest: TestFileEvent?,
	loadedModuleFns: Map<ModuleScript, { any }>
): Promise<RunTestInternalResult>
	return Promise.resolve():andThen(function()
		-- ROBLOX deviation START: unnecessary variables
		-- local testSource = fs:readFileSync(path, "utf8")
		-- local docblockPragmas = docblock:parse(docblock:extract(testSource))
		-- local customEnvironment = docblockPragmas["jest-environment"]
		-- ROBLOX deviation END
		local testEnvironment = projectConfig.testEnvironment
		-- ROBLOX deviation START: no custom environment handling
		-- if customEnvironment ~= nil then
		-- 	if Array.isArray(customEnvironment) then
		-- 		error(
		-- 			Error.new(
		-- 				('You can only define a single test environment through docblocks, got "%s"'):format(
		-- 					(Array.join(customEnvironment, ", "))
		-- 				)
		-- 			)
		-- 		)
		-- 	end
		-- 	testEnvironment = resolveTestEnvironment(Object.assign({}, config, {
		-- 		requireResolveFunction = require_.resolve,
		-- 		testEnvironment = customEnvironment,
		-- 	}))
		-- end
		-- ROBLOX deviation END
		-- ROBLOX deviation START: unnecessary variables
		-- local cacheFS = Map.new({ { path, testSource } })
		-- local transformer = createScriptTransformer(config, cacheFS):expect()
		-- ROBLOX deviation END
		local TestEnvironment: JestEnvironment =
			-- ROBLOX deviation: need to cast as require doesn't allow to import unknown paths
			(require :: any)(testEnvironment)
		-- transformer:requireAndTranspileModule(testEnvironment):expect()
		-- ROBLOX deviation START: use only JestCircus runner
		local testFramework: TestFramework = require(Packages.JestCircus).runner
		-- local testFramework: TestFramework = transformer
		-- 	:requireAndTranspileModule(
		-- 		if process.env.JEST_JASMINE == "1" then require_:resolve("jest-jasmine2") else config.testRunner
		-- 	)
		-- 	:expect()
		-- ROBLOX deviation END
		-- ROBLOX deviation START: use only JestRuntime
		local Runtime: RuntimeClass = require(Packages.JestRuntime)
		-- interopRequireDefault(
		-- 	if Boolean.toJSBoolean(config.moduleLoader) then require_(config.moduleLoader) else require_("jest-runtime")
		-- ).default
		-- ROBLOX deviation END

		-- ROBLOX deviation START: using writable instead of process.stdout or process.stdin
		local consoleOut = Writeable.new()
		-- local consoleOut = if Boolean.toJSBoolean(globalConfig.useStderr) then process.stderr else process.stdout
		-- ROBLOX deviation END
		local function consoleFormatter(type_, message: LogMessage)
			return getConsoleOutput(
				-- 4 = the console call is buried 4 stack frames deep
				BufferedConsole.write({}, type_, message, 4),
				projectConfig,
				globalConfig
			)
		end

		local testConsole

		if globalConfig.silent then
			testConsole = NullConsole.new(consoleOut, consoleOut, consoleFormatter)
		elseif globalConfig.verbose then
			testConsole = CustomConsole.new(consoleOut, consoleOut, consoleFormatter)
		else
			testConsole = BufferedConsole.new()
		end

		local environment = TestEnvironment.new(projectConfig, {
			console = testConsole,
			-- docblockPragmas = docblockPragmas,
			testPath = path,
		})

		if typeof(environment.getVmContext) ~= "function" then
			console.error(
				('Test environment found at "%s" does not export a "getVmContext" method, which is mandatory from Jest 27. This method is a replacement for "runScript".'):format(
					tostring(testEnvironment)
				)
			)
			-- ROBLOX deviation START: no process.exit in Luau
			error(1)
			-- process.exit(1)
			-- ROBLOX deviation END
		end

		-- ROBLOX deviation START: no leak detector implemented
		local leakDetector = nil
		-- local leakDetector = if config.detectLeaks then LeakDetector.new(environment) else nil
		-- ROBLOX deviation END

		setGlobal((environment.global :: unknown) :: typeof(_G), "console", testConsole)

		local runtime = Runtime.new(
			loadedModuleFns
			-- ROBLOX TODO START: no params to Runtime.new so far
			-- config, environment, resolver, transformer, cacheFS, {
			-- 	changedFiles = if typeof(context) == "table" then context.changedFiles else nil,
			-- 	collectCoverage = globalConfig.collectCoverage,
			-- 	collectCoverageFrom = globalConfig.collectCoverageFrom,
			-- 	collectCoverageOnlyFrom = globalConfig.collectCoverageOnlyFrom,
			-- 	coverageProvider = globalConfig.coverageProvider,
			-- 	sourcesRelatedToTestsInChangedFiles = if typeof(context) == "table"
			-- 		then context.sourcesRelatedToTestsInChangedFiles
			-- 		else nil,
			-- }, path
			-- ROBLOX TODO END
		)

		local start = DateTime.now().UnixTimestampMillis

		for _, path_ in projectConfig.setupFiles do
			-- ROBLOX deviation START: no esm modules in Lua
			runtime:requireModule(path_)
			-- local esm = runtime:unstable_shouldLoadAsEsm(path)
			-- if esm ~= nil then
			-- 	runtime:unstable_importModule(path):expect()
			-- else
			-- 	runtime:requireModule(path)
			-- end
			-- ROBLOX deviation END
		end

		-- ROBLOX deviation START: no source map supported
		-- local sourcemapOptions: sourcemapSupport_Options = {
		-- 	environment = "node",
		-- 	handleUncaughtExceptions = false,
		-- 	retrieveSourceMap = function(source)
		-- 		local ref = if typeof(runtime:getSourceMaps()) == "table" then runtime:getSourceMaps().get else nil
		-- 		local sourceMapSource = if ref ~= nil then ref(source) else nil
		-- 		if Boolean.toJSBoolean(sourceMapSource) then
		-- 			local _ok, result, hasReturned = pcall(function()
		-- 				return {
		-- 					map = JSON:parse(fs:readFileSync(sourceMapSource, "utf8")),
		-- 					url = source,
		-- 				},
		-- 					true
		-- 			end)
		-- 			if hasReturned then
		-- 				return result
		-- 			end
		-- 		end
		-- 		return nil
		-- 	end,
		-- }

		-- -- For tests
		-- runtime
		-- 	:requireInternalModule(require_:resolve("source-map-support"), "source-map-support")
		-- 	:install(sourcemapOptions)

		-- -- For runtime errors
		-- sourcemapSupport:install(sourcemapOptions)
		-- ROBLOX deviation END

		-- ROBLOX deviation START: no process.exit in Luau
		-- if
		-- 	Boolean.toJSBoolean(environment.global)
		-- 	and Boolean.toJSBoolean(environment.global.process)
		-- 	and Boolean.toJSBoolean(environment.global.process.exit)
		-- then
		-- 	local realExit = environment.global.process.exit

		-- 	environment.global.process.exit = function(...: any)
		-- 		local args = { ... }
		-- 		local error_ = ErrorWithStack.new(
		-- 			('process.exit called with "%s"'):format(tostring(Array.join(args, ", "))),
		-- 			exit
		-- 		)

		-- 		local formattedError = formatExecError(error_, config, { noStackTrace = false }, nil, true)

		-- 		process.stderr:write(formattedError)

		-- 		return realExit(table.unpack(args))
		-- 	end
		-- end
		-- ROBLOX deviation END

		-- ROBLOX deviation START: no v8Coverage
		-- -- if we don't have `getVmContext` on the env skip coverage
		-- local collectV8Coverage = globalConfig.coverageProvider == "v8"
		-- 	and typeof(environment.getVmContext) == "function"
		-- ROBLOX deviation END

		local ok, result = pcall(function()
			environment:setup():expect()
			local result: TestResult

			local ok_, result_ = pcall(function()
				-- ROBLOX deviation START: no v8Coverage
				-- if collectV8Coverage then
				-- 	runtime:collectV8Coverage():expect()
				-- end
				-- ROBLOX deviation END
				result =
					testFramework(globalConfig, projectConfig, environment, runtime, path, sendMessageToJest):expect()
			end)
			if not ok_ then
				local err = result_

				-- Access stack before uninstalling sourcemaps
				local _ = err.stack
			end
			-- ROBLOX deviation START: no v8Coverage
			-- if collectV8Coverage then
			-- 	runtime:stopCollectingV8Coverage():expect()
			-- end
			-- ROBLOX deviation END
			if not ok_ then
				local err = result_
				error(err)
			end

			freezeConsole(testConsole, projectConfig)

			local testCount = result.numPassingTests
				+ result.numFailingTests
				+ result.numPendingTests
				+ result.numTodoTests

			local end_ = DateTime.now().UnixTimestampMillis
			local testRuntime = end_ - start
			result.perfStats = {
				["end"] = end_,
				runtime = testRuntime,
				slow = testRuntime / 1000 > projectConfig.slowTestThreshold,
				start = start,
			}
			result.testFilePath = getRelativePath(path, projectConfig.rootDir)
			result.console = testConsole:getBuffer()
			result.skipped = testCount == result.numPendingTests
			result.displayName = projectConfig.displayName

			-- #region
			-- ROBLOX deviation START: no coverage support
			-- local coverage = runtime:getAllCoverageInfoCopy()
			-- if Boolean.toJSBoolean(coverage) then
			-- 	local coverageKeys = Object.keys(coverage)
			-- 	if #coverageKeys > 0 then
			-- 		result.coverage = coverage
			-- 	end
			-- end
			-- ROBLOX deviation END

			-- ROBLOX deviation START: no v8Coverage
			-- if collectV8Coverage then
			-- 	local v8Coverage = runtime:getAllV8CoverageInfoCopy()
			-- 	if Boolean.toJSBoolean(v8Coverage) and #v8Coverage > 0 then
			-- 		result.v8Coverage = v8Coverage
			-- 	end
			-- end
			-- ROBLOX deviation END

			-- ROBLOX deviation START: no gc available in Luau
			-- if globalConfig.logHeapUsage then
			-- 	if global.gc then
			-- 		global:gc()
			-- 	end
			-- 	result.memoryUsage = process:memoryUsage().heapUsed
			-- end
			-- ROBLOX deviation END
			--#endregion
			-- Delay the resolution to allow log messages to be output.
			return Promise.new(function(resolve)
				setImmediate(function()
					return resolve({ leakDetector = leakDetector, result = result })
				end)
			end)
		end)
		runtime:teardown()
		environment:teardown():expect()

		-- ROBLOX deviation: no source map supported
		-- sourcemapSupport:resetRetrieveHandlers()

		if not ok then
			error(result)
		end
		return result
	end)
end

local function runTest(
	path: ModuleScript,
	globalConfig: Config_GlobalConfig,
	config: Config_ProjectConfig,
	resolver: Resolver,
	context: TestRunnerContext,
	sendMessageToJest: TestFileEvent?,
	loadedModuleFns: Map<ModuleScript, { any }>
): Promise<TestResult>
	return Promise.resolve():andThen(function()
		local ref =
			runTestInternal(path, globalConfig, config, resolver, context, sendMessageToJest, loadedModuleFns):expect()
		local leakDetector, result = ref.leakDetector, ref.result
		if leakDetector ~= nil then
			-- We wanna allow a tiny but time to pass to allow last-minute cleanup
			Promise.new(function(resolve)
				return setTimeout(resolve, 100)
			end):expect()

			-- Resolve leak detector, outside the "runTestInternal" closure.
			result.leaks = leakDetector:isLeaking():expect()
		else
			result.leaks = false
		end
		return result
	end)
end
exports.default = runTest

return exports
