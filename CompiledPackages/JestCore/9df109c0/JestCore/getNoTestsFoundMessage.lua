-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-core/src/getNoTestsFoundMessage.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean

local exports = {}

local jestTypesModule = require(Packages.JestTypes)
type Config_GlobalConfig = jestTypesModule.Config_GlobalConfig
local getNoTestFound = require(script.Parent.getNoTestFound).default
-- ROBLOX deviation START: not needed
-- local getNoTestFoundFailed = require(script.Parent.getNoTestFoundFailed).default
-- ROBLOX deviation END
local getNoTestFoundPassWithNoTests = require(script.Parent.getNoTestFoundPassWithNoTests).default
-- ROBLOX deviation START: not needed
-- local getNoTestFoundRelatedToChangedFiles = require(script.Parent.getNoTestFoundRelatedToChangedFiles).default
-- ROBLOX deviation END
local getNoTestFoundVerbose = require(script.Parent.getNoTestFoundVerbose).default
local typesModule = require(script.Parent.types)
type TestRunData = typesModule.TestRunData

local function getNoTestsFoundMessage(
	testRunData: TestRunData,
	globalConfig: Config_GlobalConfig
): { exitWith0: boolean, message: string }
	-- ROBLOX deviation START: don't check unsupported flags
	local exitWith0 = Boolean.toJSBoolean(globalConfig.passWithNoTests)
	-- ROBLOX deviation END

	-- ROBLOX deviation START: not supported
	-- if Boolean.toJSBoolean(globalConfig.onlyFailures) then
	-- 	return { exitWith0 = exitWith0, message = getNoTestFoundFailed(globalConfig) }
	-- end
	-- if Boolean.toJSBoolean(globalConfig.onlyChanged) then
	-- 	return {
	-- 		exitWith0 = exitWith0,
	-- 		message = getNoTestFoundRelatedToChangedFiles(globalConfig),
	-- 	}
	-- end
	-- ROBLOX deviation END

	if Boolean.toJSBoolean(globalConfig.passWithNoTests) then
		return { exitWith0 = exitWith0, message = getNoTestFoundPassWithNoTests() }
	end
	return {
		exitWith0 = exitWith0,
		-- ROBLOX deviation START: fix length check
		-- message = if Boolean.toJSBoolean(testRunData.length == 1 or globalConfig.verbose)
		-- 	then getNoTestFoundVerbose(testRunData, globalConfig, exitWith0)
		-- 	else getNoTestFound(testRunData, globalConfig, exitWith0),
		message = if Boolean.toJSBoolean(#testRunData == 1 or globalConfig.verbose)
			then getNoTestFoundVerbose(testRunData, globalConfig, exitWith0)
			else getNoTestFound(testRunData, globalConfig, exitWith0),
		-- ROBLOX deviation END
	}
end
exports.default = getNoTestsFoundMessage

return exports
