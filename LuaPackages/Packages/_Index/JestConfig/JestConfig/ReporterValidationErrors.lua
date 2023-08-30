-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-config/src/ReporterValidationErrors.ts
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
local String = LuauPolyfill.String
type Array<T> = LuauPolyfill.Array<T>
type Record<K, T> = { [K]: T }

local exports = {}

local chalk = require(Packages.ChalkLua)
local typesModule = require(Packages.JestTypes)
type Config_ReporterConfig = typesModule.Config_ReporterConfig
local getType = require(Packages.JestGetType).getType
local jestValidateModule = require(Packages.JestValidate)
local ValidationError = jestValidateModule.ValidationError
type ValidationError = jestValidateModule.ValidationError
local utilsModule = require(script.Parent.utils)
local BULLET = utilsModule.BULLET
local DOCUMENTATION_NOTE = utilsModule.DOCUMENTATION_NOTE

-- ROBLOX deviation START: added missing variables to limit nr deviations
local RobloxShared = require(Packages.RobloxShared)
local nodeUtils = RobloxShared.nodeUtils
local JSON = nodeUtils.JSON
-- ROBLOX deviation END

-- ROBLOX deviation START: predefine functions
local validateArrayReporter
-- ROBLOX deviation END

-- ROBLOX deviation START: valid reporter needs to be either a table or a ModuleScript
local validReporterTypes = { "table", "ModuleScript" }
-- ROBLOX deviation END
local ERROR = ("%sReporter Validation Error"):format(tostring(BULLET))

--[[*
 * Reporter Validation Error is thrown if the given arguments
 * within the reporter are not valid.
 *
 * This is a highly specific reporter error and in the future will be
 * merged with jest-validate. Till then, we can make use of it. It works
 * and that's what counts most at this time.
 ]]
local function createReporterError(
	reporterIndex: number,
	reporterValue: Array<Config_ReporterConfig> | string
): ValidationError
	local errorMessage = ("  Reporter at index %s must be of type:\n"):format(tostring(reporterIndex))
		.. ("    %s\n"):format(chalk.green(chalk.bold(Array.join(validReporterTypes, " or "))))
		.. "  but instead received:\n"
		.. ("    %s"):format(chalk.red(chalk.bold(getType(reporterValue))))
	return ValidationError.new(ERROR, errorMessage, DOCUMENTATION_NOTE)
end
exports.createReporterError = createReporterError

local function createArrayReporterError(
	arrayReporter: Config_ReporterConfig,
	reporterIndex: number,
	valueIndex: number,
	value: string | Record<string, unknown>,
	expectedType: string,
	valueName: string
): ValidationError
	local errorMessage = ("  Unexpected value for %s "):format(valueName)
		.. ("at index %s of reporter at index %s\n"):format(tostring(valueIndex), tostring(reporterIndex))
		.. "  Expected:\n"
		.. ("    %s\n"):format(chalk.red(chalk.bold(expectedType)))
		.. "  Got:\n"
		.. ("    %s\n"):format(chalk.green(chalk.bold(getType(value))))
		.. "  Reporter configuration:\n"
		.. ("    %s"):format(
			chalk.green(chalk.bold(Array.join(String.split(JSON.stringify(arrayReporter, nil, 2), "\n"), "\n    ")))
		)
	return ValidationError.new(ERROR, errorMessage, DOCUMENTATION_NOTE)
end
exports.createArrayReporterError = createArrayReporterError

local function validateReporters(reporterConfig: Array<Config_ReporterConfig | string>): boolean
	return Array.every(reporterConfig, function(reporter, index)
		if Boolean.toJSBoolean(Array.isArray(reporter)) then
			validateArrayReporter(reporter, index)
		elseif typeof(reporter) ~= "string" then
			error(createReporterError(index, reporter))
		end
		return true
	end)
end
exports.validateReporters = validateReporters

function validateArrayReporter(arrayReporter: Config_ReporterConfig, reporterIndex: number)
	local path, options = table.unpack(arrayReporter, 1, 2)
	-- ROBLOX deviation START: path needs to be ModuleScript and options need to be a table
	if typeof(path) ~= "Instance" or not path:isA("ModuleScript") then
		error(createArrayReporterError(arrayReporter, reporterIndex, 0, path, "ModuleScript", "Path"))
	elseif typeof(options) ~= "table" then
		error(createArrayReporterError(arrayReporter, reporterIndex, 1, options, "table", "Reporter Configuration"))
	end
	-- ROBLOX deviation END
end
return exports
