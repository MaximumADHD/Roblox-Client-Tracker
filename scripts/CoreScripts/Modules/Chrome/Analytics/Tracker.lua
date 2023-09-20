local Tracker = {}
Tracker.__index = Tracker

export type Tracker = {
	__index: Tracker,
	new: () -> Tracker,

	toggle: (trackerName: string) -> nil,
	set: (Tracker, trackerName: string, value: any) -> nil,
	get: (Tracker, trackerName: string) -> any,
	reset: (Tracker, trackerName: string) -> nil,
	startTime: (Tracker, trackerName: string) -> nil,
	finishTime: (Tracker, trackerName: string) -> number,
}

function Tracker.new(): Tracker
	local self = {
		trackers = {},
	}
	local cls = (setmetatable(self, Tracker) :: any) :: Tracker
	return cls
end

function Tracker:toggle(trackerName: string)
	self[trackerName] = not self[trackerName]
	return self[trackerName]
end

function Tracker:set(trackerName: string, value: any)
	self.trackers[trackerName] = value
end

function Tracker:get(trackerName: string)
	return self.trackers[trackerName]
end

function Tracker:reset(trackerName: string)
	self.trackers[trackerName] = nil
end

function Tracker:startTime(trackerName: string)
	self.trackers[trackerName] = DateTime.now().UnixTimestampMillis
end

function Tracker:finishTime(trackerName: string): number
	if self.trackers[trackerName] then
		local time = DateTime.now().UnixTimestampMillis - self.trackers[trackerName]
		self.trackers[trackerName] = 0
		return time
	end
	return 0
end

return Tracker
