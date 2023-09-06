-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-each/src/validation.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 ]]
local Packages = script.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Error = LuauPolyfill.Error
local String = LuauPolyfill.String
type Array<T> = LuauPolyfill.Array<T>

local exports = {}

local chalk = require(Packages.ChalkLua)

local typesModule = require(Packages.JestTypes)
type Global_TemplateData = typesModule.Global_TemplateData
local pretty = require(Packages.PrettyFormat).format

-- ROBLOX deviation: predefine variables
local isTaggedTemplateLiteral, isEmptyString, isEmptyTable, pluralize

type TemplateData = Global_TemplateData

local EXPECTED_COLOR = chalk.green
local RECEIVED_COLOR = chalk.red

local function validateArrayTable(table_: unknown): ()
	-- ROBLOX deviation START: need a tableArr variable to help Luau analyze
	if not Array.isArray(table_) then
		error(
			Error.new(
				"`.each` must be called with an Array or Tagged Template Literal.\n\n"
					.. ("Instead was called with: %s\n"):format(pretty(table_, { maxDepth = 1, min = true }))
			)
		)
	end

	local tableArr = table_ :: Array<unknown>
	-- ROBLOX deviation END

	if isTaggedTemplateLiteral(tableArr) then
		if isEmptyString(tableArr[1]) then
			error(Error.new("Error: `.each` called with an empty Tagged Template Literal of table data.\n"))
		end
		error(
			Error.new(
				"Error: `.each` called with a Tagged Template Literal with no data, remember to interpolate with ${expression} syntax.\n"
			)
		)
	end

	if isEmptyTable(tableArr) then
		error(Error.new("Error: `.each` called with an empty Array of table data.\n"))
	end
end
exports.validateArrayTable = validateArrayTable

function isTaggedTemplateLiteral(array: any)
	return array.raw ~= nil
end

function isEmptyTable(table_: Array<unknown>)
	return #table_ == 0
end

function isEmptyString(str: string | unknown)
	return typeof(str) == "string" and String.trim(str) == ""
end

local function validateTemplateTableArguments(headings: Array<string>, data: TemplateData): ()
	-- ROBLOX deviation START: dealing with arrays instead of a variadic list of values, error if any has less or more elements
	Array.forEach(data, function(array, index)
		local countDifference = #headings - #array
		local missingData = if countDifference >= 0 then countDifference else (countDifference - #headings)

		if missingData ~= 0 then
			error(
				Error.new(
					("%s arguments supplied for given headings:\n"):format(
						if countDifference > 0 then "Not enough" else "Too many"
					)
						.. tostring(EXPECTED_COLOR(Array.join(headings, " | ")))
						.. "\n\n"
						.. "Received:\n"
						.. tostring(RECEIVED_COLOR(pretty(data)))
						.. "\n\n"
						.. ("%s %s %s in row %d"):format(
							if countDifference > 0 then "Missing" else "Remove",
							RECEIVED_COLOR(tostring(missingData)),
							pluralize("argument", missingData),
							index
						)
				)
			)
		end
	end)
	-- ROBLOX deviation END
end
exports.validateTemplateTableArguments = validateTemplateTableArguments

function pluralize(word: string, count: number)
	return word .. (if count == 1 then "" else "s")
end

-- ROBLOX deviation: does not work the same as upstream (single lines supported/preferred)
local START_OF_LINE = "^"
-- local NEWLINE = "\n"
local HEADING = "s*[^%.*]+s*"
-- local PIPE = "|"
-- local REPEATABLE_HEADING = ("(%s%s)*"):format(PIPE, HEADING)
-- local HEADINGS_FORMAT = START_OF_LINE .. NEWLINE .. HEADING .. REPEATABLE_HEADING .. NEWLIN
local END_OF_LINE = "$"
local HEADINGS_FORMAT = START_OF_LINE .. HEADING .. END_OF_LINE
-- ROBLOX deviation END

local function extractValidTemplateHeadings(headings: string): string
	-- ROBLOX deviation START: get lines with value, return the first one, check for spaces in headings
	local match = headings:match(HEADINGS_FORMAT)
	local matches, hasEmptySpacesInHeading
	if match then
		matches = Array.filter(String.split(match, "\n"), function(line)
			return String.trim(line) ~= ""
		end)
	end
	if matches and #matches > 0 then
		local headings_ = Array.map(String.split(matches[1], "|"), function(heading)
			return String.trim(heading)
		end)
		hasEmptySpacesInHeading = Array.some(headings_, function(heading)
			return heading:match("%s") ~= nil
		end)
	end

	if match == nil or hasEmptySpacesInHeading then
		error(
			Error.new(
				"Table headings do not conform to expected format:\n\n"
					.. EXPECTED_COLOR("heading1 | headingN")
					.. "\n\n"
					.. "Received:\n\n"
					.. RECEIVED_COLOR(pretty(headings))
			)
		)
	end
	-- ROBLOX deviation END
	return matches[1]
end
exports.extractValidTemplateHeadings = extractValidTemplateHeadings

return exports
