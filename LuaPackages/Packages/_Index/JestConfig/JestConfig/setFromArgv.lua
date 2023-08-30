-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-config/src/setFromArgv.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object
type Record<K, T> = { [K]: T }

local exports = {}

local typesModule = require(Packages.JestTypes)
type Config_Argv = typesModule.Config_Argv
type Config_InitialOptions = typesModule.Config_InitialOptions
local isJSONString = require(script.Parent.utils).isJSONString

-- ROBLOX deviation START: added missing variables to limit nr deviations
local RobloxShared = require(Packages.RobloxShared)
local nodeUtils = RobloxShared.nodeUtils
local JSON = nodeUtils.JSON
-- ROBLOX deviation END

local specialArgs = { "_", "$0", "h", "help", "config" }

local function setFromArgv(options: Config_InitialOptions, argv: Config_Argv): Config_InitialOptions
	local argvToOptions = Array.reduce(
		Array.filter(Object.keys(argv), function(key)
			-- ROBLOX FIXME Luau: analyze complains about argv not being a table
			return (argv :: any)[key] ~= nil and Array.indexOf(specialArgs, key) == -1
		end),
		function(options: Record<string, unknown>, key)
			local condition_ = key
			-- ROBLOX deviation START: not supported
			if false then
				-- if condition_ == "coverage" then
				-- 	options.collectCoverage = argv[key]
				-- ROBLOX deviation END
			elseif condition_ == "json" then
				-- ROBLOX FIXME Luau: analyze complains about argv not being a table
				options.useStderr = (argv :: any)[key]
				-- ROBLOX deviation START: not supported
				-- elseif condition_ == "watchAll" then
				-- 	options.watch = false
				-- 	options.watchAll = argv[key]
				-- elseif condition_ == "env" then
				-- 	options.testEnvironment = argv[key]
				-- ROBLOX deviation END
			elseif condition_ == "config" then
				-- ROBLOX NOTE: empty elseif
			elseif
				-- ROBLOX deviation START: not supported
				-- condition_ == "coverageThreshold" or
				condition_ == "globals"
				-- or condition_ == "haste"
				-- or condition_ == "moduleNameMapper"
				-- or condition_ == "testEnvironmentOptions"
				-- or condition_ == "transform"
				-- ROBLOX deviation END
			then
				-- ROBLOX FIXME Luau: analyze complains about argv not being a table
				local str = (argv :: any)[key]
				if isJSONString(str) then
					options[key] = JSON.parse(str)
				end
			else
				-- ROBLOX FIXME Luau: analyze complains about argv not being a table
				options[key] = (argv :: any)[key]
			end
			return options
		end,
		{}
	)
	return Object.assign({}, options, if isJSONString(argv.config) then JSON.parse(argv.config) else nil, argvToOptions)
end
exports.default = setFromArgv

return exports
