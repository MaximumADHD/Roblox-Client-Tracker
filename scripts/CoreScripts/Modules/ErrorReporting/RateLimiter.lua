local CorePackages = game:GetService("CorePackages")
local RunService = game:GetService("RunService")

local t = require(CorePackages.Packages.t)

local RateLimiterArgs = t.strictInterface({
	period = t.number,
	threshold = t.number,
	processInterval = t.number,
})

local RateLimiter = {}
RateLimiter.__index = RateLimiter

function RateLimiter.new(args)
	assert(RateLimiterArgs(args))

	return setmetatable({
		_period = args.period,
		_threshold = args.threshold,
		_processInterval = args.processInterval,
		_lastProcessed = 0,
		_counts = {},
		_lastOccurrences = {},
	}, RateLimiter)
end

function RateLimiter:increment(signature, timestamp)
	timestamp = timestamp or os.clock()
	self._lastOccurrences[signature] = timestamp

	if self._counts[signature] == nil then
		self._counts[signature] = 1
	else
		self._counts[signature] += 1
	end
end

function RateLimiter:isRateLimited(signature)
	local count = self._counts[signature]
	return count ~= nil and count > self._threshold
end

function RateLimiter:startDecrementClock()
	self._decrementConnection = RunService.Heartbeat:Connect(function()
		self:stepDecrementClock(os.clock())
	end)
end

function RateLimiter:stepDecrementClock(currentTime)
	if currentTime - self._lastProcessed > self._processInterval then
		for signature, lastOccurrence in pairs(self._lastOccurrences) do
			if currentTime - lastOccurrence > self._period then
				self._counts[signature] -= 1

				if self._counts[signature] <= 0 then
					self._counts[signature] = nil
					self._lastOccurrences[signature] = nil
				end
			end
		end

		self._lastProcessed = currentTime
	end
end

return RateLimiter
