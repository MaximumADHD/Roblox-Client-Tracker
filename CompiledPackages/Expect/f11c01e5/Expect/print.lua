-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/expect/src/print.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  *
--  */

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Number = LuauPolyfill.Number

local JestMatcherUtils = require(Packages.JestMatcherUtils)
local EXPECTED_COLOR = JestMatcherUtils.EXPECTED_COLOR
local INVERTED_COLOR = JestMatcherUtils.INVERTED_COLOR
local RECEIVED_COLOR = JestMatcherUtils.RECEIVED_COLOR
local printReceived = JestMatcherUtils.printReceived
local stringify = JestMatcherUtils.stringify

type Array<T> = LuauPolyfill.Array<T>

-- Format substring but do not enclose in double quote marks.
-- The replacement is compatible with pretty-format package.
local function printSubstring(val: string): string
	val = val:gsub("(\\)", "\\%1")
	val = val:gsub('(")', "\\%1")
	return val
end

local function printReceivedStringContainExpectedSubstring(
	received: string,
	start: number,
	length: number -- not end
): string
	return RECEIVED_COLOR('"' .. printSubstring(received:sub(0, start - 1)))
		.. INVERTED_COLOR(printSubstring(received:sub(start, start + length - 1)))
		.. RECEIVED_COLOR(printSubstring(received:sub(start + length, #received)))
		.. '"'
end

local function printReceivedStringContainExpectedResult(received: string, result): string
	-- result passed in should be the result of making a call to RegExp:exec
	if result == nil then
		return printReceived(received)
	else
		return printReceivedStringContainExpectedSubstring(received, result.index, #result[1])
	end
end

-- The serialized array is compatible with pretty-format package min option.
-- However, items have default stringify depth (instead of depth - 1)
-- so expected item looks consistent by itself and enclosed in the array.
local function printReceivedArrayContainExpectedItem(received: Array<any>, index: number): string
	local receivedMap = {}
	for i, item in ipairs(received) do
		local stringified = stringify(item)
		if i == index then
			receivedMap[i] = INVERTED_COLOR(stringified)
		else
			receivedMap[i] = RECEIVED_COLOR(stringified)
		end
	end

	return RECEIVED_COLOR("{") .. table.concat(receivedMap, RECEIVED_COLOR(", ")) .. RECEIVED_COLOR("}")
end

local function printCloseTo(receivedDiff: number, expectedDiff: number, precision: number, isNot: boolean): string
	local receivedDiffString = stringify(receivedDiff)
	local expectedDiffString

	if receivedDiffString:find("e") then
		receivedDiffString = receivedDiffString:gsub("%+0", "+")
		receivedDiffString = receivedDiffString:gsub("%-0", "-")

		expectedDiffString = Number.toExponential(expectedDiff, 0)
	else
		if 0 <= precision and precision < 20 then
			local stringFormat = "%." .. precision + 1 .. "f"
			expectedDiffString = string.format(stringFormat, expectedDiff)
		else
			expectedDiffString = stringify(expectedDiff)
		end
	end

	if isNot then
		return string.format(
			"Expected precision:  %s  %s\n" .. "Expected difference: %s< %s\n" .. "Received difference: %s  %s",
			"      ",
			stringify(precision),
			"never ",
			EXPECTED_COLOR(expectedDiffString),
			"      ",
			RECEIVED_COLOR(receivedDiffString)
		)
	else
		return string.format(
			"Expected precision:  %s  %s\n" .. "Expected difference: %s< %s\n" .. "Received difference: %s  %s",
			"",
			stringify(precision),
			"",
			EXPECTED_COLOR(expectedDiffString),
			"",
			RECEIVED_COLOR(receivedDiffString)
		)
	end
end

local function printExpectedConstructorName(label: string, expected): string
	return printConstructorName(label, expected, false, true) .. "\n"
end

local function printExpectedConstructorNameNot(label: string, expected): string
	return printConstructorName(label, expected, true, true) .. "\n"
end

local function printReceivedConstructorName(label: string, received): string
	return printConstructorName(label, received, false, false) .. "\n"
end

--[[
	deviation: printable function not present in upstream
	Function that determines if an object is printable i.e. if the object
	doesn't have tostring output that is its memory address
]]
local function printable(obj)
	if typeof(obj) == "table" then
		return tostring(obj):find("table: 0x") == nil
	elseif typeof(obj) == "function" then
		return tostring(obj):find("function: 0x") == nil
	elseif typeof(obj) == "userdata" then
		return tostring(obj):find("userdata: 0x") == nil
	elseif typeof(obj) == "thread" then
		return tostring(obj):find("thread: 0x") == nil
	end

	return true
end

-- Do not call function if received is equal to expected.
local function printReceivedConstructorNameNot(label: string, received, expected): string
	local retval
	if
		typeof(tostring(expected)) == "string"
		and #tostring(expected) ~= 0
		and typeof(tostring(received)) == "string"
		and #tostring(received) ~= 0
	then
		if printable(expected) and printable(received) then
			retval = printConstructorName(label, received, true, false)

			if getmetatable(received) and getmetatable(received).__index == expected then
				retval = retval .. " extends "
			else
				retval = retval .. " extends … extends "
			end
			retval = retval .. EXPECTED_COLOR(tostring(expected)) .. "\n"
			return retval
		else
			return printConstructorName(label, received, true, false) .. "\n"
		end
	else
		return printConstructorName(label, received, false, false) .. "\n"
	end
end

--[[
	deviation: upstream would print stuff like
		"YourClass name is not a string"
		"YourClass name is an empty string"
	but we omit the "name" in the result since we don't have a name property

	deviation: constructor does not have Function type annotation
]]
function printConstructorName(label: string, constructor: any, isNot: boolean, isExpected: boolean): string
	-- ROBLOX deviation: omitted handling for tostring() returning non-string as
	-- tostring() always returns string
	local retval = label .. ": "
	if not isNot then
		retval = retval .. ""
	else
		if isExpected then
			retval = retval .. "never "
		else
			retval = retval .. "      "
		end
	end

	if printable(constructor) then
		if #tostring(constructor) == 0 then
			return string.format("%s name is an empty string", label)
		end

		if isExpected then
			retval = retval .. EXPECTED_COLOR(tostring(constructor))
		else
			retval = retval .. RECEIVED_COLOR(tostring(constructor))
		end

		return retval
	else
		local obj = "{ "

		local finished = true
		local started = false

		for key, value in pairs(constructor) do
			-- if we find that we can't print the first few key value pairs
			-- because they aren't nicely printable, we default to
			-- printing the table address with the original retval
			-- the only exception we make is if the key is a __ metamethod

			local kv_pair = nil
			if printable(key) and printable(value) then
				kv_pair = string.format("%s: %s, ", stringify(key), stringify(value))
				-- We don't print key values for metamethods since they don't
				-- provide us with any additional information
			elseif printable(key) and key:find("__") ~= 1 then
				kv_pair = string.format("%s, ", stringify(key))
			end

			-- stop printing key value pairs and append an ellipsis if it exceeds a specific length
			if kv_pair then
				if #obj + #kv_pair > 64 then
					finished = false
					break
				end

				started = true
				obj = obj .. kv_pair
			end
		end

		-- if we were never able to actually create an obj with the
		-- content of the table because the first #kv_pair was too big,
		-- we default to printing the table address with original retval
		if started == false then
			if isExpected then
				return retval .. EXPECTED_COLOR(tostring(constructor))
			end
			return retval .. RECEIVED_COLOR(tostring(constructor))
		end

		if finished then
			-- get rid of trailing comma
			obj = obj:sub(1, -3)
			obj = obj .. " }"
		else
			obj = obj .. "... }"
		end

		if isExpected then
			return retval .. EXPECTED_COLOR(obj)
		end
		return retval .. RECEIVED_COLOR(obj)
	end
end

return {
	printReceivedStringContainExpectedSubstring = printReceivedStringContainExpectedSubstring,
	printReceivedStringContainExpectedResult = printReceivedStringContainExpectedResult,
	printReceivedArrayContainExpectedItem = printReceivedArrayContainExpectedItem,
	printCloseTo = printCloseTo,
	printExpectedConstructorName = printExpectedConstructorName,
	printExpectedConstructorNameNot = printExpectedConstructorNameNot,
	printReceivedConstructorName = printReceivedConstructorName,
	printReceivedConstructorNameNot = printReceivedConstructorNameNot,
}
