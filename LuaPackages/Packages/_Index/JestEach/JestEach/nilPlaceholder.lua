-- ROBLOX upstream: no upstream

-- ROBLOX Comment: nil value placeholder
local NIL = newproxy(true)
local mt = getmetatable(NIL)
mt.__tostring = function()
	return "nil"
end

return NIL
