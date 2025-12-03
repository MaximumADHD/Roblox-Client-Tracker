--[[
	A function to return a fake ID string, used for testing
]]

local lastId = 0

return function(): string
	lastId = lastId + 1
	return ("MOCK-%d"):format(lastId)
end
