--!strict
--[[
	Small utility function that defers remaining work to the end of the queue;
	facilitates testing with deferred lua without introducing `wait` calls
]]
local function waitForEvents()
	task.defer(coroutine.running())
	coroutine.yield()
end

return waitForEvents
