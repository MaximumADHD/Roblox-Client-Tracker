-- upstream: https://github.com/SamVerschueren/decode-uri-component/blob/v0.2.0/index.js
local RoactNavigationModule = script.Parent.Parent
local Packages = RoactNavigationModule.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local RegExp = require(Packages.RegExp)

-- deviation: define this function to get an equivalent of String.match
-- from JavaScript using our basic RegExp implementation
local function stringMatch(stringValue, regex)
	local currentMatches = regex:exec(stringValue)
	local matches = {}

	while currentMatches do
		local match = currentMatches[1]
		table.insert(matches, match)
		local nextInput = currentMatches.input:sub(currentMatches.index + match:len())
		currentMatches = regex:exec(nextInput)
	end

	return matches
end

local function TypeError(message)
	return message
end

local uriEscapeMatcher = RegExp("(%[a-fA-F0-9]{2})+", "i")

-- deviation: define our own `decodeURIComponent` function, because
-- there isn't one provided by the environment like JavaScript
local function decodeURIComponent(uri)
	local matches = uriEscapeMatcher:exec(uri)

	local result = uri

	if matches then
		local numbers = {}
		for hex in matches[1]:gmatch("%%(%x%x)") do
			local value = tonumber(hex, 16)
			if value >= 0x80 then
				error("malformed URI sequence")
			end
			table.insert(numbers, value)
		end

		result = utf8.char(unpack(numbers))
	end

	return result
end

-- deviation: specify uppercase characters explicitly because the current regex
-- library does not handle the case insensitive flag
local token = "%[a-fA-F0-9]{2}"
-- deviation: remove the `g` flag because the current regex library does not support it
local singleMatcher = RegExp(token, "i")
local multiMatcher = RegExp("(" .. token .. ")+", "i")

local function decodeComponents(components, split)
	-- // Try to decode the entire string first
	local success, result = pcall(decodeURIComponent, table.concat(components, ""))

	if success then
		return result
	end

	-- // Do nothing
	if #components == 1 then
		return components
	end

	split = split or 1

	-- // Split the array in 2 parts
	local left = Array.slice(components, 1, split + 1)
	local right = Array.slice(components, split + 1)

	return Array.concat(decodeComponents(left), decodeComponents(right))
end

local function decode(input)
	local success, result = pcall(decodeURIComponent, input)

	if success then
		return result
	end

	local tokens = stringMatch(input, singleMatcher)

	-- deviation: use a while loop because we redefine `input` within the loop. That
	-- means that the number of tokens can change so we can't iterate with a numeric for
	-- loop with an upper bound defined before the iteration.
	local i = 2
	while tokens[i] do
		input = table.concat(decodeComponents(tokens, i), "")

		tokens = stringMatch(input, singleMatcher)
		i += 1
	end

	return input
end

-- deviation: function to escape the `%` characters for Lua patterns
local function escapePercent(value)
	local escaped = value:gsub("%%", "%%%%")
	return escaped
end

local function customDecodeURIComponent(input)
	-- // Keep track of all the replacements and prefill the map with the `BOM`
	local uFFFD = utf8.char(0xFFFD)
	local replaceMap = {
		["%FE%FF"] = uFFFD .. uFFFD,
		["%FF%FE"] = uFFFD .. uFFFD,
	}

	-- deviation: collect the order of the keys from `replaceMap` so that we can iterate
	-- on the insertion order
	local entries = { "%FE%FF", "%FF%FE" }

	local matches = multiMatcher:exec(input)
	while matches do
		local match = matches[1]

		-- Decode as big chunks as possible

		local ok, replaceWith = xpcall(decodeURIComponent, function(_err)
			local result = decode(match)

			if result ~= match then
				-- deviation: add the key into the entries to preserve the insertion
				-- order of the keys
				if replaceMap[match] == nil then
					table.insert(entries, match)
				end
				replaceMap[match] = result
			end
		end, match)
		if ok then
			if replaceMap[match] == nil then
				table.insert(entries, match)
			end
			replaceMap[match] = replaceWith
		end

		-- deviation: the regex library is not stateful, so we need to explicitly
		-- iterate from the current input starting from the end of the current match
		local nextInput = matches.input:sub(matches.index + match:len())
		matches = multiMatcher:exec(nextInput)
	end

	-- // Add `%C2` at the end of the map to make sure it does not replace the combinator before everything else
	replaceMap["%C2"] = uFFFD -- "\uFFFD"
	table.insert(entries, "%C2")

	-- deviation: instead of getting the keys from the replaceMap, we keep track of them
	-- in a separate array-table from the start. That way we don't lose the insertion order
	-- while iterating on them. That is why the following statement is commented:
	-- local entries = Object.keys(replaceMap)

	for _, key in entries do
		-- // Replace all decoded components
		input = string.gsub(input, escapePercent(key), escapePercent(replaceMap[key]))
	end

	return input
end

local function decodeComponent(encodedURI)
	if type(encodedURI) ~= "string" then
		error(TypeError("Expected `encodedURI` to be of type `string`, got `" .. typeof(encodedURI) .. "`"))
	end

	encodedURI = encodedURI:gsub("%+", " ")

	-- deviation: since our custom `decodeURIComponent` is a lot simpler than the one
	-- provided with JavaScript, we need to fallback directly in the customDecodeURIComponent

	-- local success, result = pcall(function()
	-- 	-- // Try the built in decoder first
	-- 	return decodeURIComponent(encodedURI)
	-- end)

	-- if success then
	-- 	return result
	-- end

	-- // Fallback to a more advanced decoder
	return customDecodeURIComponent(encodedURI)
end

return decodeComponent
