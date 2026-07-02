-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-config/src/readConfigFileAndSetRootDir.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Error = LuauPolyfill.Error
type Promise<T> = LuauPolyfill.Promise<T>
local Promise = require(Packages.Promise)

local exports = {}

-- ROBLOX deviation START: not needed
-- local path = require(Packages.path)
-- local fs = require(Packages["graceful-fs"])
-- local ts_nodeModule = require(Packages["ts-node"])
-- type Service = ts_nodeModule.Service
-- ROBLOX deviation END
local typesModule = require(Packages.JestTypes)
type Config_InitialOptions = typesModule.Config_InitialOptions
-- ROBLOX deviation START: not needed
-- type Config_Path = typesModule.Config_Path
-- local jest_utilModule = require(Packages.JestUtil)
-- local interopRequireDefault = jest_utilModule.interopRequireDefault
-- local requireOrImportModule = jest_utilModule.requireOrImportModule
-- local constantsModule = require(script.Parent.constants)
-- local JEST_CONFIG_EXT_JSON = constantsModule.JEST_CONFIG_EXT_JSON
-- local JEST_CONFIG_EXT_TS = constantsModule.JEST_CONFIG_EXT_TS
-- local PACKAGE_JSON = constantsModule.PACKAGE_JSON
-- @ts-expect-error: vendored
-- local jsonlint = require(script.Parent.vendor.jsonlint).default
-- ROBLOX deviation END

-- Read the configuration and set its `rootDir`
-- 1. If it's a `package.json` file, we look into its "jest" property
-- 2. If it's a `jest.config.ts` file, we use `ts-node` to transpile & require it
-- 3. For any other file, we just require it. If we receive an 'ERR_REQUIRE_ESM'
--    from node, perform a dynamic import instead.
local function readConfigFileAndSetRootDir(
	-- ROBLOX deviation: using ModuleScript instead of Config_Path
	configPath: ModuleScript
): Promise<Config_InitialOptions>
	return Promise.resolve():andThen(function()
		-- ROBLOX deviation START: custom implementation
		-- local isTS = configPath:endsWith(JEST_CONFIG_EXT_TS)
		-- local isJSON = configPath:endsWith(JEST_CONFIG_EXT_JSON)
		-- ROBLOX deviation END
		local ok, configObjectOrError = pcall(require, configPath)

		if not ok then
			local error_ = configObjectOrError
			error(
				Error.new(
					("Failed to load the Luau config file %s\n  %s"):format(tostring(configPath), tostring(error_))
				)
			)
		end
		local configObject = configObjectOrError

		if typeof(configObject) == "function" then
			configObject = Promise.resolve(configObject()):expect()
		end

		if not configObject.rootDir or typeof(configObject.rootDir) ~= "Instance" then
			-- If rootDir is not there, we'll set it to this file's __dirname
			configObject.rootDir = configPath.Parent
		end
		return configObject
		-- ROBLOX deviation END
	end)
end
exports.default = readConfigFileAndSetRootDir

-- ROBLOX deviation START: not needed
-- local registerer -- Load the TypeScript configuration: Service
-- local function loadTSConfigFile(configPath: Config_Path): Promise<Config_InitialOptions>
-- 	return Promise.resolve():andThen(function()
-- 		-- Register TypeScript compiler instance
-- 		do --[[ ROBLOX COMMENT: try-catch block conversion ]]
-- 			local ok, result, hasReturned = xpcall(function()
-- 				error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: AssignmentExpression ]] --[[ registerer ||= require('ts-node').register({
--       compilerOptions: {
--         module: 'CommonJS'
--       }
--     }) ]]
-- 			end, function(e: any)
-- 				if e.code == "MODULE_NOT_FOUND" then
-- 					error(
-- 						Error.new(
-- 							(
-- 								"Jest: 'ts-node' is required for the TypeScript configuration files. Make sure it is installed\nError: %s"
-- 							):format(tostring(e.message))
-- 						)
-- 					)
-- 				end
-- 				error(e)
-- 			end)
-- 			if hasReturned then
-- 				return result
-- 			end
-- 		end
-- 		registerer:enabled(true)
-- 		local configObject = interopRequireDefault(require_(configPath)).default -- In case the config is a function which imports more Typescript code
-- 		if typeof(configObject) == "function" then
-- 			configObject = configObject():expect()
-- 		end
-- 		registerer:enabled(false)
-- 		return configObject
-- 	end)
-- end
-- ROBLOX deviation END

return exports
