local CorePackages = game:GetService("CorePackages")
local Signal = require(CorePackages.Workspace.Packages.AppCommonLib).Signal

local AvailabilitySignalState = {
	Unavailable = 0,
	Loading = 1,
	Available = 2,
	Pinned = 3,
}

local AvailabilitySignal = {}
AvailabilitySignal.__index = AvailabilitySignal

function AvailabilitySignal.new(initialAvailability)
	local self = {
		_state = initialAvailability or AvailabilitySignalState.Unavailable,
		_changeSignal = Signal.new(),
	}
	setmetatable(self, AvailabilitySignal)
	return self
end

function AvailabilitySignal.connect(self, callback)
	return self._changeSignal:connect(callback)
end

function AvailabilitySignal.set(self, newState)
	if self._state ~= newState then
		self._state = newState
		self._changeSignal:fire(newState)
	end
end

function AvailabilitySignal.get(self)
	return self._state
end

function AvailabilitySignal.available(self)
	self:set(AvailabilitySignalState.Available)
end

function AvailabilitySignal.loading(self)
	self:set(AvailabilitySignalState.Loading)
end

function AvailabilitySignal.unavailable(self)
	self:set(AvailabilitySignalState.Unavailable)
end

function AvailabilitySignal.pinned(self)
	self:set(AvailabilitySignalState.Pinned)
end

local NotifySignal = {}
NotifySignal.__index = NotifySignal

function NotifySignal.new()
	local self = {
		_value = { type = "empty", value = nil },
		_changeSignal = Signal.new(),
	}
	setmetatable(self, NotifySignal)
	return self
end

function NotifySignal.connect(self, callback)
	return self._changeSignal:connect(callback)
end

function NotifySignal.get(self)
	return self._value
end

function NotifySignal.clear(self)
	if self._value ~= nil then
		self._value = nil
		self._changeSignal:fire(nil)
	end
end

function NotifySignal.fireCount(self, count)
	local notification = { type = "count", value = count }
	if self._value ~= notification then
		self._value = notification
		self._changeSignal:fire(notification)
	end
end

-- Generic Observable Value

-- todo: find the correct OOP style for AvailabilitySignal to inherit ObservableValue

local ObservableValue = {}
ObservableValue.__index = ObservableValue

function ObservableValue.new(value: any?)
	local self = {
		_value = value,
		_changeSignal = Signal.new(),
	}
	setmetatable(self, ObservableValue)
	return self
end

function ObservableValue.get(self)
	return self._value
end

function ObservableValue.set(self, value: any?)
	-- todo: consider a different path for table equailiy
	if self._value ~= value then
		self._value = value
		self._changeSignal:fire()
	end
end

function ObservableValue.connect(self, callback)
	return self._changeSignal:connect(callback)
end

return {
	AvailabilitySignal = AvailabilitySignal,
	AvailabilitySignalState = AvailabilitySignalState,
	NotifySignal = NotifySignal,
	ObservableValue = ObservableValue,
}
