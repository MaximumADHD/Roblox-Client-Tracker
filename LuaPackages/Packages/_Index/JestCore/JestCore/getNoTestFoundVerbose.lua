-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-core/src/getNoTestFoundVerbose.ts
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
type Array<T> = LuauPolyfill.Array<T>
type Record<K, T> = { [K]: T }

local exports = {}

local chalk = require(Packages.ChalkLua)
local jestTypesModule = require(Packages.JestTypes)
type Config_GlobalConfig = jestTypesModule.Config_GlobalConfig
local pluralize = require(script.Parent.pluralize).default
local typesModule = require(script.Parent.types)
type Stats = typesModule.Stats
type TestRunData = typesModule.TestRunData

local function getNoTestFoundVerbose(
	testRunData: TestRunData,
	globalConfig: Config_GlobalConfig,
	willExitWith0: boolean
): string
	local individualResults = Array.map(testRunData, function(testRun)
		local stats_ = testRun.matches.stats ~= nil and testRun.matches.stats or {} :: Stats
		local config = testRun.context.config
		local statsMessage = Array.join(
			Array.filter(
				Array.map(
					Object.keys(stats_) :: Array<any --[[ ROBLOX TODO: Unhandled node for type: TSTypeOperator ]] --[[ keyof Stats ]]>,
					function(key): string | nil
						if key == "roots" and #config.roots == 1 then
							return nil
						end
						local value = ((config :: any) :: Record<string, unknown>)[key]
						if Boolean.toJSBoolean(value) then
							local valueAsString = if Array.isArray(value)
								then Array.join(value :: Array<unknown>, ", ")
								else tostring(value)
							local matches =
								pluralize("match", Boolean.toJSBoolean(stats_[key]) and stats_[key] or 0, "es")
							return ("  %s: %s - %s"):format(key, chalk.yellow(valueAsString), tostring(matches))
						end
						return nil
					end
				),
				function(line)
					return Boolean.toJSBoolean(line)
				end
			),
			"\n"
		)
		return if Boolean.toJSBoolean(testRun.matches.total)
			then ("In %s\n"):format(chalk.bold(tostring(config.rootDir))) .. ("  %s checked.\n"):format(
				pluralize("file", Boolean.toJSBoolean(testRun.matches.total) and testRun.matches.total or 0, "s")
			) .. statsMessage
			else ("No files found in %s.\n"):format(tostring(config.rootDir))
				.. "Make sure Jest's configuration does not exclude this directory."
				.. "\nTo set up Jest, make sure a package.json file exists.\n"
				.. "Jest Documentation: "
				.. "https://jestjs.io/docs/configuration"
	end)
	local dataMessage
	if globalConfig.runTestsByPath then
		dataMessage = ("Files: %s"):format(Array.join(
			Array.map(globalConfig.nonFlagArgs, function(p)
				return ('"%s"'):format(tostring(p))
			end),
			", "
		))
	else
		dataMessage = ("Pattern: %s - 0 matches"):format(chalk.yellow(globalConfig.testPathPattern))
	end
	if Boolean.toJSBoolean(willExitWith0) then
		return ("%s\n%s\n%s"):format(
			chalk.bold("No tests found, exiting with code 0"),
			tostring(Array.join(individualResults, "\n") --[[ ROBLOX CHECK: check if 'individualResults' is an Array ]]),
			tostring(dataMessage)
		)
	end
	return ("%s\n"):format(chalk.bold("No tests found, exiting with code 1"))
		.. "Run with `--passWithNoTests` to exit with code 0"
		.. "\n"
		.. Array.join(individualResults, "\n")
		.. "\n"
		.. dataMessage
end
exports.default = getNoTestFoundVerbose

return exports
