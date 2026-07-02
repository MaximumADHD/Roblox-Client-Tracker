-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-reporters/src/getResultHeader.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean

local exports = {}

local chalk = require(Packages.ChalkLua)

-- ROBLOX deviation: Makes urls clickable in the terminal. Not able to support
-- local terminalLink = require(Packages["terminal-link"])
local testResultModule = require(Packages.JestTestResult)
type TestResult = testResultModule.TestResult

local jestTypesModule = require(Packages.JestTypes)
type Config_GlobalConfig = jestTypesModule.Config_GlobalConfig
type Config_ProjectConfig = jestTypesModule.Config_ProjectConfig

local formatTime = require(Packages.JestUtil).formatTime

local utilsModule = require(CurrentModule.utils)
local formatTestPath = utilsModule.formatTestPath
local printDisplayName = utilsModule.printDisplayName

-- ROBLOX deviation START chalk_chainable: Lua Chalk doesn't support chainable calls. Using nested calls instead
-- Explicitly reset for these messages since they can get written out in the
-- middle of error logging
local LONG_TEST_COLOR = function(...)
	return chalk.reset(chalk.bold(chalk.bgRed(...)))
end
local FAIL_TEXT = "FAIL"
local PASS_TEXT = "PASS"

--[[
	ROBLOX deviation START chalk_supportsColor: chalk.supportsColor isn't defined so we'll assume
	it supports colors unless it is explicitly set to false
]]
local FAIL = if chalk.supportsColor == nil or chalk.supportsColor == true
	then chalk.reset(chalk.inverse(chalk.bold(chalk.red(string.format(" %s ", FAIL_TEXT)))))
	else FAIL_TEXT

local PASS = if chalk.supportsColor == nil or chalk.supportsColor == true
	then chalk.reset(chalk.inverse(chalk.bold(chalk.green(string.format(" %s ", PASS_TEXT)))))
	else PASS_TEXT
-- ROBLOX deviation END chalk_supportsColor
-- ROBLOX deviation END chalk_chainable

exports.default = function(result: TestResult, globalConfig: Config_GlobalConfig, projectConfig: Config_ProjectConfig?)
	local testPath = result.testFilePath
	local formattedTestPath = formatTestPath(projectConfig or globalConfig, testPath)
	-- ROBLOX deviation START: no terminal-link package available just use the path
	local fileLink = formattedTestPath
	-- ROBLOX deviation END
	if result.numFailingTests == nil then
		result.numFailingTests = 0
	end
	local status = if result.numFailingTests > 0 or result.testExecError ~= nil then FAIL else PASS
	local testDetail = {}

	if result.perfStats ~= nil and Boolean.toJSBoolean(result.perfStats.slow) then
		local runTime = result.perfStats.runtime / 1000
		table.insert(testDetail, LONG_TEST_COLOR(formatTime(runTime, 0)))
	end

	if result.memoryUsage ~= nil then
		local toMB = function(bytes: number)
			return math.floor(bytes / 1024 / 1024)
		end
		table.insert(testDetail, (" %sMB heap size"):format(tostring(toMB(result.memoryUsage))))
	end

	local projectDisplayName = if projectConfig ~= nil and Boolean.toJSBoolean(projectConfig.displayName)
		then printDisplayName(projectConfig) .. " "
		else ""

	return string.format("%s %s%s %s", status, projectDisplayName, fileLink, table.concat(testDetail, " "))
end

return exports
