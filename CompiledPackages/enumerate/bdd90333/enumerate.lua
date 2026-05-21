--!strict
local function strict(t: { [string]: any }, maybeName: string?)
	local name = maybeName or tostring(t)

	return setmetatable(t, {
		__index = function(_self, key)
			local message = ("%q (%s) is not a valid member of %s"):format(tostring(key), typeof(key), name)

			error(message, 2)
		end,

		__newindex = function(_self, key, _value)
			local message = ("%q (%s) is not a valid member of %s"):format(tostring(key), typeof(key), name)

			error(message, 2)
		end,
	})
end

local function addEnumValue(enumInternal, enumInternalRawValues, enumName, valueName, rawValue)
	local isValueNameString = typeof(valueName) == "string"
	assert(isValueNameString, "Only string names are supported for enums!")
	if isValueNameString then
		assert(valueName ~= "fromRawValue", "fromRawValue is reserved")
		assert(valueName ~= "isEnumValue", "isEnumValue is reserved")
		assert(valueName ~= "allValues", "allValues is reserved")
	end
	assert(enumInternal[valueName] == nil, "Enum value names can only be used once!")
	assert(enumInternalRawValues[valueName] == nil, "Enum values can only be used once!")

	local value = newproxy(true)
	local valueMetatable = getmetatable(value)

	valueMetatable.__tostring = function()
		return ("%s.%s"):format(enumName, valueName)
	end

	valueMetatable.__index = strict({
		rawValue = function()
			return rawValue
		end,
	})

	enumInternal[valueName] = value
	enumInternalRawValues[rawValue] = value
end

type ValueArray = { string }
type ValueMap = { [string]: string }

local function enumerate(enumName, values: ValueMap | ValueArray)
	assert(typeof(enumName) == "string", "Bad argument #1 - enums must be created using a string name!")
	assert(typeof(values) == "table", "Bad argument #2 - enums must be created using a table!")

	local enumInternal = {}
	local enumInternalRawValues = {}

	-- Allow a list-like syntax for string enums for convenience
	if (values :: ValueArray)[1] ~= nil then
		for _, valueName in ipairs(values :: ValueArray) do
			addEnumValue(enumInternal, enumInternalRawValues, enumName, valueName, valueName)
		end
	else
		for valueName, rawValue in pairs(values :: ValueMap) do
			addEnumValue(enumInternal, enumInternalRawValues, enumName, valueName, rawValue)
		end
	end

	function enumInternal.fromRawValue(rawValue)
		return enumInternalRawValues[rawValue]
	end

	function enumInternal.isEnumValue(value)
		if typeof(value) ~= "userdata" then
			return false
		end

		for _, enumValue in pairs(enumInternal) do
			if enumValue == value then
				return true
			end
		end

		return false
	end

	function enumInternal.allValues()
		local enumList = {}

		for _, enumValue in pairs(enumInternalRawValues) do
			table.insert(enumList, enumValue)
		end

		return enumList
	end

	local enum = newproxy(true)
	local meta = getmetatable(enum)
	meta.__index = strict(enumInternal, enumName)
	meta.__tostring = function()
		return enumName
	end

	return enum
end

return enumerate
