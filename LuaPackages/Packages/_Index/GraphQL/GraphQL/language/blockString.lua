--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/language/blockString.js

local language = script.Parent
local src = language.Parent
local Packages = src.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local String = LuauPolyfill.String

-- deviation: pre-declare functions
local getBlockStringIndentation
local dedentBlockStringValue
local printBlockString

function dedentBlockStringValue(rawString: string): string
	-- Expand a block string's raw value into independent lines.
	local lines = String.split(rawString, { "\r\n", "\n", "\r" })

	-- Remove common indentation from all lines but first.
	local commonIndent = getBlockStringIndentation(rawString)

	if commonIndent ~= 0 then
		for i = 2, #lines do
			lines[i] = String.slice(lines[i], commonIndent + 1)
		end
	end

	-- Remove leading and trailing blank lines.
	local startLine = 0
	while startLine < #lines and isBlank(lines[startLine + 1]) do
		startLine = startLine + 1
	end

	-- Return a string of the lines joined with U+000A.
	local endLine = #lines
	while endLine > startLine and isBlank(lines[endLine - 1 + 1]) do
		endLine = endLine - 1
	end

	-- Return a string of the lines joined with U+000A.
	return Array.join(Array.slice(lines, startLine + 1, endLine + 1), "\n")
end

function isBlank(str: string): boolean
	for i = 1, #str do
		local charAtIndex = string.sub(str, i, i)
		if charAtIndex ~= " " and charAtIndex ~= "\t" then
			return false
		end
	end

	return true
end

function getBlockStringIndentation(value: string): number
	local isFirstLine = true
	local isEmptyLine = true
	local indent = 0
	local commonIndent = nil

	local i = 1
	local valueLen = string.len(value)
	while i <= valueLen do
		local charAtIndex = String.charCodeAt(value, i)
		if charAtIndex == 13 then -- \r
			if String.charCodeAt(value, i + 1) == 10 then
				i = i + 1 -- skip \r\n as one symbol
			end
			-- falls through
		end
		if charAtIndex == 10 then -- \n
			isFirstLine = false
			isEmptyLine = true
			indent = 0
		elseif charAtIndex == 9 or charAtIndex == 32 then -- \t or <space>
			indent += 1
		else
			if
				isEmptyLine
				and isFirstLine ~= true
				and (commonIndent == nil or indent < commonIndent)
			then
				commonIndent = indent
			end

			isEmptyLine = false
		end

		i += 1
	end

	return commonIndent and commonIndent or 0
end

function printBlockString(
	value: string,
	_indentation: string?,
	_preferMultipleLines: boolean?
): string
	local indentation = _indentation or ""
	local preferMultipleLines = if _preferMultipleLines == nil then false else _preferMultipleLines
	local isSingleLine = string.find(value, "\n") == nil
	local hasLeadingSpace = string.sub(value, 1, 1) == " " or string.sub(value, 1, 1) == "\t"
	local hasTrailingQuote = string.sub(value, #value, #value) == '"'
	local hasTrailingSlash = string.sub(value, #value, #value) == "\\"
	local printAsMultipleLines = isSingleLine ~= true
		or hasTrailingQuote
		or hasTrailingSlash
		or preferMultipleLines

	local result = ""
	-- Format a multi-line block quote to account for leading space.
	if printAsMultipleLines and (isSingleLine and hasLeadingSpace) ~= true then
		result = result .. "\n" .. indentation
	end
	result = result
		.. (indentation ~= "" and string.gsub(value, "\n", "\n" .. indentation) or value)
	if printAsMultipleLines then
		result = result .. "\n"
	end
	return '"""' .. string.gsub(result, '"""', '\\"""') .. '"""'
end

return {
	getBlockStringIndentation = getBlockStringIndentation,
	dedentBlockStringValue = dedentBlockStringValue,
	printBlockString = printBlockString,
}
