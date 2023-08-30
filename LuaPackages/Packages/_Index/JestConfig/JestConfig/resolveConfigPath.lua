-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-config/src/resolveConfigPath.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Error = LuauPolyfill.Error
local String = LuauPolyfill.String
local console = LuauPolyfill.console
type Array<T> = LuauPolyfill.Array<T>

local exports = {}

-- ROBLOX deviation START: not needed
-- local path = require(Packages.path)
-- ROBLOX deviation END
local chalk = require(Packages.ChalkLua)
-- ROBLOX deviation START: not needed
-- local fs = require(Packages["graceful-fs"])
-- local slash = require(Packages.slash)
-- ROBLOX deviation END
local typesModule = require(Packages.JestTypes)
type Config_Path = typesModule.Config_Path
local constantsModule = require(script.Parent.constants)
local JEST_CONFIG_BASE_NAME = constantsModule.JEST_CONFIG_BASE_NAME
-- ROBLOX deviation START: not needed
-- local JEST_CONFIG_EXT_ORDER = constantsModule.JEST_CONFIG_EXT_ORDER
-- local PACKAGE_JSON = constantsModule.PACKAGE_JSON
-- ROBLOX deviation END
local utilsModule = require(script.Parent.utils)
local DOCUMENTATION_NOTE = utilsModule.DOCUMENTATION_NOTE

-- ROBLOX deviation START: predefine functions
local resolveConfigPathByTraversing: (
	pathToResolve: Instance,
	initialPath: Config_Path | Instance,
	-- ROBLOX deviation: using Instance instead of Config_Path
	cwd: Instance,
	skipMultipleConfigWarning: boolean
) -> ModuleScript -- ROBLOX deviation: using ModuleScript instead of Config_Path
local makeResolutionErrorMessage: (initialPath: Config_Path | Instance, cwd: Instance) -> string
local makeMultipleConfigsWarning
-- ROBLOX deviation END

local function isFile(filePath: Instance?)
	-- ROBLOX deviation START: custom implementation
	return typeof(filePath) == "Instance" and filePath:IsA("ModuleScript") and String.endsWith(filePath.Name, ".config")
	-- ROBLOX deviation END
end

local function getConfigFilename(ext: string)
	return JEST_CONFIG_BASE_NAME .. ext
end

exports.default = function(
	pathToResolve: Config_Path | Instance,
	-- ROBLOX deviation: using Instance instead of Config_Path
	cwd: Instance,
	_skipMultipleConfigWarning: boolean?
): ModuleScript -- ROBLOX deviation: using ModuleScript instead of Config_Path
	local skipMultipleConfigWarning = if _skipMultipleConfigWarning ~= nil then _skipMultipleConfigWarning else false

	-- ROBLOX deviation START: custom implementation
	local function resolvePath(root: Instance, path: string): Instance | nil
		-- ROBLOX TODO: handle nested path
		return (root :: any)[path]
	end

	local absolutePath: Instance?
	if typeof(pathToResolve) == "string" then
		absolutePath = resolvePath(cwd, pathToResolve)
	else
		absolutePath = pathToResolve
	end

	if isFile(absolutePath) then
		return absolutePath :: ModuleScript
	end

	if absolutePath == nil then
		error(
			Error.new(
				"Can't find a root directory while resolving a config file path.\n"
					.. ("Provided path to resolve: %s\n"):format(tostring(pathToResolve))
					.. ("cwd: %s"):format(tostring(cwd))
			)
		)
	end

	return resolveConfigPathByTraversing(
		-- ROBLOX FIXME Luau: absolutePath nil check above
		absolutePath :: Instance,
		pathToResolve,
		cwd,
		skipMultipleConfigWarning
	)
	-- ROBLOX deviation END
end

-- ROBLOX deviation START: additional helper function
local function isJestConfigFile(child: Instance)
	return child:IsA("ModuleScript") and child.Name == JEST_CONFIG_BASE_NAME
end
-- ROBLOX deviation END

function resolveConfigPathByTraversing(
	pathToResolve: Instance,
	initialPath: Config_Path | Instance,
	-- ROBLOX deviation: using Instance instead of Config_Path
	cwd: Instance,
	skipMultipleConfigWarning: boolean
) --[[ ROBLOX deviation: using ModuleScript instead of Config_Path]]: ModuleScript
	-- ROBLOX deviation START: custom logic
	-- ROBLOX NOTE: additional nil check
	if pathToResolve == nil or typeof(pathToResolve.GetChildren) ~= "function" then
		error(Error.new(makeResolutionErrorMessage(initialPath, cwd)))
	end

	local configFiles = (
		Array.filter(pathToResolve:GetChildren(), function(child)
			local ok, result = pcall(isJestConfigFile, child)
			return ok and result
		end) :: Array<any>
	) :: Array<ModuleScript>
	if not skipMultipleConfigWarning and #configFiles > 1 then
		console.warn(makeMultipleConfigsWarning(configFiles))
	end
	if #configFiles > 0 then
		return configFiles[1]
	end

	-- This is the system root.
	-- We tried everything, config is nowhere to be found ¯\_(ツ)_/¯
	if pathToResolve == game then
		error(Error.new(makeResolutionErrorMessage(initialPath, cwd)))
	end

	-- go up a level and try it again
	return resolveConfigPathByTraversing(pathToResolve.Parent :: Instance, initialPath, cwd, skipMultipleConfigWarning)
	-- ROBLOX deviation END
end

-- ROBLOX deviation START: not needed
-- local function findPackageJson(pathToResolve: Config_Path)
-- 	local packagePath = path:resolve(pathToResolve, PACKAGE_JSON)
-- 	if Boolean.toJSBoolean(isFile(packagePath)) then
-- 		return packagePath
-- 	end
-- 	return nil
-- end
-- local function hasPackageJsonJestKey(packagePath: Config_Path)
-- 	local content = fs:readFileSync(packagePath, "utf8")
-- 	do --[[ ROBLOX COMMENT: try-catch block conversion ]]
-- 		local ok, result, hasReturned = xpcall(function()
-- 			return Array.indexOf(Object.keys(JSON:parse(content)), "jest") ~= -1, true
-- 		end, function()
-- 			-- If package is not a valid JSON
-- 			return false, true
-- 		end)
-- 		if hasReturned then
-- 			return result
-- 		end
-- 	end
-- end
-- ROBLOX deviation END

function makeResolutionErrorMessage(
	-- ROBLOX deviation: using Instance instead of Config_Path
	initialPath: Config_Path | Instance,
	-- ROBLOX deviation: using Instance instead of Config_Path
	cwd: Instance
): string
	return "Could not find a config file based on provided values:\n"
		.. ('path: "%s"\n'):format(tostring(initialPath))
		.. ('cwd: "%s"\n'):format(tostring(cwd))
		-- ROBLOX deviation START: align message to make more sense in Luau context
		.. "Config paths must be specified by either a direct path to a config script\n"
		.. "or a path to a directory. If directory is given, Jest will try to\n"
		-- ROBLOX deviation END
		.. ("traverse directory tree up, until it finds one of those files in exact order: %s."):format(
			Array.join(
				Array.map(
					-- ROBLOX deviation START: only support Lua config files
					-- JEST_CONFIG_EXT_ORDER
					{ ".lua" },
					-- ROBLOX deviation END
					function(ext)
						return ('"%s"'):format((getConfigFilename(ext)))
					end
				),
				" or "
			)
		)
end

local function extraIfPackageJson(configPath: Config_Path)
	-- ROBLOX deviation START: no package.json handling
	-- if Boolean.toJSBoolean(configPath:endsWith(PACKAGE_JSON)) then
	-- 	return "`jest` key in "
	-- end
	-- ROBLOX deviation END
	return ""
end

function makeMultipleConfigsWarning(configPaths: Array<ModuleScript>)
	return chalk.yellow({
		Array.join(
			Array.concat(
				{},
				{ chalk.bold("\u{25cf} Multiple configurations found:") },
				Array.map(configPaths, function(configPath)
					return ("    * %s%s"):format(tostring(extraIfPackageJson(configPath)), tostring(configPath))
				end),
				{
					"",
					"  Implicit config resolution does not allow multiple configuration files.",
					"  Either remove unused config files or select one explicitly with `--config`.",
				}
			),
			"\n"
		),
		DOCUMENTATION_NOTE,
	})
end

return exports
