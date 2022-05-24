-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-fake-timers/src/modernFakeTimers.ts
--[[
	ROBLOX deviation: API aligned with the upstream
	major implementation deviation, refer to README for more info
]]

local CurrentModule = script
local Packages = CurrentModule.Parent

local getType = require(Packages.JestGetType).getType

local jestMock = require(Packages.JestMock).ModuleMocker

local realDelay = delay
local realTick = tick
local realDateTime = DateTime
local realOs = os

type Timeout = {
	time: number,
	callback: () -> (),
}

export type FakeTimers = {
	clearAllTimers: (self: FakeTimers) -> (),
	dispose: (self: FakeTimers) -> (),
	runAllTimers: (self: FakeTimers) -> (),
	runOnlyPendingTimers: (self: FakeTimers) -> (),
	advanceTimersToNextTimer: (self: FakeTimers, steps_: number?) -> (),
	advanceTimersByTime: (self: FakeTimers, msToRun: number) -> (),
	runAllTicks: (self: FakeTimers) -> (),
	useRealTimers: (self: FakeTimers) -> (),
	useFakeTimers: (self: FakeTimers) -> (),
	reset: (self: FakeTimers) -> (),
	setSystemTime: (self: FakeTimers, now: any) -> (),
	getRealSystemTime: (self: FakeTimers) -> (),
	getTimerCount: (self: FakeTimers) -> number,
}

local FakeTimers = {}
FakeTimers.__index = FakeTimers
function FakeTimers.new()
	local mock = jestMock.new()

	local delayOverride = mock:fn(realDelay)
	local tickOverride = mock:fn(realTick)
	local dateTimeOverride = {
		now = mock:fn(realDateTime.now),
		fromUnixTimestamp = realDateTime.fromUnixTimestamp,
		fromUnixTimestampMillis = realDateTime.fromUnixTimestampMillis,
		fromUniversalTime = realDateTime.fromUniversalTime,
		fromLocalTime = realDateTime.fromLocalTime,
		fromIsoDate = realDateTime.fromIsoDate,
	}
	local osOverride = {
		time = mock:fn(realOs.time),
		clock = mock:fn(realOs.clock),
	}
	setmetatable(osOverride, { __index = realOs })

	local self = {
		_fakingTime = false,
		_timeouts = {},
		_mock = mock,
		_mockTime = 0,
		_mockSystemTime = realDateTime.now().UnixTimestamp,
		delayOverride = delayOverride,
		tickOverride = tickOverride,
		dateTimeOverride = dateTimeOverride,
		osOverride = osOverride,
	}

	setmetatable(self, FakeTimers)
	return self
end

function FakeTimers:_advanceToTime(time_): ()
	-- Make sure we don't go back in time due to a queued timer
	if time_ > self._mockTime then
		local timeDiff = time_ - self._mockTime
		-- Move mockTime to target time, in case the callback reads it via `tick`
		self._mockTime = time_
		self._mockSystemTime = self._mockSystemTime + timeDiff
	end
end

function FakeTimers:clearAllTimers(): ()
	if self._fakingTime then
		self._timeouts = {}
	end
end

function FakeTimers:dispose(): ()
	self:useRealTimers()
end

function FakeTimers:runAllTimers(): ()
	if self:_checkFakeTimers() then
		for _, timeout in ipairs(self._timeouts) do
			self:_advanceToTime(timeout.time)
			timeout.callback()
		end
	end
	self._timeouts = {}
end

function FakeTimers:runOnlyPendingTimers(): ()
	if self:_checkFakeTimers() then
		local pendingTimeouts = {}
		for _, timeout in ipairs(self._timeouts) do
			table.insert(pendingTimeouts, timeout)
		end

		-- Call all pending timeouts
		self._timeouts = {}
		for _, timeout in ipairs(pendingTimeouts) do
			self:_advanceToTime(timeout.time)
			timeout.callback()
		end
	end
end

function FakeTimers:advanceTimersToNextTimer(steps_: number?): ()
	-- FIXME: get rid of this extra step of creating a separate variable once
	-- CLI-41847 is done
	local steps: number = steps_ or 1
	if self:_checkFakeTimers() then
		local newTimeouts = {}
		local nextTime = -1
		for _, timeout in ipairs(self._timeouts) do
			if timeout.time > nextTime and steps > 0 then
				nextTime = timeout.time
				self:_advanceToTime(nextTime)
				steps = steps - 1
			end
			if self._mockTime >= timeout.time then
				timeout.callback()
			else
				table.insert(newTimeouts, timeout)
			end
		end
		self._timeouts = newTimeouts
	end
end

function FakeTimers:advanceTimersByTime(msToRun: number): ()
	if self:_checkFakeTimers() then
		local targetTime = self._mockTime + msToRun
		local newTimeouts = {}
		for _, timeout in ipairs(self._timeouts) do
			if targetTime >= timeout.time then
				self:_advanceToTime(timeout.time)
				timeout.callback()
			else
				table.insert(newTimeouts, timeout)
			end
		end
		self:_advanceToTime(targetTime)
		self._timeouts = newTimeouts
	end
end

function FakeTimers:runAllTicks(): ()
	if self:_checkFakeTimers() then
		error("not implemented")
	end
end

function FakeTimers:useRealTimers(): ()
	if self._fakingTime then
		self.delayOverride.mockImplementation(realDelay)
		self.tickOverride.mockImplementation(realTick)
		self.dateTimeOverride.now.mockImplementation(realDateTime.now)
		self.osOverride.time.mockImplementation(realOs.time)
		self.osOverride.clock.mockImplementation(realOs.clock)
		self._fakingTime = false
	end
end

function FakeTimers:useFakeTimers(): ()
	if not self._fakingTime then
		self.delayOverride.mockImplementation(function(delayTime, callback)
			local targetTime = self._mockTime + delayTime
			local timeout = {
				time = targetTime,
				callback = callback,
			}
			local insertIndex = #self._timeouts + 1
			for i, timeout_ in ipairs(self._timeouts) do
				-- Timeouts are inserted in time order. As soon as we encounter a
				-- timeout that's _after_ our targetTime, we place ours in the list
				-- immediately before it. This way, timeouts with the exact same time
				-- will be queued up in insertion order to break ties
				if timeout_.time > targetTime then
					insertIndex = i
					break
				end
			end
			table.insert(self._timeouts, insertIndex, timeout)
		end)
		self.tickOverride.mockImplementation(function()
			return self._mockSystemTime
		end)
		self.dateTimeOverride.now.mockImplementation(function()
			return realDateTime.fromUnixTimestamp(self._mockSystemTime)
		end)
		self.osOverride.time.mockImplementation(function(time_)
			if typeof(time_) == "table" then
				local unixTime = realDateTime.fromUniversalTime(
					time_.year or 1970,
					time_.month or 1,
					time_.day or 1,
					time_.hour or 0,
					time_.min or 0,
					time_.sec or 0
				).UnixTimestamp
				return self._mockSystemTime - unixTime
			end
			return self._mockSystemTime
		end)
		self.osOverride.clock.mockImplementation(function()
			return self._mockTime
		end)
		self._fakingTime = true
		self:reset()
	end
end

function FakeTimers:reset(): ()
	if self:_checkFakeTimers() then
		self._mock:clearAllMocks()
		self._timeouts = {}
		self._mockTime = 0
		self._mockSystemTime = realDateTime.now().UnixTimestamp
	end
end

function FakeTimers:setSystemTime(now: any): ()
	if self:_checkFakeTimers() then
		if not now then
			now = realDateTime.now()
		end
		if getType(now) == "DateTime" then
			now = now.UnixTimestamp
		end
		self._mockSystemTime = now
	end
end

function FakeTimers:getRealSystemTime(): ()
	return realDateTime.now()
end

function FakeTimers:getTimerCount(): number
	if self:_checkFakeTimers() then
		return #self._timeouts
	end

	return 0
end

function FakeTimers:_checkFakeTimers()
	if not self._fakingTime then
		error(
			"A function to advance timers was called but the timers API is not "
				.. "mocked with fake timers. Call `jest.useFakeTimers()` in this test."
		)
	end

	return self._fakingTime
end

return FakeTimers
