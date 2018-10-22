local Callback = {}
Callback.__index = Callback

local function disconnectCallback(self)
	if nil ~= self.IsWaiting then
		self.IsWaiting:disconnect()
		self.IsWaiting = nil
	end
end

function Callback:new(Paths, func, secondsToWait)
	local self = setmetatable({}, Callback)
	
	if 0 == secondsToWait then
		func()
	else
		local endTime = tick()+secondsToWait
		self.IsWaiting = game:GetService("RunService").Heartbeat:connect(function(step)						
			if tick() >= endTime then
				func()
				disconnectCallback(self)
			end			
		end)
	end
	return self
end

function Callback:terminate()
	disconnectCallback(self)
end

return Callback
