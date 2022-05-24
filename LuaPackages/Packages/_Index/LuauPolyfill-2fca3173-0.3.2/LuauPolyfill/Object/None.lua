--!nonstrict
-- Marker used to specify that the value is nothing, because nil cannot be
-- stored in tables.
local None = newproxy(true)
local mt = getmetatable(None)
mt.__tostring = function()
	return "Object.None"
end

return None
