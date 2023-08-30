-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-config/src/index.ts
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
local Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>
type Promise<T> = LuauPolyfill.Promise<T>
local Promise = require(Packages.Promise)

local exports = {}

-- ROBLOX deviation START: not needed
-- local path = require(Packages.path)
-- ROBLOX deviation END
local chalk = require(Packages.ChalkLua)
-- ROBLOX deviation START: not needed
-- local fs = require(Packages["graceful-fs"])
-- ROBLOX deviation END
local typesModule = require(Packages.JestTypes)
type Config_Argv = typesModule.Config_Argv
type Config_GlobalConfig = typesModule.Config_GlobalConfig
type Config_InitialOptions = typesModule.Config_InitialOptions
type Config_Path = typesModule.Config_Path
type Config_ProjectConfig = typesModule.Config_ProjectConfig
-- ROBLOX deviation START: not needed
-- local tryRealpath = require(Packages.JestUtil).tryRealpath
-- ROBLOX deviation END
local constants = require(script.constants)
local normalize = require(script.normalize).default
local readConfigFileAndSetRootDir = require(script.readConfigFileAndSetRootDir).default
local resolveConfigPath = require(script.resolveConfigPath).default
local utilsModule = require(script.utils)
local isJSONString = utilsModule.isJSONString

-- ROBLOX deviation START: not needed
-- local replaceRootDirInPath = utilsModule.replaceRootDirInPath
-- TODO: remove export in Jest 28
-- exports.getTestEnvironment = require(Packages["jest-resolve"]).resolveTestEnvironment
-- ROBLOX deviation END
exports.isJSONString = require(script.utils).isJSONString
exports.normalize = require(script.normalize).default
-- ROBLOX deviation START: not needed
-- exports.deprecationEntries = require(script.Deprecated).default
-- exports.replaceRootDirInPath = require(script.utils).replaceRootDirInPath
-- ROBLOX deviation END
exports.defaults = require(script.Defaults).default
-- ROBLOX deviation START: not needed
-- exports.descriptions = require(script.Descriptions).default
-- ROBLOX deviation END
exports.constants = constants

-- ROBLOX deviation START: added missing variables to limit nr deviations
local RobloxShared = require(Packages.RobloxShared)
local nodeUtils = RobloxShared.nodeUtils
type NodeJS_WriteStream = RobloxShared.NodeJS_WriteStream
local JSON = nodeUtils.JSON
-- ROBLOX deviation END

-- ROBLOX deviation START: predefine functions
local groupOptions
local ensureNoDuplicateConfigs
-- ROBLOX deviation END

type ReadConfig = {
	-- ROBLOX deviation START: using ModuleScript instead of Config_Path
	configPath: ModuleScript | nil,
	-- ROBLOX deviation END
	globalConfig: Config_GlobalConfig,
	hasDeprecationWarnings: boolean,
	projectConfig: Config_ProjectConfig,
}

local function readConfig(
	cwdInstance: Instance,
	argv: Config_Argv,
	-- ROBLOX deviation START: using Instance instead of Config_Path
	packageRootOrConfig: Instance | Config_InitialOptions,
	-- ROBLOX deviation END
	-- Whether it needs to look into `--config` arg passed to CLI.
	-- It only used to read initial config. If the initial config contains
	-- `project` property, we don't want to read `--config` value and rather
	-- read individual configs for every project.
	skipArgvConfigOption: boolean?,
	-- ROBLOX deviation START: using Instance instead of Config_Path
	parentConfigDirname: Instance?,
	-- ROBLOX deviation END
	projectIndex: any?,
	skipMultipleConfigWarning: boolean?
): Promise<ReadConfig>
	if projectIndex == nil then
		projectIndex = math.huge
	end
	if skipMultipleConfigWarning == nil then
		skipMultipleConfigWarning = false
	end
	return Promise.resolve():andThen(function()
		local rawOptions: Config_InitialOptions
		local configPath = nil

		if
			-- ROBLOX deviation START: using Instance instead of Config_Path
			typeof(packageRootOrConfig) ~= "Instance" and typeof(packageRootOrConfig) ~= "string"
			-- ROBLOX deviation END
		then
			-- ROBLOX deviation START: configuration as an object not supported yet
			error(Error.new("Jest: configuration as an object not supported yet"))
			-- if parentConfigDirname ~= nil then
			-- 	rawOptions = packageRootOrConfig :: Config_InitialOptions
			-- 	rawOptions.rootDir = if rawOptions.rootDir ~= nil
			-- 		then replaceRootDirInPath(parentConfigDirname, rawOptions.rootDir)
			-- 		else parentConfigDirname
			-- else
			-- 	error(Error.new("Jest: Cannot use configuration as an object without a file path."))
			-- end
			-- ROBLOX deviation END
		elseif isJSONString(argv.config) then
			-- A JSON string was passed to `--config` argument and we can parse it
			-- and use as is.
			local config

			local ok = pcall(function()
				config = JSON.parse(argv.config)
			end)
			if not ok then
				error(Error.new("There was an error while parsing the `--config` argument as a JSON string."))
			end
			-- NOTE: we might need to resolve this dir to an absolute path in the future
			config.rootDir = Boolean.toJSBoolean(config.rootDir) and config.rootDir or packageRootOrConfig
			rawOptions = config
			-- A string passed to `--config`, which is either a direct path to the config
			-- or a path to directory containing `package.json`, `jest.config.js` or `jest.config.ts`
		elseif not skipArgvConfigOption and typeof(argv.config) == "string" then
			configPath = resolveConfigPath(argv.config, cwdInstance, skipMultipleConfigWarning)
			rawOptions = readConfigFileAndSetRootDir(configPath):expect()
		else
			-- Otherwise just try to find config in the current rootDir.
			configPath = resolveConfigPath(packageRootOrConfig, cwdInstance, skipMultipleConfigWarning)
			rawOptions = readConfigFileAndSetRootDir(configPath):expect()
		end
		local ref = normalize(rawOptions, argv, configPath, projectIndex):expect()
		local options, hasDeprecationWarnings = ref.options, ref.hasDeprecationWarnings

		local ref_ = groupOptions(options)
		local globalConfig, projectConfig = ref_.globalConfig, ref_.projectConfig
		return {
			configPath = configPath,
			globalConfig = globalConfig,
			hasDeprecationWarnings = hasDeprecationWarnings,
			projectConfig = projectConfig,
		}
	end)
end
exports.readConfig = readConfig

function groupOptions(options: Config_ProjectConfig & Config_GlobalConfig): {
	globalConfig: Config_GlobalConfig,
	projectConfig: Config_ProjectConfig,
}
	return {
		globalConfig = (
				Object.freeze({
					bail = options.bail,
					-- ROBLOX deviation START: not supported
					-- changedFilesWithAncestor = options.changedFilesWithAncestor,
					-- ROBLOX deviation END
					changedSince = options.changedSince,
					-- ROBLOX deviation START: not supported
					-- collectCoverage = options.collectCoverage,
					-- collectCoverageFrom = options.collectCoverageFrom,
					-- collectCoverageOnlyFrom = options.collectCoverageOnlyFrom,
					-- coverageDirectory = options.coverageDirectory,
					-- coverageProvider = options.coverageProvider,
					-- coverageReporters = options.coverageReporters,
					-- coverageThreshold = options.coverageThreshold,
					-- detectLeaks = options.detectLeaks,
					-- detectOpenHandles = options.detectOpenHandles,
					-- errorOnDeprecated = options.errorOnDeprecated,
					-- ROBLOX deviation END
					expand = options.expand,
					filter = options.filter,
					-- ROBLOX deviation START: not supported
					-- findRelatedTests = options.findRelatedTests,
					-- forceExit = options.forceExit,
					-- globalSetup = options.globalSetup,
					-- globalTeardown = options.globalTeardown,
					-- ROBLOX deviation END
					json = options.json,
					-- ROBLOX deviation START: not supported
					-- lastCommit = options.lastCommit,
					-- ROBLOX deviation END
					listTests = options.listTests,
					-- ROBLOX deviation START: not supported
					-- logHeapUsage = options.logHeapUsage,
					-- ROBLOX deviation END
					maxConcurrency = options.maxConcurrency,
					maxWorkers = options.maxWorkers,
					-- ROBLOX deviation START: not supported
					-- noSCM = nil,
					-- ROBLOX deviation END
					noStackTrace = options.noStackTrace,
					nonFlagArgs = options.nonFlagArgs,
					-- ROBLOX deviation START: not supported
					-- notify = options.notify,
					-- notifyMode = options.notifyMode,
					-- onlyChanged = options.onlyChanged,
					-- onlyFailures = options.onlyFailures,
					-- ROBLOX deviation END
					outputFile = options.outputFile,
					passWithNoTests = options.passWithNoTests,
					projects = options.projects,
					-- ROBLOX deviation START: not supported
					-- replname = options.replname,
					-- reporters = options.reporters,
					-- ROBLOX deviation END
					rootDir = options.rootDir,
					runTestsByPath = options.runTestsByPath,
					silent = options.silent,
					skipFilter = options.skipFilter,
					snapshotFormat = options.snapshotFormat,
					testFailureExitCode = options.testFailureExitCode,
					testNamePattern = options.testNamePattern,
					testPathPattern = options.testPathPattern,
					-- ROBLOX deviation START: not supported
					-- testResultsProcessor = options.testResultsProcessor,
					-- testSequencer = options.testSequencer,
					-- ROBLOX deviation END
					testTimeout = options.testTimeout,
					updateSnapshot = options.updateSnapshot,
					-- ROBLOX deviation START: not supported
					-- useStderr = options.useStderr,
					-- ROBLOX deviation END
					verbose = options.verbose,
					-- ROBLOX deviation START: not supported
					-- watch = options.watch,
					-- watchAll = options.watchAll,
					-- watchPlugins = options.watchPlugins,
					-- watchman = options.watchman,
					-- ROBLOX deviation END
				}) :: any
			) :: Config_GlobalConfig,
		projectConfig = Object.freeze({
			automock = options.automock,
			-- ROBLOX deviation START: caching not supported
			-- cache = options.cache,
			-- cacheDirectory = options.cacheDirectory,
			-- ROBLOX devation END
			clearMocks = options.clearMocks,
			-- ROBLOX deviation START: not supported
			-- coveragePathIgnorePatterns = options.coveragePathIgnorePatterns,
			-- cwd = options.cwd,
			-- dependencyExtractor = options.dependencyExtractor,
			-- detectLeaks = options.detectLeaks,
			-- detectOpenHandles = options.detectOpenHandles,
			-- ROBLOX deviation END
			displayName = options.displayName,
			-- ROBLOX deviation START: not supported
			-- errorOnDeprecated = options.errorOnDeprecated,
			-- extensionsToTreatAsEsm = options.extensionsToTreatAsEsm,
			-- extraGlobals = options.extraGlobals,
			-- filter = options.filter,
			-- forceCoverageMatch = options.forceCoverageMatch,
			-- globalSetup = options.globalSetup,
			-- globalTeardown = options.globalTeardown,
			-- globals = options.globals,
			-- haste = options.haste,
			-- ROBLOX deviation END
			id = options.id,
			injectGlobals = options.injectGlobals,
			-- ROBLOX deviation START: not supported
			-- moduleDirectories = options.moduleDirectories,
			-- moduleFileExtensions = options.moduleFileExtensions,
			-- moduleLoader = options.moduleLoader,
			-- moduleNameMapper = options.moduleNameMapper,
			-- modulePathIgnorePatterns = options.modulePathIgnorePatterns,
			-- modulePaths = options.modulePaths,
			-- prettierPath = options.prettierPath,
			-- ROBLOX deviation END
			resetMocks = options.resetMocks,
			resetModules = options.resetModules,
			-- ROBLOX deviation START: not supported
			-- resolver = options.resolver,
			-- ROBLOX deviation END
			restoreMocks = options.restoreMocks,
			rootDir = options.rootDir,
			roots = options.roots,
			runner = options.runner,
			runtime = options.runtime,
			sandboxInjectedGlobals = options.sandboxInjectedGlobals,
			setupFiles = options.setupFiles,
			setupFilesAfterEnv = options.setupFilesAfterEnv,
			-- ROBLOX deviation START: not supported
			-- skipFilter = options.skipFilter,
			-- skipNodeResolution = options.skipNodeResolution,
			-- ROBLOX deviation END
			slowTestThreshold = options.slowTestThreshold,
			snapshotFormat = options.snapshotFormat,
			-- ROBLOX deviation START: not supported
			-- snapshotResolver = options.snapshotResolver,
			-- ROBLOX deviation END
			snapshotSerializers = options.snapshotSerializers,
			testEnvironment = options.testEnvironment,
			testEnvironmentOptions = options.testEnvironmentOptions,
			testLocationInResults = options.testLocationInResults,
			testMatch = options.testMatch,
			testPathIgnorePatterns = options.testPathIgnorePatterns,
			testRegex = options.testRegex,
			-- ROBLOX deviation START: not supported
			-- testRunner = options.testRunner,
			-- testURL = options.testURL,
			-- ROBLOX deviation END
			timers = options.timers,
			-- ROBLOX deviation START: not supported
			-- transform = options.transform,
			-- transformIgnorePatterns = options.transformIgnorePatterns,
			-- unmockedModulePathPatterns = options.unmockedModulePathPatterns,
			-- watchPathIgnorePatterns = options.watchPathIgnorePatterns,
			-- ROBLOX deviation END
		}) :: Config_ProjectConfig,
	}
end

function ensureNoDuplicateConfigs(
	parsedConfigs: Array<ReadConfig>,
	projects: typeof((({} :: any) :: Config_GlobalConfig).projects)
)
	if #projects <= 1 then
		return
	end
	local configPathMap = Map.new()
	for _, config in parsedConfigs do
		local configPath = config.configPath
		if configPathMap:has(configPath) then
			local message = ([[Whoops! Two projects resolved to the same config path: %s:

  Project 1: %s
  Project 2: %s

This usually means that your %s config includes a directory that doesn't have any configuration recognizable by Jest. Please fix it.
]]):format(
				(chalk.bold(tostring(configPath))),
				(
					chalk.bold(tostring(projects[(Array.findIndex(parsedConfigs, function(x)
						return x == config
					end))]))
				),
				tostring(chalk.bold(tostring(projects[(Array.findIndex(parsedConfigs, function(x)
					return x == configPathMap:get(configPath)
				end))]))),
				tostring(chalk.bold('"projects"'))
			)
			error(Error.new(message))
		end
		if configPath ~= nil then
			configPathMap:set(configPath, config)
		end
	end
end

-- Possible scenarios:
--  1. jest --config config.json
--  2. jest --projects p1 p2
--  3. jest --projects p1 p2 --config config.json
--  4. jest --projects p1
--  5. jest
--
-- If no projects are specified, process.cwd() will be used as the default
-- (and only) project.
local function readConfigs(
	cwdInstance: Instance,
	argv: Config_Argv,
	-- ROBLOX deviation: using Instance instead of Config_Path
	projectPaths: Array<Instance>
): Promise<{
	globalConfig: Config_GlobalConfig,
	configs: Array<Config_ProjectConfig>,
	hasDeprecationWarnings: boolean,
}>
	return Promise.resolve():andThen(function()
		local globalConfig
		local hasDeprecationWarnings
		local configs: Array<Config_ProjectConfig> = {}
		local projects = projectPaths
		-- ROBLOX deviation START: using ModuleScript instead of Config_Path
		local configPath: ModuleScript | nil
		-- ROBLOX deviation END
		if #projectPaths == 1 then
			local parsedConfig = readConfig(cwdInstance, argv, projects[1]):expect()
			configPath = parsedConfig.configPath
			hasDeprecationWarnings = parsedConfig.hasDeprecationWarnings
			globalConfig = parsedConfig.globalConfig
			configs = { parsedConfig.projectConfig }
			if Boolean.toJSBoolean(if globalConfig.projects ~= nil then #globalConfig.projects else nil) then
				-- Even though we had one project in CLI args, there might be more
				-- projects defined in the config.
				-- In other words, if this was a single project,
				-- and its config has `projects` settings, use that value instead.
				projects = globalConfig.projects
			end
		end
		if #projects > 0 then
			local cwd = cwdInstance
			local projectIsCwd = projects[1] == cwd
			local parsedConfigs = Promise.all(Array.map(
				Array.filter(projects, function(root)
					-- Ignore globbed files that cannot be `require`d.
					if typeof(root) == "Instance" and #root:GetChildren() == 0 and not root:isA("ModuleScript") then
						return false
					end
					return true
				end),
				function(root, projectIndex)
					local projectIsTheOnlyProject = projectIndex == 1 and #projects == 1
					local skipArgvConfigOption =
						not if projectIsTheOnlyProject then projectIsCwd else projectIsTheOnlyProject

					return readConfig(
						cwdInstance,
						argv,
						root,
						skipArgvConfigOption,
						if configPath ~= nil then configPath.Parent else cwd,
						projectIndex,
						-- we wanna skip the warning if this is the "main" project
						projectIsCwd
					)
				end
			)):expect()
			ensureNoDuplicateConfigs(parsedConfigs, projects)
			configs = Array.map(parsedConfigs, function(ref)
				local projectConfig = ref.projectConfig
				return projectConfig
			end)
			if not hasDeprecationWarnings then
				hasDeprecationWarnings = Array.some(parsedConfigs, function(ref)
					local hasDeprecationWarnings = ref.hasDeprecationWarnings
					return Boolean.toJSBoolean(hasDeprecationWarnings)
				end)
			end
			-- If no config was passed initially, use the one from the first project
			if not Boolean.toJSBoolean(globalConfig) then
				globalConfig = parsedConfigs[1].globalConfig
			end
		end
		if not Boolean.toJSBoolean(globalConfig) or not Boolean.toJSBoolean(#configs) then
			error(Error.new("jest: No configuration found for any project."))
		end
		return {
			configs = configs,
			globalConfig = globalConfig,
			hasDeprecationWarnings = Boolean.toJSBoolean(hasDeprecationWarnings),
		}
	end)
end
exports.readConfigs = readConfigs
return exports
