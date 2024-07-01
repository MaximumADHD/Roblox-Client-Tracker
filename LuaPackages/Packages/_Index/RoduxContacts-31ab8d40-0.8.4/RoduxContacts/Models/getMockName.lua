local lastId: number = 0

return function()
	lastId = lastId + 1
	return tostring(lastId)
end
