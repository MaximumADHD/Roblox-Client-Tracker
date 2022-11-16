-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-core/src/getNoTestsFoundMessage.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local Packages = script.Parent.Parent

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

local function getNoTestsFoundMessage(testRunData: TestRunData, globalConfig: Config_GlobalConfig): string
	-- ROBLOX deviation START: not supported
	-- if globalConfig.onlyFailures then
	-- 	return getNoTestFoundFailed(globalConfig)
	-- end
	-- if globalConfig.onlyChanged then
	-- 	return getNoTestFoundRelatedToChangedFiles(globalConfig)
	-- end
	-- ROBLOX deviation END
	if globalConfig.passWithNoTests then
		return getNoTestFoundPassWithNoTests()
	end
	return if #testRunData == 1 or globalConfig.verbose
		then getNoTestFoundVerbose(testRunData, globalConfig)
		else getNoTestFound(testRunData, globalConfig)
end
exports.default = getNoTestsFoundMessage

return exports
