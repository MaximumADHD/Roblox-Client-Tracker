-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-config/src/normalize.ts
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
local Object = LuauPolyfill.Object
local console = LuauPolyfill.console
type Array<T> = LuauPolyfill.Array<T>
type Promise<T> = LuauPolyfill.Promise<T>
local Promise = require(Packages.Promise)

local exports = {}

-- ROBLOX deviation START: predefine functions
local showTestPathPatternError
-- ROBLOX deviation END

-- ROBLOX deviation START: added missing variables to limit nr deviations
local RobloxShared = require(Packages.RobloxShared)
local nodeUtils = RobloxShared.nodeUtils
local process = nodeUtils.process
local getRelativePath = RobloxShared.getRelativePath
-- ROBLOX deviation END

-- ROBLOX deviation START: not needed
-- local createHash = require(Packages.crypto).createHash
-- local path = require(Packages.path)
-- ROBLOX deviation END
local chalk = require(Packages.ChalkLua)
-- ROBLOX deviation START: not needed
-- local merge = require(Packages.deepmerge)
-- local glob = require(Packages.glob).sync
-- local statSync = require(Packages["graceful-fs"]).statSync
-- local micromatch = require(Packages.micromatch)
-- ROBLOX deviation END
local typesModule = require(Packages.JestTypes)
type Config_Argv = typesModule.Config_Argv
type Config_DisplayName = typesModule.Config_DisplayName
type Config_Glob = typesModule.Config_Glob
type Config_GlobalConfig = typesModule.Config_GlobalConfig
type Config_InitialOptions = typesModule.Config_InitialOptions
type Config_InitialOptionsWithRootDir = typesModule.Config_InitialOptionsWithRootDir
type Config_Path = typesModule.Config_Path
type Config_ProjectConfig = typesModule.Config_ProjectConfig
type Config_ReporterConfig = typesModule.Config_ReporterConfig
-- ROBLOX deviation START: not used

-- local replacePathSepForRegex = require(Packages["jest-regex-util"]).replacePathSepForRegex
local function replacePathSepForRegex(value)
	return value
end
-- local jest_resolveModule = require(Packages["jest-resolve"])
-- local Resolver = jest_resolveModule.default
-- local resolveRunner = jest_resolveModule.resolveRunner
-- local resolveSequencer = jest_resolveModule.resolveSequencer
-- local resolveTestEnvironment = jest_resolveModule.resolveTestEnvironment
-- local resolveWatchPlugin = jest_resolveModule.resolveWatchPlugin
-- ROBLOX deviation END
local jest_utilModule = require(Packages.JestUtil)
local clearLine = jest_utilModule.clearLine
-- ROBLOX deviation START: not used

-- local replacePathSepForGlob = jest_utilModule.replacePathSepForGlob
local function replacePathSepForGlob(value)
	return value
end
-- local requireOrImportModule = jest_utilModule.requireOrImportModule
-- local tryRealpath = jest_utilModule.tryRealpath
-- ROBLOX deviation END
local jestValidateModule = require(Packages.JestValidate)
local ValidationError = jestValidateModule.ValidationError
-- ROBLOX deviation START: not used
-- local validate = jest_validateModule.validate
-- ROBLOX deviation END
local DEFAULT_CONFIG = require(script.Parent.Defaults).default
-- ROBLOX deviation START: not used
-- local DEPRECATED_CONFIG = require(script.Parent.Deprecated).default
-- local validateReporters = require(script.Parent.ReporterValidationErrors).validateReporters
-- local VALID_CONFIG = require(script.Parent.ValidConfig).default
-- ROBLOX deviation END
local getDisplayNameColor = require(script.Parent.color).getDisplayNameColor
-- ROBLOX deviation START: not used
-- local constantsModule = require(script.Parent.constants)
-- local DEFAULT_JS_PATTERN = constantsModule.DEFAULT_JS_PATTERN
-- local DEFAULT_REPORTER_LABEL = constantsModule.DEFAULT_REPORTER_LABEL
-- ROBLOX deviation END
local getMaxWorkers = require(script.Parent.getMaxWorkers).default
-- ROBLOX deviation START: not needed now. Will be necessary when we want to implement TestSequencer
-- local parseShardPair = require(script.Parent.parseShardPair).parseShardPair
-- ROBLOX deviation END
local setFromArgv = require(script.Parent.setFromArgv).default
local utilsModule = require(script.Parent.utils)
local BULLET = utilsModule.BULLET
local DOCUMENTATION_NOTE = utilsModule.DOCUMENTATION_NOTE
-- ROBLOX deviation START: not used
-- local _replaceRootDirTags = utilsModule._replaceRootDirTags
-- local escapeGlobCharacters = utilsModule.escapeGlobCharacters
-- local replaceRootDirInPath = utilsModule.replaceRootDirInPath
-- local resolve = utilsModule.resolve
-- ROBLOX deviation END
local validatePattern = require(script.Parent.validatePattern).default

local ERROR = ("%sValidation Error"):format(BULLET)
-- ROBLOX deviation START: not used
-- local PRESET_EXTENSIONS = { ".json", ".js", ".cjs", ".mjs" }
-- local PRESET_NAME = "jest-preset"
-- ROBLOX deviation END

type AllOptions = Config_ProjectConfig & Config_GlobalConfig

local function createConfigError(message: string)
	return ValidationError.new(ERROR, message, DOCUMENTATION_NOTE)
end

local function verifyDirectoryExists(
	-- ROBLOX deviation START: using Instance instead of Config_Path
	path: Instance?,
	-- ROBLOX deviation END
	key: string
)
	-- ROBLOX deviation START: statSync not necessary as path is an Instance
	if typeof(path) ~= "Instance" then
		error(
			createConfigError(
				("  Directory %s in the %s option was not found."):format(chalk.bold(tostring(path)), chalk.bold(key))
			)
		)
	end

	-- local ok, err = pcall(function()
	-- 	local rootStat = statSync(path)
	-- 	if not Boolean.toJSBoolean(rootStat:isDirectory()) then
	-- 		error(
	-- 			createConfigError(
	-- 				("  %s in the %s option is not a directory."):format(chalk.bold(path), chalk.bold(key))
	-- 			)
	-- 		)
	-- 	end
	-- end)
	-- if not ok then
	-- 	if instanceof(err, ValidationError) then
	-- 		error(err)
	-- 	end

	-- 	if err.code == "ENOENT" then
	-- 		error(
	-- 			createConfigError(
	-- 				("  Directory %s in the %s option was not found."):format(chalk.bold(path), chalk.bold(key))
	-- 			)
	-- 		)
	-- 	end

	-- 	-- Not sure in which cases `statSync` can throw, so let's just show the underlying error to the user
	-- 	error(
	-- 		createConfigError(
	-- 			("  Got an error trying to find %s in the %s option.\n\n  Error was: %s"):format(
	-- 				chalk.bold(path),
	-- 				chalk.bold(key),
	-- 				tostring(err.message)
	-- 			)
	-- 		)
	-- 	)
	-- end
	-- ROBLOX deviation END
end

-- ROBLOX deviation START: not used
-- -- TS 3.5 forces us to split these into 2
-- local function mergeModuleNameMapperWithPreset(options: Config_InitialOptionsWithRootDir, preset: Config_InitialOptions)
-- 	if Boolean.toJSBoolean(options["moduleNameMapper"]) and Boolean.toJSBoolean(preset["moduleNameMapper"]) then
-- 		options["moduleNameMapper"] =
-- 			Object.assign({}, options["moduleNameMapper"], preset["moduleNameMapper"], options["moduleNameMapper"])
-- 	end
-- end

-- local function mergeTransformWithPreset(options: Config_InitialOptionsWithRootDir, preset: Config_InitialOptions)
-- 	if Boolean.toJSBoolean(options["transform"]) and Boolean.toJSBoolean(preset["transform"]) then
-- 		options["transform"] = Object.assign({}, options["transform"], preset["transform"], options["transform"])
-- 	end
-- end

-- local function mergeGlobalsWithPreset(options: Config_InitialOptions, preset: Config_InitialOptions)
-- 	if Boolean.toJSBoolean(options["globals"]) and Boolean.toJSBoolean(preset["globals"]) then
-- 		options["globals"] = merge(preset["globals"], options["globals"])
-- 	end
-- end

-- local function setupPreset(
-- 	options: Config_InitialOptionsWithRootDir,
-- 	optionsPreset: string
-- ): Promise<Config_InitialOptionsWithRootDir>
-- 	return Promise.resolve():andThen(function()
-- 		local preset: Config_InitialOptions
-- 		local presetPath = replaceRootDirInPath(options.rootDir, optionsPreset)
-- 		local presetModule = Resolver:findNodeModule(
-- 			if Boolean.toJSBoolean(presetPath:startsWith(".")) then presetPath else path.join(presetPath, PRESET_NAME),
-- 			{ basedir = options.rootDir, extensions = PRESET_EXTENSIONS }
-- 		)
-- 		do --[[ ROBLOX COMMENT: try-catch block conversion ]]
-- 			local ok, result, hasReturned = xpcall(function()
-- 				if not Boolean.toJSBoolean(presetModule) then
-- 					error(Error.new(("Cannot find module '%s'"):format(tostring(presetPath))))
-- 				end -- Force re-evaluation to support multiple projects
-- 				do --[[ ROBLOX COMMENT: try-catch block conversion ]]
-- 					local ok, result, hasReturned = xpcall(function()
-- 						require_.cache[tostring(require_:resolve(presetModule))] = nil
-- 					end, function() end)
-- 					if hasReturned then
-- 						return result
-- 					end
-- 				end
-- 				preset = requireOrImportModule(presetModule):expect()
-- 			end, function(error_)
-- 				if
-- 					Boolean.toJSBoolean((function()
-- 						local ref = error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: BinaryExpression with 'instanceof' operator ]] --[[ error instanceof SyntaxError ]]
-- 						return Boolean.toJSBoolean(ref) and ref or error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: BinaryExpression with 'instanceof' operator ]] --[[ error instanceof TypeError ]]
-- 					end)())
-- 				then
-- 					error(
-- 						createConfigError(
-- 							("  Preset %s is invalid:\n\n  %s\n  %s"):format(
-- 								chalk.bold(presetPath),
-- 								tostring(error_.message),
-- 								tostring(error_.stack)
-- 							)
-- 						)
-- 					)
-- 				end
-- 				if
-- 					Boolean.toJSBoolean(
-- 						Array.includes(error_.message, "Cannot find module") --[[ ROBLOX CHECK: check if 'error.message' is an Array ]]
-- 					)
-- 				then
-- 					if
-- 						Boolean.toJSBoolean(
-- 							Array.includes(error_.message, presetPath) --[[ ROBLOX CHECK: check if 'error.message' is an Array ]]
-- 						)
-- 					then
-- 						local preset = Resolver:findNodeModule(presetPath, { basedir = options.rootDir })
-- 						if Boolean.toJSBoolean(preset) then
-- 							error(
-- 								createConfigError(
-- 									('  Module %s should have "jest-preset.js" or "jest-preset.json" file at the root.'):format(
-- 										chalk.bold(presetPath)
-- 									)
-- 								)
-- 							)
-- 						end
-- 						error(createConfigError(("  Preset %s not found."):format(chalk.bold(presetPath))))
-- 					end
-- 					error(
-- 						createConfigError(
-- 							("  Missing dependency in %s:\n\n  %s\n  %s"):format(
-- 								chalk.bold(presetPath),
-- 								tostring(error_.message),
-- 								tostring(error_.stack)
-- 							)
-- 						)
-- 					)
-- 				end
-- 				error(
-- 					createConfigError(
-- 						("  An unknown error occurred in %s:\n\n  %s\n  %s"):format(
-- 							chalk.bold(presetPath),
-- 							tostring(error_.message),
-- 							tostring(error_.stack)
-- 						)
-- 					)
-- 				)
-- 			end)
-- 			if hasReturned then
-- 				return result
-- 			end
-- 		end
-- 		if Boolean.toJSBoolean(options.setupFiles) then
-- 			options.setupFiles =
-- 				Array.concat(Boolean.toJSBoolean(preset.setupFiles) and preset.setupFiles or {}, options.setupFiles) --[[ ROBLOX CHECK: check if 'preset.setupFiles || []' is an Array ]]
-- 		end
-- 		if Boolean.toJSBoolean(options.setupFilesAfterEnv) then
-- 			options.setupFilesAfterEnv = Array.concat(
-- 				Boolean.toJSBoolean(preset.setupFilesAfterEnv) and preset.setupFilesAfterEnv or {},
-- 				options.setupFilesAfterEnv
-- 			) --[[ ROBLOX CHECK: check if 'preset.setupFilesAfterEnv || []' is an Array ]]
-- 		end
-- 		if
-- 			Boolean.toJSBoolean(
-- 				if Boolean.toJSBoolean(options.modulePathIgnorePatterns)
-- 					then preset.modulePathIgnorePatterns
-- 					else options.modulePathIgnorePatterns
-- 			)
-- 		then
-- 			options.modulePathIgnorePatterns =
-- 				Array.concat(preset.modulePathIgnorePatterns, options.modulePathIgnorePatterns) --[[ ROBLOX CHECK: check if 'preset.modulePathIgnorePatterns' is an Array ]]
-- 		end
-- 		mergeModuleNameMapperWithPreset(options, preset)
-- 		mergeTransformWithPreset(options, preset)
-- 		mergeGlobalsWithPreset(options, preset)
-- 		return Object.assign({}, preset, options)
-- 	end)
-- end

-- local function setupBabelJest(options: Config_InitialOptionsWithRootDir)
-- 	local transform = options.transform
-- 	local babelJest
-- 	if Boolean.toJSBoolean(transform) then
-- 		local customJSPattern = Array.find(Object.keys(transform), function(pattern)
-- 			local regex = RegExp.new(pattern)
-- 			local ref = regex:test("a.js")
-- 			return Boolean.toJSBoolean(ref) and ref or regex:test("a.jsx")
-- 		end) --[[ ROBLOX CHECK: check if 'Object.keys(transform)' is an Array ]]
-- 		local customTSPattern = Array.find(Object.keys(transform), function(pattern)
-- 			local regex = RegExp.new(pattern)
-- 			local ref = regex:test("a.ts")
-- 			return Boolean.toJSBoolean(ref) and ref or regex:test("a.tsx")
-- 		end) --[[ ROBLOX CHECK: check if 'Object.keys(transform)' is an Array ]]
-- 		Array.forEach({ customJSPattern, customTSPattern }, function(pattern)
-- 			if Boolean.toJSBoolean(pattern) then
-- 				local customTransformer = transform[tostring(pattern)]
-- 				if Boolean.toJSBoolean(Array.isArray(customTransformer)) then
-- 					if
-- 						customTransformer[
-- 							1 --[[ ROBLOX adaptation: added 1 to array index ]]
-- 						] == "babel-jest"
-- 					then
-- 						babelJest = require_:resolve("babel-jest")
-- 						customTransformer[
-- 							1 --[[ ROBLOX adaptation: added 1 to array index ]]
-- 						] =
-- 							babelJest
-- 					elseif
-- 						Boolean.toJSBoolean(
-- 							Array.includes(
-- 								customTransformer[
-- 									1 --[[ ROBLOX adaptation: added 1 to array index ]]
-- 								],
-- 								"babel-jest"
-- 							) --[[ ROBLOX CHECK: check if 'customTransformer[0]' is an Array ]]
-- 						)
-- 					then
-- 						babelJest = customTransformer[
-- 							1 --[[ ROBLOX adaptation: added 1 to array index ]]
-- 						]
-- 					end
-- 				else
-- 					if customTransformer == "babel-jest" then
-- 						babelJest = require_:resolve("babel-jest")
-- 						transform[tostring(pattern)] = babelJest
-- 					elseif
-- 						Boolean.toJSBoolean(
-- 							Array.includes(customTransformer, "babel-jest") --[[ ROBLOX CHECK: check if 'customTransformer' is an Array ]]
-- 						)
-- 					then
-- 						babelJest = customTransformer
-- 					end
-- 				end
-- 			end
-- 		end)
-- 	else
-- 		babelJest = require_:resolve("babel-jest")
-- 		options.transform = { [tostring(DEFAULT_JS_PATTERN)] = babelJest }
-- 	end
-- end

-- local function normalizeCollectCoverageOnlyFrom(
-- 	options: Config_InitialOptionsWithRootDir & Required<Pick<Config_InitialOptions, "collectCoverageOnlyFrom">>,
-- 	key: any --[[ ROBLOX TODO: Unhandled node for type: TSTypeOperator ]] --[[ keyof Pick<Config.InitialOptions, 'collectCoverageOnlyFrom'> ]]
-- )
-- 	local initialCollectCoverageFrom = options[key]
-- 	local collectCoverageOnlyFrom: Array<Config_Glob> = if Boolean.toJSBoolean(
-- 			Array.isArray(initialCollectCoverageFrom)
-- 		)
-- 		then initialCollectCoverageFrom -- passed from argv
-- 		else Object.keys(initialCollectCoverageFrom) -- passed from options
-- 	return Array.reduce(collectCoverageOnlyFrom, function(map, filePath)
-- 		filePath = path:resolve(options.rootDir, replaceRootDirInPath(options.rootDir, filePath))
-- 		map[tostring(filePath)] = true
-- 		return map
-- 	end, Object.create(nil)) --[[ ROBLOX CHECK: check if 'collectCoverageOnlyFrom' is an Array ]]
-- end

-- local function normalizeCollectCoverageFrom(
-- 	options: Config_InitialOptions & Required<Pick<Config_InitialOptions, "collectCoverageFrom">>,
-- 	key: any --[[ ROBLOX TODO: Unhandled node for type: TSTypeOperator ]] --[[ keyof Pick<Config.InitialOptions, 'collectCoverageFrom'> ]]
-- )
-- 	local initialCollectCoverageFrom = options[key]
-- 	local value: Array<Config_Glob> | nil
-- 	if not Boolean.toJSBoolean(initialCollectCoverageFrom) then
-- 		value = {}
-- 	end
-- 	if not Boolean.toJSBoolean(Array.isArray(initialCollectCoverageFrom)) then
-- 		do --[[ ROBLOX COMMENT: try-catch block conversion ]]
-- 			local ok, result, hasReturned = xpcall(function()
-- 				value = JSON:parse(initialCollectCoverageFrom)
-- 			end, function() end)
-- 			if hasReturned then
-- 				return result
-- 			end
-- 		end
-- 		if
-- 			Boolean.toJSBoolean(
-- 				if Boolean.toJSBoolean(options[key])
-- 					then not Boolean.toJSBoolean(Array.isArray(value))
-- 					else options[key]
-- 			)
-- 		then
-- 			value = { initialCollectCoverageFrom }
-- 		end
-- 	else
-- 		value = initialCollectCoverageFrom
-- 	end
-- 	if Boolean.toJSBoolean(value) then
-- 		value = Array.map(value, function(filePath)
-- 			return filePath:replace(
-- 				error("not implemented"), --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /^(!?)(<rootDir>\/)(.*)/ ]]
-- 				"$1$3"
-- 			)
-- 		end) --[[ ROBLOX CHECK: check if 'value' is an Array ]]
-- 	end
-- 	return value
-- end

-- local function normalizeUnmockedModulePathPatterns(
-- 	options: Config_InitialOptionsWithRootDir,
-- 	key: any --[[ ROBLOX TODO: Unhandled node for type: TSTypeOperator ]] --[[ keyof Pick<Config.InitialOptions, 'coveragePathIgnorePatterns' | 'modulePathIgnorePatterns' | 'testPathIgnorePatterns' | 'transformIgnorePatterns' | 'watchPathIgnorePatterns' | 'unmockedModulePathPatterns'> ]]
-- )
-- 	-- _replaceRootDirTags is specifically well-suited for substituting
-- 	-- <rootDir> in paths (it deals with properly interpreting relative path
-- 	-- separators, etc).
-- 	--
-- 	-- For patterns, direct global substitution is far more ideal, so we
-- 	-- special case substitutions for patterns here.
-- 	return Array.map(options[key] :: any, function(pattern)
-- 		return replacePathSepForRegex(pattern:replace(RegExp("<rootDir>", "g"), options.rootDir))
-- 	end)
-- end
-- ROBLOX deviation END

local function normalizePreprocessor(options: Config_InitialOptionsWithRootDir): Config_InitialOptionsWithRootDir
	-- ROBLOX deviation START: not supported
	-- 	if Boolean.toJSBoolean(options.scriptPreprocessor) and Boolean.toJSBoolean(options.transform) then
	-- 		error(
	-- 			createConfigError(
	-- 				([[  Options: %s and %s cannot be used together.
	--   Please change your configuration to only use %s.]]):format(
	-- 					chalk.bold("scriptPreprocessor"),
	-- 					chalk.bold("transform"),
	-- 					chalk.bold("transform")
	-- 				)
	-- 			)
	-- 		)
	-- 	end

	-- 	if
	-- 		Boolean.toJSBoolean(options.preprocessorIgnorePatterns)
	-- 		and Boolean.toJSBoolean(options.transformIgnorePatterns)
	-- 	then
	-- 		error(
	-- 			createConfigError(
	-- 				([[  Options %s and %s cannot be used together.
	--   Please change your configuration to only use %s.]]):format(
	-- 					chalk.bold("preprocessorIgnorePatterns"),
	-- 					chalk.bold("transformIgnorePatterns"),
	-- 					chalk.bold("transformIgnorePatterns")
	-- 				)
	-- 			)
	-- 		)
	-- 	end

	-- 	if Boolean.toJSBoolean(options.scriptPreprocessor) then
	-- 		options.transform = { [".*"] = options.scriptPreprocessor }
	-- 	end

	-- 	if Boolean.toJSBoolean(options.preprocessorIgnorePatterns) then
	-- 		options.transformIgnorePatterns = options.preprocessorIgnorePatterns
	-- 	end

	-- 	options.scriptPreprocessor = nil
	-- 	options.preprocessorIgnorePatterns = nil
	-- ROBLOX deviation END
	return options
end

local function normalizeMissingOptions(
	options: Config_InitialOptionsWithRootDir,
	-- ROBLOX deviation START: using ModuleScript instead of Config_Path
	configPath: ModuleScript | nil,
	-- ROBLOX deviation END
	projectIndex: number
): Config_InitialOptionsWithRootDir
	if not Boolean.toJSBoolean(options.id) then
		options.id = getRelativePath((options.rootDir :: any) :: Instance, nil)
		-- ROBLOX deviation START: createHash not supported
		-- 	options.name = createHash("md5")
		-- 		:update(options.rootDir)
		-- 		-- In case we load config from some path that has the same root dir
		-- 		:update(
		-- 			Boolean.toJSBoolean(configPath) and configPath or ""
		-- 		)
		-- 		:update(tostring(projectIndex))
		-- 		:digest("hex")
		-- ROBLOX deviation END
	end

	if options.setupFiles == nil then
		options.setupFiles = {}
	end
	return options
end
local function normalizeRootDir(options: Config_InitialOptions): Config_InitialOptionsWithRootDir
	-- Assert that there *is* a rootDir
	if not Boolean.toJSBoolean(options.rootDir) then
		error(createConfigError(("  Configuration option %s must be specified."):format(chalk.bold("rootDir"))))
	end
	-- ROBLOX deviation START: not necessary as rootDir is an Instance
	-- options.rootDir = path:normalize(options.rootDir)

	-- xpcall(function()
	-- 	-- try to resolve windows short paths, ignoring errors (permission errors, mostly)
	-- 	options.rootDir = tryRealpath(options.rootDir)
	-- end, function() end)
	-- ROBLOX deviation END

	verifyDirectoryExists(options.rootDir, "rootDir")

	return Object.assign({}, options, { rootDir = options.rootDir })
end

local function normalizeReporters(options: Config_InitialOptionsWithRootDir)
	-- ROBLOX deviation START: not supported
	-- local reporters = options.reporters
	-- if not Boolean.toJSBoolean(reporters) or not Array.isArray(reporters) then
	-- 	return options
	-- end

	-- validateReporters(reporters)
	-- options.reporters = Array.map(reporters, function(reporterConfig)
	-- 	local normalizedReporterConfig: Config_ReporterConfig = if typeof(reporterConfig) == "string"
	-- 		then -- if reporter config is a string, we wrap it in an array
	-- 			-- and pass an empty object for options argument, to normalize
	-- 			-- the shape.
	-- 			{ reporterConfig, {} }
	-- 		else reporterConfig
	-- 	local reporterPath = replaceRootDirInPath(options.rootDir, normalizedReporterConfig[1])

	-- 	if reporterPath ~= DEFAULT_REPORTER_LABEL then
	-- 		local reporter = Resolver:findNodeModule(reporterPath, { basedir = options.rootDir })
	-- 		if not Boolean.toJSBoolean(reporter) then
	-- 			error(
	-- 				Resolver.ModuleNotFoundError.new(
	-- 					"Could not resolve a module for a custom reporter.\n"
	-- 						.. ("  Module name: %s"):format(tostring(reporterPath))
	-- 				)
	-- 			)
	-- 		end
	-- 		normalizedReporterConfig[1] = reporter
	-- 	end
	-- 	return normalizedReporterConfig
	-- end)
	-- ROBLOX deviation END

	return options
end

local function buildTestPathPattern(argv: Config_Argv): string
	local patterns = {}
	if argv._ ~= nil then
		patterns = Array.concat(patterns, argv._)
	end
	if argv.testPathPattern ~= nil then
		patterns = Array.concat(patterns, argv.testPathPattern)
	end

	local function replacePosixSep(pattern: string | number)
		-- yargs coerces positional args into numbers
		local patternAsString = tostring(pattern)
		-- ROBLOX deviation START: no special handling for Windows
		return patternAsString
		-- if path.sep == "/" then
		-- 	return patternAsString
		-- end
		-- return patternAsString:gsub("",
		-- 	error("not implemented"), --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /\//g ]]
		-- 	"\\\\"
		-- )
		-- ROBLOX deviation END
	end

	local testPathPattern = Array.join(Array.map(patterns, replacePosixSep), "|")
	if validatePattern(testPathPattern) then
		return testPathPattern
	else
		showTestPathPatternError(testPathPattern)
		return ""
	end
end

function showTestPathPatternError(testPathPattern: string)
	clearLine(process.stdout)

	-- eslint-disable-next-line no-console
	console.log(
		chalk.red(
			("  Invalid testPattern %s supplied. "):format(tostring(testPathPattern)) .. "Running all tests instead."
		)
	)
end

-- ROBLOX deviation START: no esm modules in Luau
-- local function validateExtensionsToTreatAsEsm(
-- 	extensionsToTreatAsEsm: typeof((({} :: any) :: Config_InitialOptions).extensionsToTreatAsEsm)
-- )
-- 	if not Boolean.toJSBoolean(extensionsToTreatAsEsm) or extensionsToTreatAsEsm.length == 0 then
-- 		return
-- 	end
-- 	local function printConfig(opts: Array<string>)
-- 		local string_ = Array.join(
-- 			Array.map(opts, function(ext)
-- 				return ("'%s'"):format(tostring(ext))
-- 			end), --[[ ROBLOX CHECK: check if 'opts' is an Array ]]
-- 			", "
-- 		)
-- 		return chalk.bold(("extensionsToTreatAsEsm: [%s]"):format(tostring(string_)))
-- 	end
-- 	local extensionWithoutDot = Array.some(extensionsToTreatAsEsm, function(ext)
-- 		return not Boolean.toJSBoolean(ext:startsWith("."))
-- 	end) --[[ ROBLOX CHECK: check if 'extensionsToTreatAsEsm' is an Array ]]
-- 	if Boolean.toJSBoolean(extensionWithoutDot) then
-- 		error(createConfigError(([[  Option: %s includes a string that does not start with a period (%s).
--   Please change your configuration to %s.]]):format(
-- 			tostring(printConfig(extensionsToTreatAsEsm)),
-- 			chalk.bold("."),
-- 			tostring(printConfig(
-- 				Array.map(extensionsToTreatAsEsm, function(ext)
-- 					return if Boolean.toJSBoolean(ext:startsWith(".")) then ext else (".%s"):format(tostring(ext))
-- 				end) --[[ ROBLOX CHECK: check if 'extensionsToTreatAsEsm' is an Array ]]
-- 			))
-- 		)))
-- 	end
-- 	if
-- 		Boolean.toJSBoolean(
-- 			Array.includes(extensionsToTreatAsEsm, ".js") --[[ ROBLOX CHECK: check if 'extensionsToTreatAsEsm' is an Array ]]
-- 		)
-- 	then
-- 		error(
-- 			createConfigError(
-- 				("  Option: %s includes %s which is always inferred based on %s in its nearest %s."):format(
-- 					tostring(printConfig(extensionsToTreatAsEsm)),
-- 					chalk.bold("'.js'"),
-- 					chalk.bold("type"),
-- 					chalk.bold("package.json")
-- 				)
-- 			)
-- 		)
-- 	end
-- 	if
-- 		Boolean.toJSBoolean(
-- 			Array.includes(extensionsToTreatAsEsm, ".cjs") --[[ ROBLOX CHECK: check if 'extensionsToTreatAsEsm' is an Array ]]
-- 		)
-- 	then
-- 		error(
-- 			createConfigError(
-- 				("  Option: %s includes %s which is always treated as CommonJS."):format(
-- 					tostring(printConfig(extensionsToTreatAsEsm)),
-- 					chalk.bold("'.cjs'")
-- 				)
-- 			)
-- 		)
-- 	end
-- 	if
-- 		Boolean.toJSBoolean(
-- 			Array.includes(extensionsToTreatAsEsm, ".mjs") --[[ ROBLOX CHECK: check if 'extensionsToTreatAsEsm' is an Array ]]
-- 		)
-- 	then
-- 		error(
-- 			createConfigError(
-- 				("  Option: %s includes %s which is always treated as an ECMAScript Module."):format(
-- 					tostring(printConfig(extensionsToTreatAsEsm)),
-- 					chalk.bold("'.mjs'")
-- 				)
-- 			)
-- 		)
-- 	end
-- end
-- ROBLOX deviation END

local function normalize(
	initialOptions: Config_InitialOptions,
	argv: Config_Argv,
	-- ROBLOX deviation START: using ModuleScript instead of Config_Path
	configPath: (ModuleScript | nil)?,
	-- ROBLOX deviation END
	projectIndex_: number?
): Promise<{ hasDeprecationWarnings: boolean, options: AllOptions }>
	local projectIndex = if projectIndex_ ~= nil then projectIndex_ else math.huge
	return Promise.resolve():andThen(function()
		-- ROBLOX deviation START: no deprecation warnings support
		-- local hasDeprecationWarnings = validate(initialOptions, {
		-- 	comment = DOCUMENTATION_NOTE,
		-- 	deprecatedConfig = DEPRECATED_CONFIG,
		-- 	exampleConfig = VALID_CONFIG,
		-- 	recursiveDenylist = {
		-- 		"collectCoverageOnlyFrom", -- 'coverageThreshold' allows to use 'global' and glob strings on the same
		-- 		-- level, there's currently no way we can deal with such config
		-- 		"coverageThreshold",
		-- 		"globals",
		-- 		"moduleNameMapper",
		-- 		"testEnvironmentOptions",
		-- 		"transform",
		-- 	},
		-- }).hasDeprecationWarnings
		local hasDeprecationWarnings = false
		-- ROBLOX deviation END

		local options = normalizePreprocessor(
			normalizeReporters(
				normalizeMissingOptions(normalizeRootDir(setFromArgv(initialOptions, argv)), configPath, projectIndex)
			)
		)

		-- ROBLOX deviation START: not supported
		-- if Boolean.toJSBoolean(options.preset) then
		-- 	options = setupPreset(options, options.preset):expect()
		-- end

		-- 		if not Boolean.toJSBoolean(options.setupFilesAfterEnv) then
		-- 			options.setupFilesAfterEnv = {}
		-- 		end

		-- 		if Boolean.toJSBoolean(options.setupTestFrameworkScriptFile) and #options.setupFilesAfterEnv > 0 then
		-- 			error(
		-- 				createConfigError(
		-- 					([[  Options: %s and %s cannot be used together.
		--   Please change your configuration to only use %s.]]):format(
		-- 						chalk.bold("setupTestFrameworkScriptFile"),
		-- 						chalk.bold("setupFilesAfterEnv"),
		-- 						chalk.bold("setupFilesAfterEnv")
		-- 					)
		-- 				)
		-- 			)
		-- 		end

		-- 		if Boolean.toJSBoolean(options.setupTestFrameworkScriptFile) then
		-- 			table.insert(options.setupFilesAfterEnv, options.setupTestFrameworkScriptFile) --[[ ROBLOX CHECK: check if 'options.setupFilesAfterEnv' is an Array ]]
		-- 		end
		-- ROBLOX deviation END

		-- ROBLOX deviation START: no need to resolve as this is a ModuleScript
		options.testEnvironment = options.testEnvironment or DEFAULT_CONFIG.testEnvironment
		-- resolveTestEnvironment({
		-- 	requireResolveFunction = require_.resolve,
		-- 	rootDir = options.rootDir,
		-- 	testEnvironment = Boolean.toJSBoolean(options.testEnvironment) and options.testEnvironment
		-- 		or require_:resolve(DEFAULT_CONFIG.testEnvironment),
		-- })
		-- ROBLOX deviation END

		if options.roots == nil and options.testPathDirs ~= nil then
			options.roots = options.testPathDirs
			options.testPathDirs = nil
		end

		if options.roots == nil then
			options.roots = { options.rootDir }
		end

		-- ROBLOX deviation START: no need to resolve as this is a ModuleScript
		-- if
		-- 	not Boolean.toJSBoolean(options.testRunner)
		-- 	or options.testRunner == "circus"
		-- 	or options.testRunner == "jest-circus"
		-- then
		-- 	options.testRunner = require_:resolve("jest-circus/runner")
		-- elseif options.testRunner == "jasmine2" then
		-- 	options.testRunner = require_:resolve("jest-jasmine2")
		-- end
		-- ROBLOX deviation END

		-- ROBLOX deviation START: not supported
		-- if not Boolean.toJSBoolean(options.coverageDirectory) then
		-- 	options.coverageDirectory = path:resolve(options.rootDir, "coverage")
		-- end

		-- setupBabelJest(options)
		-- ROBLOX deviation END
		-- TODO: Type this properly
		local newOptions = (Object.assign({}, DEFAULT_CONFIG) :: unknown) :: AllOptions

		-- ROBLOX deviation START: not supported
		-- if Boolean.toJSBoolean(options.resolver) then
		-- 	newOptions.resolver =
		-- 		resolve(nil, { filePath = options.resolver, key = "resolver", rootDir = options.rootDir })
		-- end

		-- validateExtensionsToTreatAsEsm(options.extensionsToTreatAsEsm)

		-- if options.watchman == nil then
		-- 	options.watchman = DEFAULT_CONFIG.watchman
		-- end
		-- ROBLOX deviation END

		local optionKeys =
			Object.keys(options) :: Array<string --[[ ROBLOX TODO: Unhandled node for type: TSTypeOperator ]] --[[ keyof Config.InitialOptions ]]>

		Array.reduce(optionKeys, function(
			newOptions,
			key: string --[[ ROBLOX TODO: Unhandled node for type: TSTypeOperator ]] --[[ keyof Config.InitialOptions ]]
		)
			-- The resolver has been resolved separately; skip it
			if key == "resolver" then
				return newOptions
			end

			-- This is cheating, because it claims that all keys of InitialOptions are Required.
			-- We only really know it's Required for oldOptions[key], not for oldOptions.someOtherKey,
			-- so oldOptions[key] is the only way it should be used.
			-- ROBLOX deviation START: no Required and Pick helpers
			local oldOptions = options :: Config_InitialOptions
			-- & Required<Pick<Config_InitialOptions, typeof(key)>>
			-- ROBLOX deviation END
			local value: any
			repeat --[[ ROBLOX comment: switch statement conversion ]]
				-- ROBLOX deviation START: not supported
				if false then
					-- if key == "collectCoverageOnlyFrom" then
					-- 	value = normalizeCollectCoverageOnlyFrom(oldOptions, key)
					-- 	break
					-- ROBLOX deviation END
					-- ROBLOX deviation START: no need to resolve
				elseif key == "setupFiles" or key == "setupFilesAfterEnv" or key == "snapshotSerializers" then
					do
						local option = oldOptions[key]
						if option ~= nil then
							value = Array.map(option, function(path)
								return if path == "<rootDir>" then options.rootDir else path
							end)
						end
						-- value = if Boolean.toJSBoolean(option)
						-- 	then Array.map(option, function(filePath)
						-- 		return resolve(
						-- 			newOptions.resolver,
						-- 			{ filePath = filePath, key = key, rootDir = options.rootDir }
						-- 		)
						-- 	end)
						-- 	else option
					end
					break
				elseif key == "modulePaths" or key == "roots" then
					do
						local option = oldOptions[key]
						if option ~= nil then
							value = Array.map(option, function(path)
								return if path == "<rootDir>" then options.rootDir else path
							end)
						end
						-- 	value = if Boolean.toJSBoolean(option)
						-- 		then Array.map(option, function(filePath)
						-- 			return path:resolve(options.rootDir, replaceRootDirInPath(options.rootDir, filePath))
						-- 		end)
						-- 		else option
					end
					break
					-- ROBLOX deviation END
					-- ROBLOX deviation START: not supported
					-- elseif key == "collectCoverageFrom" then
					-- 	value = normalizeCollectCoverageFrom(oldOptions, key)
					-- 	break
					-- elseif key == "cacheDirectory" or key == "coverageDirectory" then
					-- 	do
					-- 		local option = oldOptions[key]
					-- 		value = if Boolean.toJSBoolean(option)
					-- 			then path:resolve(options.rootDir, replaceRootDirInPath(options.rootDir, option))
					-- 			else option
					-- 	end
					-- 	break
					-- ROBLOX deviation END
					-- ROBLOX deviation START: no need to resolve
					-- elseif
					-- 	key == "dependencyExtractor"
					-- 	or key == "globalSetup"
					-- 	or key == "globalTeardown"
					-- 	or key == "moduleLoader"
					-- 	or key == "snapshotResolver"
					-- 	or key == "testResultsProcessor"
					-- 	or key == "testRunner"
					-- 	or key == "filter"
					-- then
					-- 	do
					-- 		local option = oldOptions[key]
					-- 		value = if Boolean.toJSBoolean(option)
					-- 			then resolve(newOptions.resolver, { filePath = option, key = key, rootDir = options.rootDir })
					-- 			else option
					-- 	end
					-- 	break
					-- elseif key == "runner" then
					-- 	do
					-- 		local option = oldOptions[key]
					-- 		value = if Boolean.toJSBoolean(option)
					-- 			then resolveRunner(newOptions.resolver, {
					-- 				filePath = option,
					-- 				requireResolveFunction = require_.resolve,
					-- 				rootDir = options.rootDir,
					-- 			})
					-- 			else option
					-- 	end
					-- 	break
					-- ROBLOX deviation END
					-- ROBLOX deviation START: not supported
					-- elseif key == "prettierPath" then
					-- 	do
					-- 		-- We only want this to throw if "prettierPath" is explicitly passed
					-- 		-- from config or CLI, and the requested path isn't found. Otherwise we
					-- 		-- set it to null and throw an error lazily when it is used.
					-- 		local option = oldOptions[key]
					-- 		value = if Boolean.toJSBoolean(option)
					-- 			then resolve(newOptions.resolver, {
					-- 				filePath = option,
					-- 				key = key,
					-- 				optional = option == DEFAULT_CONFIG[key],
					-- 				rootDir = options.rootDir,
					-- 			})
					-- 			else option
					-- 	end
					-- 	break
					-- elseif key == "moduleNameMapper" then
					-- 	local moduleNameMapper = oldOptions[key]
					-- 	value = if Boolean.toJSBoolean(moduleNameMapper)
					-- 		then Array.map(Object.keys(moduleNameMapper), function(regex)
					-- 			local item = if Boolean.toJSBoolean(moduleNameMapper)
					-- 				then moduleNameMapper[tostring(regex)]
					-- 				else moduleNameMapper
					-- 			return if Boolean.toJSBoolean(item)
					-- 				then { regex, _replaceRootDirTags(options.rootDir, item) }
					-- 				else item
					-- 		end) --[[ ROBLOX CHECK: check if 'Object.keys(moduleNameMapper)' is an Array ]]
					-- 		else moduleNameMapper
					-- 	break
					-- elseif key == "transform" then
					-- 	local transform = oldOptions[key]
					-- 	value = if Boolean.toJSBoolean(transform)
					-- 		then
					-- 			Array.map(Object.keys(transform), function(regex)
					-- 				local transformElement = transform[tostring(regex)]
					-- 				return {
					-- 					regex,
					-- 					resolve(newOptions.resolver, {
					-- 						filePath = if Boolean.toJSBoolean(Array.isArray(transformElement))
					-- 							then
					-- 								transformElement[
					-- 									1 --[[ ROBLOX adaptation: added 1 to array index ]]
					-- 								]
					-- 							else transformElement,
					-- 						key = key,
					-- 						rootDir = options.rootDir,
					-- 					}),
					-- 					if Boolean.toJSBoolean(Array.isArray(transformElement))
					-- 						then
					-- 							transformElement[
					-- 								2 --[[ ROBLOX adaptation: added 1 to array index ]]
					-- 							]
					-- 						else {},
					-- 				}
					-- 			end) --[[ ROBLOX CHECK: check if 'Object.keys(transform)' is an Array ]]
					-- 		else transform
					-- 	break
					-- ROBLOX deviation END
				elseif
					key == "testPathIgnorePatterns"
					-- or key == "coveragePathIgnorePatterns"
					-- or key == "modulePathIgnorePatterns"
					-- or key == "transformIgnorePatterns"
					-- or key == "watchPathIgnorePatterns"
					-- or key == "unmockedModulePathPatterns"
				then
					-- ROBLOX deviation START: subbing rootDir not supported
					value = oldOptions[key]
					-- ROBLOX deviation END
					break
					-- ROBLOX deviation START: no need to resolve
					-- elseif key == "haste" then
					-- 	value = Object.assign({}, oldOptions[key])
					-- 	if
					-- 		value.hasteImplModulePath ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
					-- 	then
					-- 		local resolvedHasteImpl = resolve(newOptions.resolver, {
					-- 			filePath = replaceRootDirInPath(options.rootDir, value.hasteImplModulePath),
					-- 			key = "haste.hasteImplModulePath",
					-- 			rootDir = options.rootDir,
					-- 		})
					-- 		value.hasteImplModulePath = Boolean.toJSBoolean(resolvedHasteImpl) and resolvedHasteImpl or nil
					-- 	end
					-- 	break
					-- ROBLOX deviation END
				elseif key == "projects" then
					value = Array.reduce(
						Array.map(Boolean.toJSBoolean(oldOptions[key]) and oldOptions[key] or {}, function(project)
							-- ROBLOX deviation START: project is an Instance
							return project
							-- return if typeof(project) == "string"
							-- 	then _replaceRootDirTags(options.rootDir, project)
							-- 	else project
							-- ROBLOX deviation END
						end),
						function(projects, project)
							-- Project can be specified as globs. If a glob matches any files,
							-- We expand it to these paths. If not, we keep the original path
							-- for the future resolution.
							-- ROBLOX deviation START: project is an Instance
							local globMatches = {}
							-- local globMatches = if typeof(project) == "string" then glob(project) else {}
							return Array.concat(projects, if #globMatches > 0 then globMatches else { project })
							-- ROBLOX deviation END
						end,
						{}
					)
					break
				elseif key == "moduleDirectories" or key == "testMatch" then
					do
						-- ROBLOX deviation START: _replaceRootDirTags not supported
						local replacedRootDirTags = oldOptions[key]
						-- local replacedRootDirTags = _replaceRootDirTags(escapeGlobCharacters(options.rootDir), oldOptions[key])
						-- ROBLOX deviation END
						if replacedRootDirTags ~= nil then
							value = if Array.isArray(replacedRootDirTags)
								then Array.map(replacedRootDirTags, replacePathSepForGlob)
								else replacePathSepForGlob(replacedRootDirTags)
						else
							value = replacedRootDirTags
						end
					end
					break
				elseif key == "testRegex" then
					do
						local option = oldOptions[key]
						value = if option ~= nil and Boolean.toJSBoolean(option)
							then Array.map(if Array.isArray(option) then option else { option }, replacePathSepForRegex)
							else {}
					end
					break
					-- ROBLOX deviation START: not supported
					-- elseif key == "moduleFileExtensions" then
					-- 	do
					-- 		value = oldOptions[key]
					-- 		if
					-- 			Boolean.toJSBoolean((function()
					-- 				local ref = Array.isArray(value)
					-- 				local ref = if Boolean.toJSBoolean(ref)
					-- 					then options.runner == nil or options.runner == DEFAULT_CONFIG.runner
					-- 					else ref
					-- 				return if Boolean.toJSBoolean(ref)
					-- 					then -- Only require 'js' for the default jest-runner
					-- 						-- Only require 'js' for the default jest-runner
					-- 						not Boolean.toJSBoolean(
					-- 							Array.includes(value, "js") --[[ ROBLOX CHECK: check if 'value' is an Array ]]
					-- 						)
					-- 					else ref
					-- 			end)())
					-- 		then
					-- 			local errorMessage = "  moduleFileExtensions must include 'js':\n"
					-- 				.. "  but instead received:\n"
					-- 				.. ("    %s"):format(tostring(chalk.bold:red(JSON:stringify(value)))) -- If `js` is not included, any dependency Jest itself injects into
					-- 			-- the environment, like jasmine or sourcemap-support, will need to
					-- 			-- `require` its modules with a file extension. This is not plausible
					-- 			-- in the long run, so it's way easier to just fail hard early.
					-- 			-- We might consider throwing if `json` is missing as well, as it's a
					-- 			-- fair assumption from modules that they can do
					-- 			-- `require('some-package/package') without the trailing `.json` as it
					-- 			-- works in Node normally.
					-- 			error(
					-- 				createConfigError(
					-- 					tostring(errorMessage) .. "\n  Please change your configuration to include 'js'."
					-- 				)
					-- 			)
					-- 		end
					-- 		break
					-- 	end
					-- ROBLOX deviation END
				elseif key == "bail" then
					do
						local bail = oldOptions[key]
						if typeof(bail) == "boolean" then
							value = if bail then 1 else 0
						elseif typeof(bail) == "string" then
							value = 1
							-- If Jest is invoked as `jest --bail someTestPattern` then need to
							-- move the pattern from the `bail` configuration and into `argv._`
							-- to be processed as an extra parameter
							table.insert(argv._, bail)
						else
							value = oldOptions[key]
						end
						break
					end
				elseif key == "displayName" then
					do
						local displayName = oldOptions[key] :: Config_DisplayName
						--[[*
							* Ensuring that displayName shape is correct here so that the
							* reporters can trust the shape of the data
						]]
						if typeof(displayName) == "table" then
							local name, color = displayName.name, displayName.color
							if
								not Boolean.toJSBoolean(name)
								or not Boolean.toJSBoolean(color)
								or typeof(name) ~= "string"
								or typeof(color) ~= "string"
							then
								local errorMessage = ('  Option "%s" must be of type:\n\n'):format(
									chalk.bold("displayName")
								) .. "  {\n" .. "    name: string;\n" .. "    color: string;\n" .. "  }\n"
								error(createConfigError(errorMessage))
							end
							value = oldOptions[key]
						else
							value = {
								color = getDisplayNameColor(options.runner),
								name = displayName,
							}
						end
						break
					end
				elseif key == "testTimeout" then
					do
						if oldOptions[key] < 0 then
							error(
								createConfigError(
									('  Option "%s" must be a natural number.'):format(chalk.bold("testTimeout"))
								)
							)
						end
						value = oldOptions[key]
						break
					end
				elseif
					key == "automock"
					or key == "cache"
					or key == "changedSince"
					or key == "changedFilesWithAncestor"
					or key == "clearMocks"
					or key == "collectCoverage"
					or key == "coverageProvider"
					or key == "coverageReporters"
					or key == "coverageThreshold"
					or key == "detectLeaks"
					or key == "detectOpenHandles"
					or key == "errorOnDeprecated"
					or key == "expand"
					or key == "extensionsToTreatAsEsm"
					or key == "extraGlobals"
					or key == "globals"
					or key == "findRelatedTests"
					or key == "forceCoverageMatch"
					or key == "forceExit"
					or key == "injectGlobals"
					or key == "lastCommit"
					or key == "listTests"
					or key == "logHeapUsage"
					or key == "maxConcurrency"
					or key == "id"
					or key == "noStackTrace"
					or key == "notify"
					or key == "notifyMode"
					or key == "onlyChanged"
					or key == "onlyFailures"
					or key == "outputFile"
					or key == "passWithNoTests"
					or key == "replname"
					or key == "reporters"
					or key == "resetMocks"
					or key == "resetModules"
					or key == "restoreMocks"
					or key == "rootDir"
					or key == "runTestsByPath"
					or key == "silent"
					or key == "skipFilter"
					or key == "skipNodeResolution"
					or key == "slowTestThreshold"
					or key == "snapshotFormat"
					or key == "testEnvironment"
					or key == "testEnvironmentOptions"
					or key == "testFailureExitCode"
					or key == "testLocationInResults"
					or key == "testNamePattern"
					or key == "testURL"
					or key == "timers"
					or key == "useStderr"
					or key == "verbose"
					or key == "watch"
					or key == "watchAll"
					or key == "watchman"
				then
					value = oldOptions[key]
					break
					-- ROBLOX deviation START: not supported
					-- elseif key == "watchPlugins" then
					-- 	value = Array.map(
					-- 		Boolean.toJSBoolean(oldOptions[key]) and oldOptions[key] or {},
					-- 		function(watchPlugin)
					-- 			if typeof(watchPlugin) == "string" then
					-- 				return {
					-- 					config = {},
					-- 					path = resolveWatchPlugin(newOptions.resolver, {
					-- 						filePath = watchPlugin,
					-- 						requireResolveFunction = require_.resolve,
					-- 						rootDir = options.rootDir,
					-- 					}),
					-- 				}
					-- 			else
					-- 				return {
					-- 					config = Boolean.toJSBoolean(watchPlugin[2]) and watchPlugin[2] or {},
					-- 					path = resolveWatchPlugin(newOptions.resolver, {
					-- 						filePath = watchPlugin[1],
					-- 						requireResolveFunction = require_.resolve,
					-- 						rootDir = options.rootDir,
					-- 					}),
					-- 				}
					-- 			end
					-- 		end
					-- 	)
					-- 	break
					-- ROBLOX deviation END
				end
			until true
			-- @ts-expect-error: automock is missing in GlobalConfig, so what
			newOptions[key] = value
			return newOptions
		end, newOptions)
		-- ROBLOX deviation START: not supported
		-- if
		-- 	Boolean.toJSBoolean(options.watchman)
		-- 	and typeof(options.haste) == "table"
		-- 	and options.haste.enableSymlinks
		-- then
		-- 	error(
		-- 		ValidationError.new(
		-- 			"Validation Error",
		-- 			"haste.enableSymlinks is incompatible with watchman",
		-- 			"Either set haste.enableSymlinks to false or do not use watchman"
		-- 		)
		-- 	)
		-- end
		-- ROBLOX deviation END

		Array.forEach(newOptions.roots, function(root, i)
			verifyDirectoryExists(root, ("roots[%s]"):format(tostring(i)))
		end)

		-- ROBLOX deviation START: not supported
		-- xpcall(function()
		-- 	-- try to resolve windows short paths, ignoring errors (permission errors, mostly)
		-- 	newOptions.cwd = tryRealpath(process:cwd())
		-- end, function() end)

		-- newOptions.testSequencer = resolveSequencer(newOptions.resolver, {
		-- 	filePath = Boolean.toJSBoolean(options.testSequencer) and options.testSequencer or require_:resolve(
		-- 		DEFAULT_CONFIG.testSequencer
		-- 	),
		-- 	requireResolveFunction = require_.resolve,
		-- 	rootDir = options.rootDir,
		-- })
		-- ROBLOX deviation END

		-- ROBLOX deviation START: no need to resolve
		-- if newOptions.runner == DEFAULT_CONFIG.runner then
		-- 	newOptions.runner = require_:resolve(newOptions.runner)
		-- end
		-- ROBLOX deviation END

		-- ROBLOX deviation START: not supported
		-- local ref = if typeof(argv._) == "table" then argv._.map else nil
		-- newOptions.nonFlagArgs = if ref ~= nil
		-- 	then ref(function(arg)
		-- 		return ("%s"):format(tostring(arg))
		-- 	end)
		-- 	else nil
		-- ROBLOX deviation END
		newOptions.testPathPattern = buildTestPathPattern(argv)
		newOptions.json = Boolean.toJSBoolean(argv.json)
		newOptions.testFailureExitCode = tonumber((newOptions.testFailureExitCode :: unknown) :: string, 10) or 0
		-- ROBLOX deviation START: not supported
		-- if
		-- 	Boolean.toJSBoolean((function()
		-- 		local ref = Boolean.toJSBoolean(newOptions.lastCommit) and newOptions.lastCommit
		-- 			or newOptions.changedFilesWithAncestor
		-- 		return Boolean.toJSBoolean(ref) and ref or newOptions.changedSince
		-- 	end)())
		-- then
		-- 	newOptions.onlyChanged = true
		-- end

		-- if argv.all then
		-- 	newOptions.onlyChanged = false
		-- 	newOptions.onlyFailures = false
		-- elseif Boolean.toJSBoolean(newOptions.testPathPattern) then
		-- 	-- When passing a test path pattern we don't want to only monitor changed
		-- 	-- files unless `--watch` is also passed.
		-- 	newOptions.onlyChanged = newOptions.watch
		-- end

		-- if not newOptions.onlyChanged then
		-- 	newOptions.onlyChanged = false
		-- end

		-- if not Boolean.toJSBoolean(newOptions.lastCommit) then
		-- 	newOptions.lastCommit = false
		-- end

		-- if not Boolean.toJSBoolean(newOptions.onlyFailures) then
		-- 	newOptions.onlyFailures = false
		-- end

		-- if not Boolean.toJSBoolean(newOptions.watchAll) then
		-- 	newOptions.watchAll = false
		-- end

		-- -- as unknown since it can happen. We really need to fix the types here
		-- if newOptions.moduleNameMapper == DEFAULT_CONFIG.moduleNameMapper :: unknown then
		-- 	newOptions.moduleNameMapper = {}
		-- end
		-- ROBLOX deviation END

		newOptions.updateSnapshot = if Boolean.toJSBoolean(argv.ci) and not argv.updateSnapshot
			then "none"
			else if argv.updateSnapshot then "all" else "new"

		newOptions.maxConcurrency = tonumber((newOptions.maxConcurrency :: unknown) :: string, 10) or 0
		newOptions.maxWorkers = getMaxWorkers(argv, options)

		if #(newOptions.testRegex :: any) > 0 and options.testMatch ~= nil then
			error(
				createConfigError(
					("  Configuration options %s and"):format(chalk.bold("testMatch"))
						.. (" %s cannot be used together."):format(chalk.bold("testRegex"))
				)
			)
		end

		if #(newOptions.testRegex :: any) > 0 and options.testMatch == nil then
			-- Prevent the default testMatch conflicting with any explicitly
			-- configured `testRegex` value
			newOptions.testMatch = {}
		end

		-- ROBLOX deviation START: not supported
		-- -- If argv.json is set, coverageReporters shouldn't print a text report.
		-- if argv.json then
		-- 	newOptions.coverageReporters = Array.filter(
		-- 		Boolean.toJSBoolean(newOptions.coverageReporters) and newOptions.coverageReporters or {},
		-- 		function(reporter)
		-- 			return reporter ~= "text"
		-- 		end
		-- 	)
		-- end

		-- -- If collectCoverage is enabled while using --findRelatedTests we need to
		-- -- avoid having false negatives in the generated coverage report.
		-- -- The following: `--findRelatedTests '/rootDir/file1.js' --coverage`
		-- -- Is transformed to: `--findRelatedTests '/rootDir/file1.js' --coverage --collectCoverageFrom 'file1.js'`
		-- -- where arguments to `--collectCoverageFrom` should be globs (or relative
		-- -- paths to the rootDir)
		-- if
		-- 	Boolean.toJSBoolean(
		-- 		if Boolean.toJSBoolean(newOptions.collectCoverage)
		-- 			then argv.findRelatedTests
		-- 			else newOptions.collectCoverage
		-- 	)
		-- then
		-- 	local collectCoverageFrom = Array.map(newOptions.nonFlagArgs, function(filename)
		-- 		filename = replaceRootDirInPath(options.rootDir, filename)
		-- 		return if Boolean.toJSBoolean(path:isAbsolute(filename))
		-- 			then path:relative(options.rootDir, filename)
		-- 			else filename
		-- 	end) --[[ ROBLOX CHECK: check if 'newOptions.nonFlagArgs' is an Array ]] -- Don't override existing collectCoverageFrom options
		-- 	if Boolean.toJSBoolean(newOptions.collectCoverageFrom) then
		-- 		collectCoverageFrom = Array.reduce(collectCoverageFrom, function(patterns, filename)
		-- 			if
		-- 				micromatch(
		-- 					{ replacePathSepForGlob(path:relative(options.rootDir, filename)) },
		-- 					newOptions.collectCoverageFrom :: any
		-- 				).length == 0
		-- 			then
		-- 				return patterns
		-- 			end
		-- 			return Array.concat({}, Array.spread(patterns), { filename })
		-- 		end, newOptions.collectCoverageFrom) --[[ ROBLOX CHECK: check if 'collectCoverageFrom' is an Array ]]
		-- 	end
		-- 	newOptions.collectCoverageFrom = collectCoverageFrom
		-- elseif not Boolean.toJSBoolean(newOptions.collectCoverageFrom) then
		-- 	newOptions.collectCoverageFrom = {}
		-- end

		-- if not Boolean.toJSBoolean(newOptions.findRelatedTests) then
		-- 	newOptions.findRelatedTests = false
		-- end
		-- ROBLOX deviation END

		if not Boolean.toJSBoolean(newOptions.projects) then
			newOptions.projects = {}
		end

		-- ROBLOX deviation START: not supported
		-- if not Boolean.toJSBoolean(newOptions.extraGlobals) then
		-- 	newOptions.extraGlobals = {}
		-- end

		-- if not Boolean.toJSBoolean(newOptions.forceExit) then
		-- 	newOptions.forceExit = false
		-- end

		-- if not Boolean.toJSBoolean(newOptions.logHeapUsage) then
		-- 	newOptions.logHeapUsage = false
		-- end
		-- ROBLOX deviation END

		return { hasDeprecationWarnings = hasDeprecationWarnings, options = newOptions }
	end)
end
exports.default = normalize
return exports
