-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-core/src/getNoTestFound.ts
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

local exports = {}

local chalk = require(Packages.ChalkLua)
local jestTypesModule = require(Packages.JestTypes)
type Config_GlobalConfig = jestTypesModule.Config_GlobalConfig
local pluralize = require(script.Parent.pluralize).default
local typesModule = require(script.Parent.types)
type TestRunData = typesModule.TestRunData

local function getNoTestFound(testRunData: TestRunData, globalConfig: Config_GlobalConfig): string
	local testFiles = Array.reduce(testRunData, function(
		-- ROBLOX FIXME Luau: should be inferred from reduce's initial value
		current: number,
		testRun
	)
		return current + (Boolean.toJSBoolean(testRun.matches.total) and testRun.matches.total or 0)
	end, 0)
	local dataMessage

	if globalConfig.runTestsByPath then
		dataMessage = ("Files: %s"):format(tostring(Array.join(
			Array.map(globalConfig.nonFlagArgs, function(p)
				return ('"%s"'):format(tostring(p))
			end),
			", "
		)))
	else
		dataMessage = ("Pattern: %s - 0 matches"):format(chalk.yellow(globalConfig.testPathPattern))
	end

	return chalk.bold("No tests found, exiting with code 1")
		.. "\n"
		.. "Run with `--passWithNoTests` to exit with code 0"
		.. "\n"
		.. ("In %s"):format(chalk.bold(tostring(globalConfig.rootDir)))
		.. "\n"
		.. ("  %s checked across %s. Run with `--verbose` for more details."):format(
			(pluralize("file", testFiles, "s")),
			(pluralize("project", #testRunData, "s"))
		)
		.. "\n"
		.. dataMessage
end
exports.default = getNoTestFound

return exports
