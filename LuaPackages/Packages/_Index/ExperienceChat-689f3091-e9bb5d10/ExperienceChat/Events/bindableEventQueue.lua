local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local bindableEvent = require(ExperienceChat.DispatchBindableEvent)

local bindableEventQueue = {
	queue = {},
}

function bindableEventQueue:add(action)
	self.queue[#self.queue + 1] = action
end

function bindableEventQueue:flush()
	if #self.queue then
		for _, action in pairs(self.queue) do
			bindableEvent:Fire(action)
		end
	end
end

return bindableEventQueue
