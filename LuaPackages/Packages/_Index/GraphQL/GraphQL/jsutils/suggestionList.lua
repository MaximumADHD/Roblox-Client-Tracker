--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/jsutils/suggestionList.js
local jsutils = script.Parent
local graphql = jsutils.Parent
local Packages = graphql.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>

local naturalCompare = require(script.Parent.naturalCompare).naturalCompare

type LexicalDistance = {
	_input: string,
	_inputLowerCase: string,
	_inputArray: Array<number>,
	_rows: { Array<number> },

	new: (input: string) -> LexicalDistance,

	measure: (self: LexicalDistance, option: string, threshold: number) -> number | nil,
}

local LexicalDistance: LexicalDistance = {} :: LexicalDistance

--[[
 * Given an invalid input string and a list of valid options, returns a filtered
 * list of valid options sorted based on their similarity with the input.
 ]]
local function suggestionList(input: string, options: Array<string>): Array<string>
	local optionsByDistance = {}
	local lexicalDistance = LexicalDistance.new(input)

	local threshold = math.floor(input:len() * 0.4) + 1
	for i = 1, #options do
		local option = options[i]
		local distance = lexicalDistance:measure(option, threshold)
		if distance ~= nil then
			optionsByDistance[option] = distance
		end
	end

	local keys = Object.keys(optionsByDistance)

	table.sort(keys, function(a, b)
		local distanceDiff = optionsByDistance[a] - optionsByDistance[b]
		if distanceDiff ~= 0 then
			return distanceDiff < 0
		end
		return naturalCompare(a, b) < 0
	end)

	return keys
end

local stringToArray;

--[[
 * Computes the lexical distance between strings A and B.
 *
 * The "distance" between two strings is given by counting the minimum number
 * of edits needed to transform string A into string B. An edit can be an
 * insertion, deletion, or substitution of a single character, or a swap of two
 * adjacent characters.
 *
 * Includes a custom alteration from Damerau-Levenshtein to treat case changes
 * as a single edit which helps identify mis-cased values with an edit distance
 * of 1.
 *
 * This distance can be useful for detecting typos in input or sorting
 ]]
(LexicalDistance :: any).__index = LexicalDistance

function LexicalDistance.new(input: string)
	local self = (setmetatable({}, LexicalDistance) :: any) :: LexicalDistance
	self._input = input
	self._inputLowerCase = input:lower()
	self._inputArray = stringToArray(self._inputLowerCase)

	local inputLength = input:len()
	self._rows = {
		table.create(inputLength + 1, 0),
		table.create(inputLength + 1, 0),
		table.create(inputLength + 1, 0),
	}
	return self
end

function LexicalDistance:measure(option: string, threshold: number): number | nil
	if self._input == option then
		return 0
	end

	local optionLowerCase = option:lower()

	-- // Any case change counts as a single edit
	if self._inputLowerCase == optionLowerCase then
		return 1
	end

	local a = stringToArray(optionLowerCase)
	local b = self._inputArray

	if #a < #b then
		local tmp = a
		a = b
		b = tmp
	end

	local aLength = #a
	local bLength = #b

	if aLength - bLength > threshold then
		return nil
	end

	local rows = self._rows
	for j = 0, bLength do
		rows[1][j + 1] = j
	end

	for i = 1, aLength do
		local upRow = rows[(i - 1) % 3 + 1]
		local currentRow = rows[i % 3 + 1]

		currentRow[1] = i
		local smallestCell = i
		for j = 1, bLength do
			local cost = a[i] == b[j] and 0 or 1

			local currentCell = math.min(
				upRow[j + 1] + 1, -- // delete
				currentRow[j] + 1, -- // insert
				upRow[j] + cost -- // substitute
			)

			if i > 1 and j > 1 and a[i] == b[j - 1] and a[i - 1] == b[j] then
				-- // transposition
				local doubleDiagonalCell = rows[(i - 2) % 3 + 1][j - 1]
				currentCell = math.min(currentCell, doubleDiagonalCell + 1)
			end

			if currentCell < smallestCell then
				smallestCell = currentCell
			end

			currentRow[j + 1] = currentCell
		end

		-- // Early exit, since distance can't go smaller than smallest element of the previous row.
		if smallestCell > threshold then
			return nil
		end
	end

	local distance = rows[aLength % 3 + 1][bLength + 1]
	if distance <= threshold then
		return distance
	end

	return nil
end

function stringToArray(str: string): Array<number>
	local strLength = str:len()
	local array = {}
	for i = 1, strLength do
		array[i] = str:byte(i)
	end
	return array
end

return {
	suggestionList = suggestionList,
}
