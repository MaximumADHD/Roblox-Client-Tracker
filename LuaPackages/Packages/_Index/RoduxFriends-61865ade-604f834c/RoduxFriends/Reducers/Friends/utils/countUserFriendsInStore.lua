-- @param friends - "byUserId" field
-- @return the resulting friends count
return function(friends)
	local newCountsByUserID = {}
	for userID, friendsList in pairs(friends) do
		newCountsByUserID[userID] = #friendsList
	end

	return newCountsByUserID
end
