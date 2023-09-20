local Packages = script:FindFirstAncestor("ExperienceChat").Parent
local Promise = require(Packages.Promise)

local Timer = {}
Timer.__index = Timer

function Timer.new(countTo)
	local self = setmetatable({
		goalTime = countTo,
	}, Timer)

	return self
end

function Timer:start()
	self.promise = Promise.delay(self.goalTime)
	return self.promise
end

function Timer:stop()
	if self.promise then
		self.promise:cancel()
	end
end

return Timer
