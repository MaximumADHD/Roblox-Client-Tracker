--[[
	Used to convert the value of an asset type enum, to the actual enum
]]

local EnumConvert = {}

EnumConvert.valueToEnum = {}

local function cacheEnum(enum)
	if not EnumConvert.valueToEnum[enum] then
		local result = {}
		for _, enumItem in pairs(enum:GetEnumItems()) do
			result[enumItem.Value] = enumItem
		end
		EnumConvert.valueToEnum[enum] = result
	end
end
cacheEnum(Enum.AssetType)

function EnumConvert.convertValueToEnum(value, enum)
	cacheEnum(enum)
	return EnumConvert.valueToEnum[enum][value]
end

function EnumConvert.convertAssetTypeValueToEnum(assetTypeValue)
	return EnumConvert.convertValueToEnum(assetTypeValue, Enum.AssetType)
end

return EnumConvert