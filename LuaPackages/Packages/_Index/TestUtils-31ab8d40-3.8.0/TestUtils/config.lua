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
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object
local inspect = LuauPolyfill.util.inspect
local Set = LuauPolyfill.Set

local exports = {}

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
	-- ROBLOX deviation START: caching not supported
	-- cacheDirectory = "/test_cache_dir/",
	-- ROBLOX deviation END
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

exports.makeGlobalConfig = function(overrides_: { [string]: any }?): Config_GlobalConfig
	local overrides = overrides_ or {}
	local overridesKeys = Set.new(Object.keys(overrides))

	Array.forEach(Object.keys(DEFAULT_GLOBAL_CONFIG), function(key)
		overridesKeys:delete(key)
	end)

	if overridesKeys.size > 0 then
		error("Properties that are not part of GlobalConfig type were passed:" .. inspect(Array.from(overridesKeys)))
	end

	return Object.assign({}, DEFAULT_GLOBAL_CONFIG, overrides)
end

exports.makeProjectConfig = function(overrides: { [string]: any }): Config_ProjectConfig
	overrides = overrides or {}
	local overridesKeys = Set.new(Object.keys(overrides))

	Array.forEach(Object.keys(DEFAULT_PROJECT_CONFIG), function(key)
		overridesKeys:delete(key)
	end)

	if overridesKeys.size > 0 then
		error("Properties that are not part of ProjectConfig type were passed:" .. inspect(Array.from(overridesKeys)))
	end

	return Object.assign({}, DEFAULT_PROJECT_CONFIG, overrides)
end

return exports
