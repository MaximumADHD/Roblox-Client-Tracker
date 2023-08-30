-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-core/src/getNoTestFound.ts
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

local function getNoTestFound(
	testRunData: TestRunData,
	globalConfig: Config_GlobalConfig,
	willExitWith0: boolean
): string
	-- ROBLOX deviation START: add type annotation to 'number'
	-- local testFiles = Array.reduce(testRunData, function(current, testRun)
	local testFiles = Array.reduce(testRunData, function(
		current: number, -- ROBLOX FIXME Luau: should be inferred from reduce's initial value
		testRun
	)
		-- ROBLOX deviation END
		return current + (Boolean.toJSBoolean(testRun.matches.total) and testRun.matches.total or 0)
	end, 0)

	local dataMessage
	if Boolean.toJSBoolean(globalConfig.runTestsByPath) then
		dataMessage = ("Files: %s"):format(tostring(Array.join(
			Array.map(globalConfig.nonFlagArgs, function(p)
				return ('"%s"'):format(tostring(p))
			end),
			", "
		)))
	else
		dataMessage = ("Pattern: %s - 0 matches"):format(chalk.yellow(globalConfig.testPathPattern))
	end
	if Boolean.toJSBoolean(willExitWith0) then
		return ("%s\n"):format(chalk.bold("No tests found, exiting with code 0"))
			.. ("In %s"):format(chalk.bold(globalConfig.rootDir))
			.. "\n"
			.. ("  %s checked across %s. Run with `--verbose` for more details."):format(
				tostring(pluralize("file", testFiles, "s")),
				-- ROBLOX deviation START: fix length check
				-- tostring(pluralize("project", testRunData.length, "s"))
				tostring(pluralize("project", #testRunData, "s"))
				-- ROBLOX deviation END
			)
			.. ("\n%s"):format(tostring(dataMessage))
	end
	return ("%s\n"):format(chalk.bold("No tests found, exiting with code 1"))
		.. "Run with `--passWithNoTests` to exit with code 0"
		.. "\n"
		.. ("In %s"):format(chalk.bold(globalConfig.rootDir))
		.. "\n"
		.. ("  %s checked across %s. Run with `--verbose` for more details."):format(
			tostring(pluralize("file", testFiles, "s")),
			-- ROBLOX deviation START: fix length check
			-- tostring(pluralize("project", testRunData.length, "s"))
			tostring(pluralize("project", #testRunData, "s"))
			-- ROBLOX deviation END
		)
		.. ("\n%s"):format(tostring(dataMessage))
end
exports.default = getNoTestFound

return exports
