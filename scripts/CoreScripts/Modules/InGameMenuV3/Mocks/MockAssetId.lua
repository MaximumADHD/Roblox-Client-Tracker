--[[
	A function to return a fake ID, used for testing.
]]

local lastId = 0

return function()
	lastId = lastId + 1
	return tostring(lastId)
end