-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-console/src/getConsoleOutput.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local exports = {}

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local String = LuauPolyfill.String
type Error = LuauPolyfill.Error
type Array<T> = LuauPolyfill.Array<T>

local chalk = require(Packages.ChalkLua)

local jestTypesModule = require(Packages.JestTypes)
type GlobalConfig = jestTypesModule.Config_GlobalConfig

local messageUtilsModule = require(Packages.JestMessageUtil)
local formatStackTrace = messageUtilsModule.formatStackTrace
type StackTraceConfig = messageUtilsModule.StackTraceConfig
type StackTraceOptions = messageUtilsModule.StackTraceOptions

local typesModule = require(CurrentModule.types)
type ConsoleBuffer = typesModule.ConsoleBuffer

local getConsoleOutput = function(buffer: ConsoleBuffer, config: StackTraceConfig, globalConfig: GlobalConfig): string
	local TITLE_INDENT = if globalConfig.verbose then "  " else "    "
	local CONSOLE_INDENT = TITLE_INDENT .. "  "

	local logEntries: string = Array.reduce(buffer, function(output: string, ref)
		local type_, message, origin = ref.type, ref.message, ref.origin

		message = Array.join(
			Array.map(String.split(message, "\n"), function(line)
				return CONSOLE_INDENT .. line
			end),
			"\n"
		)

		local typeMessage = "console." .. type_
		local noStackTrace = true
		local noCodeFrame = true

		if type_ == "warn" then
			message = chalk.yellow(message)
			typeMessage = chalk.yellow(typeMessage)
			noStackTrace = globalConfig.noStackTrace or false
			noCodeFrame = false
		elseif type_ == "error" then
			message = chalk.red(message)
			typeMessage = chalk.red(typeMessage)
			noStackTrace = globalConfig.noStackTrace or false
			noCodeFrame = false
		end

		local options = {
			noStackTrace = noStackTrace,
			noCodeFrame = noCodeFrame,
		}

		local formattedStackTrace = formatStackTrace(origin, config, options)
		return output
			.. TITLE_INDENT
			.. chalk.dim(typeMessage)
			.. "\n"
			.. String.trimEnd(message)
			.. "\n"
			.. chalk.dim(String.trimEnd(formattedStackTrace))
			.. "\n\n"
	end, "")

	return String.trimEnd(logEntries) .. "\n"
end

exports.default = getConsoleOutput
return exports
