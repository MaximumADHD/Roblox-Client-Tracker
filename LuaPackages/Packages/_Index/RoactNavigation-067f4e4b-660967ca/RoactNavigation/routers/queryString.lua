-- upstream: https://github.com/sindresorhus/query-string/blob/v6.11.1/index.js
--[[
MIT License

Copyright (c) Sindre Sorhus <sindresorhus@gmail.com> (sindresorhus.com)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
]]

local HttpService = game:GetService("HttpService")

local routersModule = script.Parent
local RoactNavigationModule = routersModule.Parent
local Packages = RoactNavigationModule.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object
local String = LuauPolyfill.String
local Number = LuauPolyfill.Number
local RegExp = require(Packages.RegExp)

local function TypeError(message)
	return message
end

local function encodeURIComponent(value)
	return HttpService:UrlEncode(value)
end

local function strictUriEncode(value: string): string
	return encodeURIComponent(value):gsub("[!'%(%)%*]", function(x)
		return ("%%%x"):format(x:byte()):upper()
	end)
end

local decodeComponent = require(routersModule.decodeURIComponent)
local splitOnFirst = require(routersModule.splitOnFirst)

-- deviation: pre-declare function declarations
local encode
local decode

local exports = {}

local function newNumber(number)
	return tonumber(number) or (0 / 0)
end

local function encoderForArrayFormat(options)
	local arrayFormat = options.arrayFormat
	if arrayFormat == "index" then
		return function(key)
			return function(result, value)
				local index = #result
				if options.skipNull and value == nil then
					return result
				end

				if value == nil then
					return Array.concat(result, {
						table.concat({
							encode(key, options),
							"[",
							index,
							"]",
						}, ""),
					})
				end

				return Array.concat(result, {
					table.concat({
						encode(key, options),
						"[",
						encode(index, options),
						"]=",
						encode(value, options),
					}, ""),
				})
			end
		end
	elseif arrayFormat == "bracket" then
		return function(key)
			return function(result, value)
				if options.skipNull and value == nil then
					return result
				end

				if value == nil then
					return Array.concat(result, {
						table.concat({ encode(key, options), "[]" }, ""),
					})
				end

				return Array.concat(result, {
					table.concat({ encode(key, options), "[]=", encode(value, options) }, ""),
				})
			end
		end
	elseif arrayFormat == "comma" or arrayFormat == "separator" then
		return function(key)
			return function(result, value)
				if value == nil or #value == 0 then
					return result
				end

				if #result == 0 then
					return {
						table.concat({ encode(key, options), "=", encode(key, options) }, ""),
					}
				end

				return {
					table.concat({ result, encode(key, options) }, options.arrayFormatSeparator),
				}
			end
		end
	else
		return function(key)
			return function(result, value)
				if options.skipNull and value == nil then
					return result
				end

				if value == nil then
					return Array.concat(result, { encode(key, options) })
				end

				return Array.concat(result, {
					table.concat({ encode(key, options), "=", encode(value, options) }, ""),
				})
			end
		end
	end
end

local function parserForArrayFormat(options)
	local result = nil
	local arrayFormat = options.arrayFormat
	if arrayFormat == "index" then
		return function(key, value, accumulator)
			result = RegExp("\\[(\\d*)\\]$"):exec(key)

			key = key:gsub("%[%d*%]$", "")

			if not result then
				accumulator[key] = value
				return
			end

			if accumulator[key] == nil then
				accumulator[key] = {}
			end

			accumulator[key][result[2]] = value
		end
	elseif arrayFormat == "bracket" then
		return function(key, value, accumulator)
			result = RegExp("(\\[\\])$"):exec(key)
			key = key:gsub("%[%]$", "")

			if not result then
				accumulator[key] = value
				return
			end

			if accumulator[key] == nil then
				accumulator[key] = { value }
				return
			end

			accumulator[key] = Array.concat({}, accumulator[key], value)
		end
	elseif arrayFormat == "comma" or arrayFormat == "separator" then
		return function(key, value, accumulator)
			local isArray = type(value) == "string" and string.find(value, options.arrayFormatSeparator, 1, true) ~= nil
			-- and value.split('').indexOf(options.arrayFormatSeparator) > -1
			local newValue = nil
			if isArray then
				newValue = Array.map(value:split(options.arrayFormatSeparator), function(item)
					return decode(item, options)
				end)
			else
				if value ~= nil then
					newValue = decode(value, options)
				end
			end
			accumulator[key] = newValue
		end
	else
		return function(key, value, accumulator)
			if accumulator[key] == nil then
				accumulator[key] = value
				return
			end

			accumulator[key] = Array.concat({}, accumulator[key], value)
		end
	end
end

local function validateArrayFormatSeparator(value)
	if type(value) ~= "string" or #value ~= 1 then
		error(TypeError("arrayFormatSeparator must be single character string"))
	end
end

function encode(value, options)
	if options.encode then
		if options.strict then
			return strictUriEncode(value)
		end

		return encodeURIComponent(value)
	end

	return value
end

function decode(value, options)
	if options.decode then
		return decodeComponent(value)
	end

	return value
end

local function keysSorter(input)
	if Array.isArray(input) then
		return Array.sort(input)
	end
	if type(input) == "table" then
		return Array.map(
			Array.sort(keysSorter(Object.keys(input)), function(a, b)
				return newNumber(a) - newNumber(b)
			end),
			function(key)
				return input[key]
			end
		)
	end

	return input
end

local function removeHash(input)
	local hashStart = input:find("#")
	if hashStart ~= nil then
		input = input:sub(1, hashStart - 1)
	end

	return input
end

local function getHash(url)
	local hash = ""
	local hashStart = url:find("#")
	if hashStart ~= nil then
		hash = url:sub(hashStart)
	end

	return hash
end

local function extract(input)
	input = removeHash(input)
	local queryStart = input:find("?", 1, true)
	if queryStart == nil then
		return ""
	end

	return input:sub(queryStart + 1)
end

local function parseValue(value, options)
	if
		options.parseNumbers
		and not Number.isNaN(newNumber(value))
		and type(value) == "string"
		and String.trim(value) ~= ""
	then
		value = newNumber(value)
	elseif
		options.parseBooleans
		and value ~= nil
		and (string.lower(value) == "true" or string.lower(value) == "false")
	then
		value = string.lower(value) == "true"
	end

	return value
end

local function parse(input, options)
	options = Object.assign({
		decode = true,
		sort = true,
		arrayFormat = "none",
		arrayFormatSeparator = ",",
		parseNumbers = false,
		parseBooleans = false,
	}, options)

	validateArrayFormatSeparator(options.arrayFormatSeparator)

	local formatter = parserForArrayFormat(options)

	-- // Create an object with no prototype
	local ret = {}

	if type(input) ~= "string" then
		return ret
	end

	input = string.gsub(String.trim(input), "^[%?#&]", "")

	if input == "" then
		return ret
	end

	for _, param in input:split("&") do
		local splitOnFirstResult = splitOnFirst(if options.decode then string.gsub(param, "%+", " ") else param, "=")
		local key = splitOnFirstResult[1]
		local value = splitOnFirstResult[2]

		-- // Missing `=` should be `null`:
		-- // http://w3.org/TR/2012/WD-url-20120524/#collect-url-parameters
		if value ~= nil then
			if options.arrayFormat ~= "comma" then
				value = decode(value, options)
			end
		end
		formatter(decode(key, options), value, ret)
	end

	for key in ret do
		local value = ret[key]
		if type(value) == "table" then --and not Array.isArray(value) then
			for k in value do
				value[k] = parseValue(value[k], options)
			end
		else
			ret[key] = parseValue(value, options)
		end
	end

	if options.sort == false then
		return ret
	end

	local keys = nil
	if options.sort == true then
		keys = Array.sort(Object.keys(ret))
	else
		keys = Array.sort(Object.keys(ret), options.sort)
	end

	return Array.reduce(keys, function(result, key)
		local value = ret[key]

		if Boolean.toJSBoolean(value) and type(value) == "table" and not Array.isArray(value) then
			-- // Sort object keys, not values
			result[key] = keysSorter(value)
		else
			result[key] = value
		end

		return result
	end, {})
end

exports.extract = extract
exports.parse = parse

function exports.stringify(object, options)
	if not object then
		return ""
	end

	options = Object.assign({
		encode = true,
		strict = true,
		arrayFormat = "none",
		arrayFormatSeparator = ",",
	}, options)

	validateArrayFormatSeparator(options.arrayFormatSeparator)

	local formatter = encoderForArrayFormat(options)
	local objectCopy = table.clone(object)

	-- deviation: there is no nil values that can be paired with a key in a Lua table
	-- if options.skipNull then
	-- 	for _, key in Object.keys(objectCopy) do
	-- 		if objectCopy[key] == nil or objectCopy[key] == nil then
	-- 			delete objectCopy[key]
	-- 		end
	-- 	end
	-- end

	local keys = Object.keys(objectCopy)

	if options.sort ~= false then
		Array.sort(keys, options.sort)
	end

	return table.concat(
		Array.filter(
			Array.map(keys, function(key)
				local value = object[key]

				-- if value == nil then
				-- 	return ""
				-- end
				if value == nil then
					return encode(key, options)
				end

				if Array.isArray(value) then
					return table.concat(Array.reduce(value, formatter(key), {}), "&")
				end

				return encode(key, options) + "=" + encode(value, options)
			end),
			function(x)
				return x.length > 0
			end
		),
		"&"
	)
end

function exports.parseUrl(input, options)
	return {
		url = removeHash(input):split("?")[1] or "",
		query = parse(extract(input), options),
	}
end

function exports.stringifyUrl(input, options)
	local url = removeHash(input.url):split("?")[1] or ""
	local queryFromUrl = exports.extract(input.url)
	local parsedQueryFromUrl = exports.parse(queryFromUrl)
	local hash = getHash(input.url)
	local query = Object.assign(parsedQueryFromUrl, input.query)
	local queryString = exports.stringify(query, options)
	if queryString then
		queryString = ("?%s"):format(queryString)
	end

	return ("%s%s%s"):format(url, queryString, hash)
end

return exports
