local Event = {}
Event.__index = Event

function Event:new()
	local self = setmetatable({}, Event)
	self.callbacks = {}
	return self
end

function Event:connect(callback)
	local outerSelf = self
	local handle = {}
	function handle:disconnect()
		outerSelf:disconnect(callback)
	end
	
	if self.firing then		
		if self.removals then
			self.removals[callback] = nil
		end
		self.additions = self.additions or {}
		self.additions[callback] = handle
	else
		self.callbacks[callback] = handle
	end
	return handle
end

function Event:disconnect(callback)
	if self.firing then								
		if self.additions then
			self.additions[callback] = nil
		end						
		self.removals = self.removals or {}
		self.removals[callback] = true					
	else
		self.callbacks[callback] = nil
	end
end

local function reconcile(self)
	if self.removals then
		for callback,_ in pairs(self.removals) do
			self.callbacks[callback] = nil
		end
		self.removals = nil
	end
	
	if self.additions then
		for callback,handle in pairs(self.additions) do
			self.callbacks[callback] = handle
		end
		self.additions = nil
	end
end

function Event:fire(...)
	local arg = {...}
	self.firing = true
	for callback, _ in pairs(self.callbacks) do
    	callback(unpack(arg))
	end
	self.firing = false
	
	reconcile(self)
end

return Event
