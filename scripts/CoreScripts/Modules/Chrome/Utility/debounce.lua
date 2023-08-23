return function(callback, delayTime)
	local lastUpdate = 0
	return function(...)
		local args = { ... }
		local clock = time()
		lastUpdate = clock
		delay(delayTime, function()
			if lastUpdate == clock then
				-- Lua doesn't like passing "..." into another function directly
				callback(unpack(args))
			end
		end)
	end
end
