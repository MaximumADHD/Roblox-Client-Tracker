-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-config/src/utils.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
-- ROBLOX deviation START: not needed
-- local Array = LuauPolyfill.Array
-- local Boolean = LuauPolyfill.Boolean
-- local Error = LuauPolyfill.Error
-- ROBLOX deviation END
local String = LuauPolyfill.String
-- ROBLOX deviation START: not needed
-- local instanceof = LuauPolyfill.instanceof
-- ROBLOX deviation END
type Array<T> = LuauPolyfill.Array<T>
type Record<K, T> = { [K]: T }

local exports = {}

-- ROBLOX deviation START: not needed
-- local path = require(Packages.path)
-- ROBLOX deviation END
local chalk = require(Packages.ChalkLua)
local typesModule = require(Packages.JestTypes)
type Config_Glob = typesModule.Config_Glob
type Config_Path = typesModule.Config_Path
-- ROBLOX deviation START: not needed
-- local Resolver = require(Packages["jest-resolve"]).default
-- local ValidationError = require(Packages["jest-validate"]).ValidationError
-- local ValidationError = Error
-- ROBLOX deviation END

type ResolveOptions = {
	-- ROBLOX deviation START: using Instance instead of Config_Path
	rootDir: Instance,
	-- ROBLOX deviation END
	key: string,
	filePath: Config_Path,
	optional: boolean?,
}

local BULLET: string = chalk.bold("\u{25cf} ")
exports.BULLET = BULLET
local DOCUMENTATION_NOTE = ([[  %s
  https://jestjs.io/docs/configuration
]]):format(chalk.bold("Configuration Documentation:"))
exports.DOCUMENTATION_NOTE = DOCUMENTATION_NOTE

-- ROBLOX deviation START: not ported yet
-- local function createValidationError(message: string)
-- 	return ValidationError.new(("%sValidation Error"):format(tostring(BULLET)), message, DOCUMENTATION_NOTE)
-- end

-- local function resolve(resolver: string | nil, ref: ResolveOptions): string
-- 	local key, filePath, rootDir, optional = ref.key, ref.filePath, ref.rootDir, ref.optional
-- 	local module = Resolver:findNodeModule(
-- 		replaceRootDirInPath(rootDir, filePath),
-- 		{ basedir = rootDir, resolver = if resolver ~= nil then resolver else nil }
-- 	)
-- 	if not Boolean.toJSBoolean(module) and not optional then
-- 		error(
-- 			createValidationError(
-- 				([[  Module %s in the %s option was not found.
--          %s is: %s]]):format(
-- 					chalk.bold(filePath),
-- 					chalk.bold(key),
-- 					chalk.bold("<rootDir>"),
-- 					tostring(rootDir)
-- 				)
-- 			)
-- 		)
-- 	end
-- 	--- can cast as string since nulls will be thrown
-- 	return module :: string
-- end
-- exports.resolve = resolve

-- local function escapeGlobCharacters(path: Config_Path): Config_Glob
-- 	return path:replace(
-- 		error("not implemented"), --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /([()*{}\[\]!?\\])/g ]]
-- 		"\\$1"
-- 	)
-- end
-- exports.escapeGlobCharacters = escapeGlobCharacters

-- local function replaceRootDirInPath(rootDir: Config_Path, filePath: Config_Path): string
-- 	if not Boolean.toJSBoolean(RegExp("^<rootDir>"):test(filePath)) then
-- 		return filePath
-- 	end
-- 	return path:resolve(rootDir, path:normalize("./" .. tostring(filePath:substring(("<rootDir>").length))))
-- end
-- exports.replaceRootDirInPath = replaceRootDirInPath

-- local function _replaceRootDirInObject<T>(rootDir: Config_Path, config: T): T
-- 	local newConfig = {} :: T
-- 	for configKey in config do
-- 		newConfig[configKey] = if configKey == "rootDir"
-- 			then config[configKey]
-- 			else _replaceRootDirTags(rootDir, config[configKey])
-- 	end
-- 	return newConfig
-- end

-- type OrArray<T> = T | Array<T>
-- type ReplaceRootDirConfigObj = Record<string, Config_Path>
-- type ReplaceRootDirConfigValues = OrArray<ReplaceRootDirConfigObj> | OrArray<RegExp> | OrArray<Config_Path>

-- local function _replaceRootDirTags<T>(rootDir: Config_Path, config: T): T
-- 	if config == nil then
-- 		return config
-- 	end
-- 	local condition_ = typeof(config)
-- 	if condition_ == "table" then
-- 		if Array.isArray(config) then
-- 			--/ can be string[] or {}[]
-- 			return Array.map(config, function(item)
-- 				return _replaceRootDirTags(rootDir, item)
-- 			end) :: T
-- 		end
-- 		if instanceof(config, RegExp) then
-- 			return config
-- 		end

-- 		return _replaceRootDirInObject(rootDir, config :: ReplaceRootDirConfigObj) :: T
-- 	elseif condition_ == "string" then
-- 		return replaceRootDirInPath(rootDir, config) :: T
-- 	end
-- 	return config
-- end
-- exports._replaceRootDirTags = _replaceRootDirTags
-- ROBLOX deviation END

type JSONString = string & {
	["$$type"]: never,
} -- newtype
local function isJSONString(
	text: (JSONString | string)?
): boolean --[[ ROBLOX FIXME: change to TSTypePredicate equivalent if supported ]] --[[ text is JSONString ]]
	return text ~= nil and typeof(text) == "string" and String.startsWith(text, "{") and String.endsWith(text, "}")
end
exports.isJSONString = isJSONString
return exports
