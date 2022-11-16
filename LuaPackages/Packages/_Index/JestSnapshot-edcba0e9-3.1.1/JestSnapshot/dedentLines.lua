-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-snapshot/src/dedentLines.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  */

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>

local getIndentationLength, dedentLine, hasUnmatchedDoubleQuoteMarks, isFirstLineOfTag, dedentStartTag, dedentMarkup, dedentLines

function getIndentationLength(line: string): number
	local result = string.match(line, "^[ ]+")

	if result == nil then
		return 0
	else
		return result:len() - (result:len() % 2)
	end
end

function dedentLine(line: string): string
	return line:sub(getIndentationLength(line) + 1)
end

-- Return true if:
-- "key": "value has multiple lines\n...
-- "key has multiple lines\n...
function hasUnmatchedDoubleQuoteMarks(string_: string): boolean
	local n = 0

	local i = string.find(string_, '"')

	while i do
		if i == 1 or string.sub(string_, i - 1, i - 1) ~= "\\" then
			n = n + 1
		end

		i = string.find(string_, '"', i + 1)
	end

	return n % 2 ~= 0
end

function isFirstLineOfTag(line: string)
	return string.find(line, "^[ ]*<") ~= nil
end

-- The length of the output array is the index of the next input line.

-- Push dedented lines of start tag onto output and return true;
-- otherwise return false because:
-- * props include a multiline string (or text node, if props have markup)
-- * start tag does not close
function dedentStartTag(input: Array<string>, output: Array<string>): boolean
	local line = input[#output + 1]
	table.insert(output, dedentLine(line))

	if string.find(line, ">") then
		return true
	end

	while #output < #input do
		line = input[#output + 1]

		if hasUnmatchedDoubleQuoteMarks(line) then
			return false -- because props include a multiline string
		elseif isFirstLineOfTag(line) then
			-- Recursion only if props have markup.
			if not dedentMarkup(input, output) then
				return false
			end
		else
			table.insert(output, dedentLine(line))

			if string.find(line, ">") then
				return true
			end
		end
	end

	return false
end

-- Push dedented lines of markup onto output and return true;
-- otherwise return false because:
-- * props include a multiline string
-- * text has more than one adjacent line
-- * markup does not close
function dedentMarkup(input: Array<string>, output: Array<string>): boolean
	local line = input[#output + 1]

	if not dedentStartTag(input, output) then
		return false
	end

	if string.find(input[#output], "/>") then
		return true
	end

	local isText = false
	local stack: Array<number> = {}
	table.insert(stack, getIndentationLength(line))

	while #stack > 0 and #output < #input do
		line = input[#output + 1]

		if isFirstLineOfTag(line) then
			if string.find(line, "</") then
				table.insert(output, dedentLine(line))
				table.remove(stack)
			else
				if not dedentStartTag(input, output) then
					return false
				end

				if not string.find(input[#output], "/>") then
					table.insert(stack, getIndentationLength(line))
				end
			end
			isText = false
		else
			if isText then
				return false -- because text has more than one adjacent line
			end

			local getIndentationLengthOfTag = stack[#stack]
			table.insert(output, line:sub(getIndentationLengthOfTag + 3))
			isText = true
		end
	end

	return #stack == 0
end

-- Return lines unindented by heuristic;
-- otherwise return null because:
-- * props include a multiline string
-- * text has more than one adjacent line
-- * markup does not close
function dedentLines(input: Array<string>): Array<string> | nil
	local output: Array<string> = {}

	while #output < #input do
		local line = input[#output + 1]

		if hasUnmatchedDoubleQuoteMarks(line) then
			return nil
		elseif isFirstLineOfTag(line) then
			if not dedentMarkup(input, output) then
				return nil
			end
		else
			table.insert(output, dedentLine(line))
		end
	end

	return output
end

return dedentLines
