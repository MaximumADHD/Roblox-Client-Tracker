local Packages = script.Parent.Parent

local Cryo = require(Packages.Cryo)
local StringUtilities = require(Packages.StringUtilities)
local StringTrim = StringUtilities.StringTrim
local StringSplit = StringUtilities.StringSplit
local encodeURIComponent = require(script.Parent.encodeURIComponent)
local UrlBase = require(script.Parent.UrlBase)

local GameUrlPatterns = require(script.Parent.UrlPatterns.GameUrlPatterns)
local UserUrlPatterns = require(script.Parent.UrlPatterns.UserUrlPatterns)
local StaticUrlPatterns = require(script.Parent.UrlPatterns.StaticUrlPatterns)
local CatalogUrlPatterns = require(script.Parent.UrlPatterns.CatalogUrlPatterns)

local UrlBuilder = {}

--[[
	UTILITY FUNCTIONS
]]

-- splits by separator, trims whitspaces from each part and filters out empty ones
local function splitAndTrim(input, separator, limit)
	local list = StringSplit(input, separator, limit)
	list = Cryo.List.map(list, function(item)
		return StringTrim(item)
	end)
	list = Cryo.List.filter(list, function(item)
		return #item > 0
	end)
	return list
end

--[[
	PATTERN VALIDATION
]]

-- a value should be a string, number, or a table of strings and numbers only
local function validateValueType(value)
	local valueType = type(value)
	if valueType == "string" then
		return true
	elseif valueType == "number" then
		return true
	elseif valueType == "table" then
		for _, item in ipairs(value) do
			local itemType = type(item)
			if itemType ~= "string" and itemType ~= "number" then
				return false
			end
		end
		return true
	else
		return false
	end
end

-- validate that item is either a literal (no check needed), or a valid placeholder
local function assertPlaceholder(element)
	if string.sub(element, 1, 1) == "{" then
		assert(string.sub(element, -1, -1) == "}", "invalid pattern: placeholder items should end with `}`")
	end
end

-- validate a pattern's path or query element
local function assertElementIsValid(element, inQuery)
	assert(type(element) == "table", "invalid pattern: elements should all be tables")
	if inQuery then
		assert(type(element.name) == "string", "invalid pattern: element name should be a string")
		assert(#element.name > 0, "invalid pattern: element name should not be empty")
	end
	assert(
		type(element.value) == "string" or type(element.value) == "number",
		"invalid pattern: element value should be a string or number"
	)
	if type(element.value) == "string" then
		assertPlaceholder(element.value)
	end
	if element.optional ~= nil then
		assert(type(element.optional) == "boolean", "invalid pattern: element optional should be a boolean")
	end
	if element.default ~= nil then
		assert(
			validateValueType(element.default),
			"invalid pattern: element default should be a string, number, or a table of strings and numbers only"
		)
	end
	if element.collect ~= nil then
		assert(
			element.collect == "multi" or element.collect == "csv",
			"invalid pattern: element optional should be one of `multi`, `csv`"
		)
	end
end

-- validate a full pattern object, could use a validator library in the future
local function assertPatternIsValid(pattern)
	assert(type(pattern.base) == "string", "invalid pattern: base should be a string")
	assert(#pattern.base > 0, "invalid pattern: base should not be empty")
	assert(type(pattern.path) == "table", "invalid pattern: path should be a table")
	for _, element in ipairs(pattern.path) do
		assertElementIsValid(element, false)
	end
	if pattern.query ~= nil then
		assert(type(pattern.query) == "table", "invalid pattern: query should be a table")
	end
	if type(pattern.query) == "table" then
		for _, element in ipairs(pattern.query) do
			assertElementIsValid(element, true)
		end
	end
	if pattern.hash ~= nil then
		assert(type(pattern.hash) == "string", "invalid pattern: hash should be a string")
	end
end

--[[
	STRING PATTERNS
]]

-- converts a "/" or "&" delimited string into a list or path/query elements
local function buildElementsFromString(elements, inQuery)
	local separator = inQuery and "&" or "/"
	local elements = splitAndTrim(elements, separator)
	elements = Cryo.List.map(elements, function(element)
		local elementName = nil
		local elementValue = StringTrim(element)
		local elementOptional = nil
		local elementDefault = nil
		local elementCollect = nil
		if inQuery then
			local queryitems = StringSplit(elementValue, "=", 2)
			elementName = StringTrim(queryitems[1])
			elementValue = queryitems[2]
			if string.sub(elementName, 1, 1) == "{" then
				elementName = StringTrim(elementName, "{}")
				elementName = StringSplit(elementName, "|", 2)[1]
				if elementValue == nil then
					elementValue = queryitems[1]
				end
				elementName = StringTrim(elementName)
			end
			elementCollect = "multi"
		end
		if elementValue ~= nil and string.find(elementValue, "^{.*}$") then
			elementValue = StringTrim(elementValue, "{}")
			local valueitems = StringSplit(elementValue, "|", 2)
			elementValue = StringTrim(valueitems[1])
			if #valueitems > 1 then
				elementOptional = true
				if #(valueitems[2]) > 1 then
					elementDefault = valueitems[2]
				end
			end
			elementValue = "{" .. elementValue .. "}"
		end
		return {
			name = elementName,
			value = elementValue,
			optional = elementOptional,
			default = elementDefault,
			collect = elementCollect,
		}
	end)
	return elements
end

local function buildQueryStringFromTable(elements)
	local stringpattern = {}
	for name, value in pairs(elements) do
		table.insert(stringpattern, name .. "=" .. value)
	end
	return table.concat(stringpattern, "&")
end

-- expands a pattern, replacing string parts with element tables
local function simplifyPattern(pattern)
	local patternbase = pattern.base
	local patternpath = pattern.path
	local patternquery = pattern.query
	local patternhash = pattern.hash
	if patternbase ~= nil and UrlBase[string.upper(patternbase)] ~= nil then
		patternbase = UrlBase[string.upper(patternbase)]
	end
	if type(patternpath) == "string" then
		patternpath = buildElementsFromString(patternpath, false)
	end
	if type(patternquery) == "table" and patternquery[1] == nil then
		patternquery = buildQueryStringFromTable(patternquery)
	end
	if type(patternquery) == "string" then
		patternquery = buildElementsFromString(patternquery, true)
	end
	return {
		base = patternbase,
		path = patternpath,
		query = patternquery,
		hash = patternhash,
	}
end

--[[
	PATTERN RESOLUTION
]]

local function concatValues(elementValues, inQuery)
	-- suppress all empty values, avoids double slashes and empty query params
	elementValues = Cryo.List.filter(elementValues, function(value)
		if inQuery then
			return #splitAndTrim(value, "=") > 1
		end
		return #value > 0
	end)
	local separator = inQuery and "&" or "/"
	return table.concat(elementValues, separator)
end

-- resolves the element to a string, from the given input table
local function resolveElement(element, input, inQuery)
	if input == nil then
		input = {}
	end
	local elementValues
	if type(element.value) == "string" and string.sub(element.value, 1, 1) == "{" then
		elementValues = input[string.sub(element.value, 2, -2)]
		if elementValues == nil then
			elementValues = element.default
		end
		if not element.optional then
			assert(elementValues ~= nil, "UrlBuilder: missing parameter: `" .. element.value .. "`")
		end
		if elementValues == nil then
			-- at this point optional == true, so we remove the element from output
			elementValues = {}
		end
		assert(
			validateValueType(elementValues),
			"UrlBuilder: invalid parameter: `" .. element.value .. "`, " ..
				"should be a string, number, or a table of strings and numbers only"
		)
	else
		elementValues = element.value
	end
	if type(elementValues) ~= "table" then
		elementValues = {elementValues}
	end
	elementValues = Cryo.List.map(elementValues, function(value)
		return encodeURIComponent(tostring(value))
	end)
	if inQuery then
		-- we are resolving a query parameter
		if element.collect == "csv" then
			elementValues = {table.concat(elementValues, "%2C")} -- ","
		end
		elementValues = Cryo.List.map(elementValues, function(value)
			return encodeURIComponent(element.name) .. "=" .. value
		end)
	end
	return concatValues(elementValues, inQuery)
end

local function resolveElementList(elementList, input, inQuery)
	local elementValues = Cryo.List.map(elementList or {}, function(element)
		return resolveElement(element, input, inQuery)
	end)
	return concatValues(elementValues, inQuery)
end

--[[
	PATTERN CONSTRUCTION
]]

--[[
	creates a new URL builder function for the given pattern
	the function can then be called with an input (table) to generate a URL

	pattern (table): pattern specification with the following:
		* base (string): the domain and base path for the URL, eg "http://static.roblox.com"
			* the UrlBase module exposes a list of available APIs, or can be used to properly build a new base
		* path (string or table): list of path elements, one of
			* (string): "/" delimited string, each element can be a literal or a "{}" enclosed placeholder
			* (table): list of full path elements, see details below
		* query (optional table): list of querystring elements, one of
			* (string) : query string, with optional placeholders, eg "imageId={images}&size=140"
			* (table): dictionary of {name = value, ...} pairs, eg {imageId = "{images}", size = 140}
			* (table): list of full query elements, see details below
		* hash (optional string): will be appended AS IS (no placeholders or UrlEncode), separated by "#"

	path and query elements are tables with the following (some only apply to query elements):
			* name (string): *query only* the name of the query parameter
			* value (string or number): value of the element, can be a literal or a "{}" enclosed placeholder
			* optional (optional boolean): marks the element as optional, if placeholder value can't be found
			* default (optional string): value if placeholder can't be found, implies "optional = true"
			* collect (optional string): *query only* how to resolve table values, one of
				* "multi": param and value will be repeated, eg "p=v1&p=v2&p=v3", this is the default
				* "csv": one param, values will be concatenated, eg "p=v1,v2,v3"
]]
function UrlBuilder.new(pattern)
	pattern = simplifyPattern(pattern)
	assertPatternIsValid(pattern)
	return function(input, expected)
		local url = StringTrim(pattern.base, "/", {right = true})
		local path = resolveElementList(pattern.path, input, false)
		if #path > 0 then
			url = url .. "/" .. path
		end
		-- append slash if URL only consists of "proto://domain"
		if string.match(url, "[^/]/[^/]") == nil then
			url = url .. "/"
		end
		local query = resolveElementList(pattern.query, input, true)
		if #query > 0 then
			url = url .. "?" .. query
		end
		if pattern.hash and #pattern.hash > 0 then
			url = url .. "#" .. pattern.hash
		end
		-- testing, for development use only
		if expected then
			if url ~= expected then
				warn("UrlBuilder: unexpected output for pattern:")
				warn("UrlBuilder: expected `" .. expected .. "`")
				warn("UrlBuilder: actual `" .. url .. "`")
			end
			return expected
		end
		return url
	end
end

--[[
	creates a new URL builder function from a string pattern

	pattern format: "base:path/to/{endpoint}?param1={value1}&{param2}"
]]
function UrlBuilder.fromString(pattern)
	local patternitems = StringSplit(pattern, ":", 2)
	if #patternitems < 2 then
		patternitems = {"", patternitems[1]}
	end
	local patternbase = patternitems[1]
	patternitems = StringSplit(patternitems[2], "%#", 2)
	local patternhash = patternitems[2] or ""
	patternitems = StringSplit(patternitems[1], "%?", 2)
	local patternpath = patternitems[1] or ""
	local patternquery = patternitems[2] or ""
	-- in case ":" was the protocol delimiter of a full url (eg http://domain/...)
	if string.sub(patternpath, 1, 2) == "//" then
		patternitems = StringSplit(string.sub(patternpath, 3), "/", 2)
		patternbase = patternbase .. "://" .. patternitems[1]
		patternpath = patternitems[2] or "/"
	end
	return UrlBuilder.new({
		base = StringTrim(patternbase),
		path = StringTrim(patternpath),
		query = StringTrim(patternquery),
		hash = patternhash,
	})
end

--[[
	CONVENIENCE SHORTHANDS
]]

function UrlBuilder.addQueryString(url, query)
	local pattern = StringTrim(url)
	local queryindex = string.find(pattern, "%?")
	if queryindex == nil then
		pattern = pattern .. "?"
	elseif queryindex < #pattern then
		pattern = pattern .. "&"
	end
	local queryitems = Cryo.Dictionary.keys(query)
	queryitems = Cryo.List.map(queryitems, function(param)
		return "{" .. param .. "}"
	end)
	queryitems = table.concat(queryitems, "&")
	pattern = pattern .. queryitems
	return UrlBuilder.fromString(pattern)(query)
end

--[[
	PATTERN REGISTRATION
]]

UrlBuilder.game = GameUrlPatterns(UrlBuilder)
UrlBuilder.user = UserUrlPatterns(UrlBuilder)
UrlBuilder.catalog = CatalogUrlPatterns(UrlBuilder)
UrlBuilder.static = StaticUrlPatterns(UrlBuilder)

return UrlBuilder
