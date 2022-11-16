-- Helper function to throttle based on player Id:
return function(throttle, userId)
	assert(type(throttle) == "number", "throttle must be a number")
	assert(type(userId) == "number", "userId must be a number")

	-- Determine userRollout using last two digits of user ID:
	-- (+1 to change range from 0-99 to 1-100 as 0 is off, 100 is full on):
	local userRollout = (userId % 100) + 1
	return userRollout <= throttle
end
