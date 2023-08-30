-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-validate/src/utils.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
-- ROBLOX deviation START: not needed dependencies
-- local Array = LuauPolyfill.Array
-- ROBLOX deviation END
local Boolean = LuauPolyfill.Boolean
local Error = LuauPolyfill.Error
-- ROBLOX deviation START: not needed dependencies
-- local String = LuauPolyfill.String
-- local console = LuauPolyfill.console
-- type Array<T> = LuauPolyfill.Array<T>
-- ROBLOX deviation END
type Error = LuauPolyfill.Error

local exports = {}

local chalk = require(Packages.ChalkLua)
-- ROBLOX deviation START: not ported yet
-- local leven = require(Packages.leven).default
-- local prettyFormat = require(Packages.PrettyFormat).format
-- local BULLET: string = chalk.bold("\u{25cf}")
-- local DEPRECATION = ("%s Deprecation Warning"):format(BULLET)
-- exports.DEPRECATION = DEPRECATION
-- local ERROR = ("%s Validation Error"):format(BULLET)
-- exports.ERROR = ERROR
-- local WARNING = ("%s Validation Warning"):format(BULLET)
-- exports.WARNING = WARNING

-- local function format(value: unknown): string
-- 	return if typeof(value) == "function" then tostring(value) else prettyFormat(value, { min = true })
-- end
-- exports.format = format

-- local function formatPrettyObject(value: unknown): string
-- 	return if typeof(value) == "function"
-- 		then tostring(value)
-- 		else
-- 			Array.join(String.split(JSON.stringify(value, nil, 2),"\n"), "\n    ")
-- end
-- exports.formatPrettyObject = formatPrettyObject
-- ROBLOX deviation END

export type ValidationError = Error & { name: string, message: string }
local ValidationError = setmetatable({}, { __index = Error })
ValidationError.__index = ValidationError
function ValidationError.new(name: string, message: string, comment: (string | nil)?): ValidationError
	local self = setmetatable(Error.new(), ValidationError)
	comment = if comment ~= nil and Boolean.toJSBoolean(comment) then "\n\n" .. comment else "\n"
	self.name = ""
	self.message = chalk.red(chalk.bold(name) .. ":\n\n" .. message .. (comment :: string))
	-- ROBLOX deviation START: no captureStackTrace available
	-- Error:captureStackTrace(self, function() end)
	-- ROBLOX deviation END
	return (self :: any) :: ValidationError
end
exports.ValidationError = ValidationError

-- ROBLOX deviation START: not ported yet
-- local function logValidationWarning(name: string, message: string, comment: (string | nil)?): ()
-- 	comment = if Boolean.toJSBoolean(comment) then "\n\n" .. comment else "\n"
-- 	console.warn(chalk.yellow(chalk.bold(name) .. ":\n\n" .. message .. comment))
-- end
-- exports.logValidationWarning = logValidationWarning

-- local function createDidYouMeanMessage(unrecognized: string, allowedOptions: Array<string>): string
-- 	local suggestion = Array.find(allowedOptions, function(option)
-- 		local steps: number = leven(option, unrecognized)
-- 		return steps < 3
-- 	end)
-- 	return if Boolean.toJSBoolean(suggestion) then ("Did you mean %s?"):format(chalk.bold(format(suggestion))) else ""
-- end
-- exports.createDidYouMeanMessage = createDidYouMeanMessage
-- ROBLOX deviation END

return exports
