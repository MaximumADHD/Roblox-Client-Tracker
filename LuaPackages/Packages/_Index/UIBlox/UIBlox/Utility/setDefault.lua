--[[
    Helper function that assigns default value for nilable prop
]]

local function setDefault(value: any?, default: any)
	if value == nil then
		return default
	else
		return value
	end
end

return setDefault
