return function(config: { throttle: number, userId: number })
	-- Determine userRollout using last two digits of user ID:
	-- (+1 to change range from 0-99 to 1-100 as 0 is off, 100 is full on):
	local userRollout = (config.userId % 100) + 1
	return userRollout <= config.throttle
end
