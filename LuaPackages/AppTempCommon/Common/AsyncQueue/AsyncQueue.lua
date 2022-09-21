--[[
	Utility class for an asyncronous fifo queue built using promises.

	Exposes a request() method which will invoke a callback whenever
	that consumer has acquired the resource. A release function is
	returned which can be called at any point to relinquish your spot
	in the queue and/or release ownership of the resource for the next
	consumer.
]]
local CorePackages = game:GetService("CorePackages")
local Promise = require(CorePackages.Promise)

local Types = require(script.Parent.AsyncQueueTypes)

export type AsyncQueue = Types.AsyncQueue

export type AsyncQueueModule = AsyncQueue & {
	new: () -> AsyncQueue,
}

local AsyncQueue: AsyncQueueModule = {} :: AsyncQueueModule

(AsyncQueue :: any).__index = AsyncQueue

function AsyncQueue.new(): AsyncQueue
	local self = {
		head = Promise.resolve(),
	}
	setmetatable(self, AsyncQueue)
	return (self :: any) :: AsyncQueue
end

function AsyncQueue:request(acquired: () -> ())
	local bindable = Instance.new("BindableEvent")
	local released = false
	local waiting = false

	self.head = self.head:andThen(function()
		return Promise.new(function(resolve)
			if not released then
				pcall(acquired)
			end
			if not released then
				waiting = true
				bindable.Event:Wait()
			end
			bindable:Destroy()
			resolve()
		end)
	end)

	local function release()
		if waiting then
			bindable:Fire()
		else
			released = true
		end
	end

	return release
end

return AsyncQueue
