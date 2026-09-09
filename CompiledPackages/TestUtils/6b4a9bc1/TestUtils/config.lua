-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/test-utils/src/config.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  */
local CurrentModule = script.Parent
local Packages = CurrentModule.Parent

local jestTypesModule = require(Packages.JestTypes)

type Config_GlobalConfig = jestTypesModule.Config_GlobalConfig
type Config_ProjectConfig = jestTypesModule.Config_ProjectConfig

local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object

local DEFAULT_GLOBAL_CONFIG: Config_GlobalConfig = {
	bail = 0,
	changedFilesWithAncestor = false,
	changedSince = "",
	ci = false,
	collectCoverage = false,
	collectCoverageFrom = {},
	collectCoverageOnlyFrom = Object.None,
	coverageDirectory = "coverage",
	coverageProvider = "babel",
	coverageReporters = {},
	coverageThreshold = { global = {} },
	detectLeaks = false,
	detectOpenHandles = false,
	errorOnDeprecated = false,
	expand = false,
	filter = Object.None,
	findRelatedTests = false,
	forceExit = false,
	globalSetup = Object.None,
	globalTeardown = Object.None,
	json = false,
	lastCommit = false,
	listTests = false,
	logHeapUsage = false,
	maxConcurrency = 5,
	maxWorkers = 2,
	noSCM = Object.None,
	noStackTrace = false,
	stackDepth = 0,
	nonFlagArgs = {},
	notify = false,
	notifyMode = "failure-change",
	onlyChanged = false,
	onlyFailures = false,
	outputFile = Object.None,
	passWithNoTests = false,
	projects = {},
	replname = Object.None,
	reporters = {},
	rootDir = "/test_root_dir/" :: any,
	runTestsByPath = false,
	silent = false,
	skipFilter = false,
	snapshotFormat = {},
	testFailureExitCode = 1,
	testNamePattern = "",
	testPathPattern = "",
	testResultsProcessor = Object.None,
	testSequencer = "@jest/test-sequencer",
	testTimeout = 5000,
	updateSnapshot = "none",
	useStderr = false,
	verbose = false,
	watch = false,
	watchAll = false,
	watchPlugins = {},
	watchman = false,
}

local DEFAULT_PROJECT_CONFIG: Config_ProjectConfig = {
	automock = false,
	cache = false,
	clearMocks = false,
	coveragePathIgnorePatterns = {},
	cwd = "/test_root_dir/",
	detectLeaks = false,
	detectOpenHandles = false,
	displayName = Object.None,
	errorOnDeprecated = false,
	extensionsToTreatAsEsm = {},
	fakeTimers = { enableGlobally = false },
	filter = Object.None,
	forceCoverageMatch = {},
	globalSetup = Object.None,
	globalTeardown = Object.None,
	globals = {},
	haste = {},
	id = "test_name",
	injectGlobals = true,
	moduleDirectories = {},
	moduleFileExtensions = { "js" },
	moduleNameMapper = {},
	modulePathIgnorePatterns = {},
	modulePaths = {},
	mockDataModel = false,
	-- inject alike types
	oldFunctionSpying = true,
	prettierPath = "prettier",
	resetMocks = false,
	resetModules = false,
	resolver = Object.None,
	restoreMocks = false,
	rootDir = "/test_root_dir/" :: any,
	roots = {},
	runner = "jest-runner",
	runtime = "/test_module_loader_path",
	sandboxInjectedGlobals = {},
	setupFiles = {},
	setupFilesAfterEnv = {},
	skipFilter = false,
	skipNodeResolution = false,
	slowTestThreshold = 5,
	snapshotFormat = {},
	snapshotResolver = Object.None,
	snapshotSerializers = {},
	testEnvironment = Packages.JestEnvironmentLuau,
	testEnvironmentOptions = {},
	testLocationInResults = false,
	testMatch = {},
	testPathIgnorePatterns = {},
	testRegex = { "\\.test\\.js$" },
	testRunner = "jest-circus/runner",
	testURL = "http =//localhost",
	timers = "real",
	transform = {},
	transformIgnorePatterns = {},
	unmockedModulePathPatterns = Object.None,
	watchPathIgnorePatterns = {},
}

local function merge<T>(defaults: T, overrides: { [string]: any }, name: string): T
	local unknown: { string } = {}
	for key in overrides do
		if (defaults :: any)[key] == nil then
			table.insert(unknown, tostring(key))
		end
	end
	if #unknown > 0 then
		error(`Properties that are not part of {name} type were passed: \{ "{table.concat(unknown, '", "')}" }`)
	end

	local result = table.clone(defaults :: any)
	for key, value in overrides do
		result[key] = value
	end
	return (result :: any) :: T
end

local function makeGlobalConfig(overrides: { [string]: any }?): Config_GlobalConfig
	return merge(DEFAULT_GLOBAL_CONFIG, overrides or {}, "GlobalConfig")
end

local function makeProjectConfig(overrides: { [string]: any }?): Config_ProjectConfig
	return merge(DEFAULT_PROJECT_CONFIG, overrides or {}, "ProjectConfig")
end

return {
	makeGlobalConfig = makeGlobalConfig,
	makeProjectConfig = makeProjectConfig,
}
