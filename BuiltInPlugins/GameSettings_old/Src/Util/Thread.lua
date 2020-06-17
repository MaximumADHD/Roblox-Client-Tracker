local Thread = {}
Thread.__index = Thread

function Thread.new(callback)
	local self = {
		__running = false,
		__finished = false,
		__success = nil,
		__results = nil,
		__callback = callback,
		__event = Instance.new("BindableEvent")
	}

	return setmetatable(self, Thread)
end

function Thread:start(...)
	if self.__running or self.__finished then return end
	self.__running = true

	local args = {...}
	coroutine.wrap(function()
		local results = {pcall(self.__callback, unpack(args))}
		self.__success = results[1]
		self.__results = table.move(results, 2, #results, 1, {})
		self.__running = false
		self.__finished = true

		self.__event:Fire()
	end)()

	if self.__finished and not self.__success then
		error(self.__results[1], 2)
	end
end

function Thread:join()
	if (not self.__finished) and (not self.__running) then
		error("Attempt to join on unstarted thread", 2)
	end
	if not self.__finished then
		self.__event.Event:Wait()
	end

	if self.__success then
		return unpack(self.__results)
	else
		error(self.__results[1], 2)
	end
end

function Thread:isAlive()
	return self.__running
end

return Thread