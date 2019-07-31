--[[
	A function to return a fake ID, used for testing.

	We turn all IDs into strings as we typically use them as keys in the state.
	It's better to use a string than a number, because a number would indicate
	an array index.

	Roblox APIs expect to be given integers for IDs however, so just tonumber()
	the ID in this case.
]]

local lastId = 0

return function()
	lastId = lastId + 1
	return tostring(lastId)
end