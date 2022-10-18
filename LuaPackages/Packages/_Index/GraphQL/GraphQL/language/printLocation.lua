--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/language/printLocation.js
local language = script.Parent
local srcWorkspace = language.Parent
local Packages = srcWorkspace.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
type Array<T> = LuauPolyfill.Array<T>
local String = LuauPolyfill.String

local getLocation = require(language.location).getLocation

-- deviation: pre-declare functions
local whitespace
local leftPad
local printSourceLocation
local printPrefixedLines

-- /**
--  * Render a helpful description of the location in the GraphQL Source document.
--  */
local function printLocation(location)
	return printSourceLocation(location.source, getLocation(location.source, location.start))
end

-- /**
--  * Render a helpful description of the location in the GraphQL Source document.
--  */
function printSourceLocation(source, sourceLocation): string
	local firstLineColumnOffset = source.locationOffset.column - 1
	local body = whitespace(firstLineColumnOffset) .. source.body

	local lineIndex = sourceLocation.line - 1 + 1 -- convert JS 0-based index to Lua 1-based index
	local lineOffset = source.locationOffset.line - 1
	local lineNum = sourceLocation.line + lineOffset

	local columnOffset = sourceLocation.line == 1 and firstLineColumnOffset or 0
	local columnNum = sourceLocation.column + columnOffset
	local locationStr = source.name .. ":" .. lineNum .. ":" .. columnNum .. "\n"

	local lines = String.split(body, { "\r\n", "\n", "\r" })
	local locationLine = lines[lineIndex]

	-- // Special case for minified documents
	if string.len(locationLine) > 120 then
		local subLineIndex = math.floor(columnNum / 80) + 1 -- convert JS 0-based index to Lua 1-based index
		local subLineColumnNum = columnNum % 80
		local subLines = {}
		for i = 1, string.len(locationLine), 80 do
			table.insert(subLines, String.slice(locationLine, i, i + 80))
		end
		return (
			locationStr
			.. printPrefixedLines(Array.concat(
				{ { tostring(lineNum), subLines[1] } },
				Array.map(Array.slice(subLines, 2, subLineIndex + 1), function(subLine)
					return { "", subLine }
				end),
				{ { " ", whitespace(subLineColumnNum - 1) .. "^" } },
				{ { "", subLines[subLineIndex + 1] } }
			))
		)
	end

	return (
		locationStr
		.. printPrefixedLines({
			-- // Lines specified like this: ["prefix", "string"],
			-- ROBLOX Luau TODO: Luau doesn't understand packed array types
			{ lineNum - 1, lines[lineIndex - 1] } :: Array<any>,
			{ lineNum, locationLine } :: Array<any>,
			{ "", whitespace(columnNum - 1) .. "^" },
			{ lineNum + 1, lines[lineIndex + 1] } :: Array<any>,
		})
	)
end

function printPrefixedLines(lines): string
	local existingLines = Array.filter(lines, function(prev)
		local line = prev[2]
		return line ~= nil
	end)

	local padLen = math.max(table.unpack(Array.map(existingLines, function(val)
		local prefix = val[1]
		return string.len(prefix)
	end)))
	return Array.join(
		Array.map(existingLines, function(val)
			local prefix = val[1]
			local line = val[2]
			return leftPad(padLen, prefix) .. (line and line ~= "" and " | " .. line or " |")
		end),
		"\n"
	)
end

function whitespace(len: number): string
	return string.rep(" ", len)
end

function leftPad(len: number, str: string): string
	return whitespace(len - string.len(str)) .. str
end

return {
	printSourceLocation = printSourceLocation,
	printLocation = printLocation,
}
