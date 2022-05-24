-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/test-utils/src/config.ts
local CurrentModule = script.Parent
local Packages = CurrentModule.Parent

local jestTypesModule = require(Packages.JestTypes)
type Config_GlobalConfig = jestTypesModule.Config_GlobalConfig
type Config_ProjectConfig = jestTypesModule.Config_ProjectConfig

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object
local inspect = LuauPolyfill.util.inspect

local exports = {}

local DEFAULT_GLOBAL_CONFIG: Config_GlobalConfig = {
	bail = 0,
	changedFilesWithAncestor = false,
	changedSince = "",
	collectCoverage = false,
	collectCoverageFrom = {},
	collectCoverageOnlyFrom = nil,
	coverageDirectory = "coverage",
	coverageProvider = "babel",
	coverageReporters = {},
	coverageThreshold = { global = {} },
	detectLeaks = false,
	detectOpenHandles = false,
	errorOnDeprecated = false,
	expand = false,
	filter = nil,
	findRelatedTests = false,
	forceExit = false,
	globalSetup = nil,
	globalTeardown = nil,
	json = false,
	lastCommit = false,
	listTests = false,
	logHeapUsage = false,
	maxConcurrency = 5,
	maxWorkers = 2,
	noSCM = nil,
	noStackTrace = false,
	nonFlagArgs = {},
	notify = false,
	notifyMode = "failure-change",
	onlyChanged = false,
	onlyFailures = false,
	outputFile = nil,
	passWithNoTests = false,
	projects = {},
	replname = nil,
	reporters = {},
	rootDir = "/test_root_dir/",
	runTestsByPath = false,
	silent = false,
	skipFilter = false,
	snapshotFormat = {},
	testFailureExitCode = 1,
	testNamePattern = "",
	testPathPattern = "",
	testResultsProcessor = nil,
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
	cacheDirectory = "/test_cache_dir/",
	clearMocks = false,
	coveragePathIgnorePatterns = {},
	cwd = "/test_root_dir/",
	detectLeaks = false,
	detectOpenHandles = false,
	displayName = nil,
	errorOnDeprecated = false,
	extensionsToTreatAsEsm = {},
	extraGlobals = {},
	filter = nil,
	forceCoverageMatch = {},
	globalSetup = nil,
	globalTeardown = nil,
	globals = {},
	haste = {},
	injectGlobals = true,
	moduleDirectories = {},
	moduleFileExtensions = { "js" },
	moduleLoader = "/test_module_loader_path",
	moduleNameMapper = {},
	modulePathIgnorePatterns = {},
	modulePaths = {},
	name = "test_name",
	prettierPath = "prettier",
	resetMocks = false,
	resetModules = false,
	resolver = nil,
	restoreMocks = false,
	rootDir = "/test_root_dir/",
	roots = {},
	runner = "jest-runner",
	setupFiles = {},
	setupFilesAfterEnv = {},
	skipFilter = false,
	skipNodeResolution = false,
	slowTestThreshold = 5,
	snapshotFormat = {},
	snapshotResolver = nil,
	snapshotSerializers = {},
	testEnvironment = "node",
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
	unmockedModulePathPatterns = nil,
	watchPathIgnorePatterns = {},
}

exports.makeGlobalConfig = function(overrides: { [string]: any }?): Config_GlobalConfig
	overrides = overrides or {}
	local overridesKeys = Array.reduce(Object.keys(overrides), function(acc, key)
		acc[key] = key
		return acc
	end, {})

	Array.forEach(Object.keys(DEFAULT_GLOBAL_CONFIG), function(key)
		overridesKeys[key] = nil
	end)

	if #overridesKeys > 0 then
		error("Properties that are not part of GlobalConfig type were passed:" .. inspect(overridesKeys))
	end

	return Object.assign(DEFAULT_GLOBAL_CONFIG, overrides)
end

exports.makeProjectConfig = function(overrides: { [string]: any }): Config_ProjectConfig
	overrides = overrides or {}
	local overridesKeys = Array.reduce(Object.keys(overrides), function(acc, key)
		acc[key] = key
		return acc
	end, {})

	Array.forEach(Object.keys(DEFAULT_PROJECT_CONFIG), function(key)
		overridesKeys[key] = nil
	end)

	if #overridesKeys > 0 then
		error("Properties that are not part of ProjectConfig type were passed:" .. inspect(overridesKeys))
	end

	return Object.assign(DEFAULT_PROJECT_CONFIG, overrides)
end

return exports
