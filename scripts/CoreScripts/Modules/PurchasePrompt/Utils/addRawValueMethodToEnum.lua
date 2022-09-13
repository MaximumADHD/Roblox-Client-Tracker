--!nonstrict
--[[
	A function that augments an enumeration with a `toRawValue` method.
]]

-- TODO: Move this into the `enumerate` library.
return function(EnumType, rawKeyToRawValueTable)
	local keyToRawValue = {}
	for key, value in pairs(rawKeyToRawValueTable) do
		keyToRawValue[EnumType[key]] = value
	end

	local meta = getmetatable(EnumType)
	local oldMetaIndex = meta.__index
	meta.__index = function(table, key)
		if key == "toRawValue" then
			return function(value)
				return keyToRawValue[value]
			end
		else
			return oldMetaIndex[key]
		end
	end
end
