-- Validator for Roblox enums

local UtilityRoot = script.Parent
local UIBloxRoot = UtilityRoot.Parent

local t = require(UIBloxRoot.Parent.t)

local function enumValidator(enum)
	local validators = {}

	for _, enumItem in pairs(enum) do
		validators[#validators + 1] = t.literal(enumItem)
	end

	return t.union(unpack(validators))
end

return enumValidator