local CorePackages = game:GetService("CorePackages")
local StarterGui = game:GetService("StarterGui")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local SignalLib = require(CorePackages.Workspace.Packages.AppCommonLib)
local Signal = SignalLib.Signal

local FFlagChromeUsePolicies = SharedFlags.FFlagChromeUsePolicies

local AvailabilitySignalState = {
	Unavailable = 0,
	Loading = 1,
	Available = 2,
	Pinned = 3,
}

export type AvailabilitySignal = {
	new: (initialAvailability: number) -> AvailabilitySignal,
	connect: (AvailabilitySignal, SignalLib.SignalCallback) -> SignalLib.SignalHandle,
	set: (AvailabilitySignal, number) -> (),
	get: (AvailabilitySignal) -> number,
	available: (AvailabilitySignal) -> (),
	loading: (AvailabilitySignal) -> (),
	unavailable: (AvailabilitySignal) -> (),
	pinned: (AvailabilitySignal) -> (),
	forceUnavailable: (AvailabilitySignal) -> (),
	unforceUnavailable: (AvailabilitySignal) -> (),
}

local AvailabilitySignal = {}
AvailabilitySignal.__index = AvailabilitySignal

function AvailabilitySignal.new(initialAvailability: number): AvailabilitySignal
	local self = {
		_state = (initialAvailability or AvailabilitySignalState.Unavailable) :: number,
		_forceUnavailable = if FFlagChromeUsePolicies then false else nil :: never,
		_changeSignal = Signal.new(),
	}
	return (setmetatable(self, AvailabilitySignal) :: any) :: AvailabilitySignal
end

function AvailabilitySignal:connect(callback)
	return self._changeSignal:connect(callback)
end

function AvailabilitySignal:set(newState: number)
	if self._state ~= newState then
		self._state = newState
		if not (FFlagChromeUsePolicies and self._forceUnavailable) then
			self._changeSignal:fire(newState :: any?)
		end
	end
end

function AvailabilitySignal:get(): number
	if FFlagChromeUsePolicies and self._forceUnavailable then
		return AvailabilitySignalState.Unavailable
	else
		return self._state
	end
end

function AvailabilitySignal:available()
	self:set(AvailabilitySignalState.Available)
end

function AvailabilitySignal:loading()
	self:set(AvailabilitySignalState.Loading)
end

function AvailabilitySignal:unavailable()
	self:set(AvailabilitySignalState.Unavailable)
end

function AvailabilitySignal:pinned()
	self:set(AvailabilitySignalState.Pinned)
end

function AvailabilitySignal:forceUnavailable()
	if FFlagChromeUsePolicies and not self._forceUnavailable then
		self._forceUnavailable = true

		if self._state ~= AvailabilitySignalState.Unavailable then
			self._changeSignal:fire(AvailabilitySignalState.Unavailable)
		end
	end
end

function AvailabilitySignal:unforceUnavailable()
	if FFlagChromeUsePolicies and self._forceUnavailable then
		self._forceUnavailable = false

		if self._state ~= AvailabilitySignalState.Unavailable then
			self._changeSignal:fire(self._state)
		end
	end
end

export type NotifyData = { [string]: any? }

export type NotifySignal = {
	new: (excludeFromTotalCounts: boolean?) -> NotifySignal,
	connect: (NotifySignal, SignalLib.SignalCallback) -> SignalLib.SignalHandle,
	set: (NotifySignal, number) -> (),
	get: (NotifySignal) -> NotifyData,
	clear: (NotifySignal) -> (),
	fireCount: (NotifySignal, number) -> (),
	setExcludeFromTotalCounts: (NotifySignal, boolean) -> (),
	excludeFromTotalCounts: (NotifySignal) -> boolean,
	isEmpty: (NotifySignal) -> boolean,
}

local NotifySignal = {}
NotifySignal.__index = NotifySignal

function NotifySignal.new(excludeFromTotalCounts: boolean?): NotifySignal
	local self = {
		_value = { type = "empty", value = nil } :: NotifyData,
		_changeSignal = Signal.new() :: any,
		_excludeFromTotalCounts = excludeFromTotalCounts or false,
	}
	return (setmetatable(self, NotifySignal) :: any) :: NotifySignal
end

function NotifySignal:setExcludeFromTotalCounts(exclude: boolean)
	self._excludeFromTotalCounts = exclude
end

function NotifySignal:excludeFromTotalCounts(): boolean
	return self._excludeFromTotalCounts
end

function NotifySignal:connect(callback: () -> ())
	return self._changeSignal:connect(callback)
end

function NotifySignal:get()
	return self._value
end

function NotifySignal:clear()
	if self._value and self._value.type ~= "empty" then
		self._value = { type = "empty", value = nil } :: NotifyData
		self._changeSignal:fire(self._value :: any?)
	end
end

function NotifySignal:fireCount(count: number)
	local notification: NotifyData = { type = "count", value = count }
	if self._value ~= notification then
		self._value = notification
		self._changeSignal:fire(self._value :: any?)
	end
end

function NotifySignal:isEmpty()
	return self._value and self._value.type == "empty"
end

-- Generic Observable Value

export type ObservableValue<T> = {
	new: (T) -> ObservableValue<T>,
	connect: (ObservableValue<T>, SignalLib.SignalCallback, callCallback: boolean?) -> SignalLib.SignalHandle,
	set: (ObservableValue<T>, T) -> (),
	setMomentary: (ObservableValue<T>, T, number, T) -> (),
	get: (ObservableValue<T>) -> T,
	signal: (ObservableValue<T>) -> SignalLib.Signal,
}

local ObservableValue = {}
ObservableValue.__index = ObservableValue

function ObservableValue.new<T>(value: T): ObservableValue<T>
	local self = {}
	self._value = value
	self._changeSignal = Signal.new()
	return (setmetatable(self, ObservableValue) :: any) :: ObservableValue<T>
end

function ObservableValue:get<T>(): T
	return self._value
end

function ObservableValue.setMomentary<T>(self, value: T, delay: number, resetValue: T)
	if self._value ~= value then
		self._value = value
		self._changeSignal:fire(value)
	end

	local t: thread? = self._momentaryClearThread
	if t then
		task.cancel(t)
	end

	self._momentaryClearThread = (
		task.delay(delay, function()
			self._momentaryClearThread = nil
			self.set(self, resetValue)
		end) :: any
	) :: thread?
end

function ObservableValue.set<T>(self, value: T)
	local t: thread? = self._momentaryClearThread
	if t then
		task.cancel(t)
		self._momentaryClearThread = nil
	end
	-- todo: consider a different path for table equailiy
	if self._value ~= value then
		self._value = value
		self._changeSignal:fire(value)
	end
end

function ObservableValue:signal()
	return self._changeSignal
end

function ObservableValue:connect(callback, callCallback)
	local con = self._changeSignal:connect(callback)
	if callCallback == true then
		-- convenience to trigger callback on connect
		callback(self._value)
	end
	return con
end

-- MappedSignals provide a common interface for a value and a the signal notifying that the value changed
--[[

local foo = MappedSignal.new(MyModule.FooChangedSignal, function()
	return MyModule:GetFoo()
end)

foo:get() -- returns current value
foo:connect(function(value)
	-- runs when value changes
end)

--]]
type AnyFunc = (any?) -> ()

export type MappedSignal<T> = {
	new: (SignalLib.Signal, () -> T, AnyFunc?) -> MappedSignal<T>,
	connect: (MappedSignal<T>, SignalLib.SignalCallback) -> SignalLib.SignalHandle,
	get: (MappedSignal<T>) -> T,
}

local MappedSignal = {}
MappedSignal.__index = MappedSignal
function MappedSignal.new<T>(signal, fetchMapFunction, eventReceiver: AnyFunc?)
	if not signal then
		error("No signal provided to MappedSignal")
	end
	if not fetchMapFunction then
		error("No fetchMapFunction provided to MappedSignal")
	end
	local self = {}
	self._signal = signal
	self._fetchMapFunction = fetchMapFunction
	self._eventReceiver = eventReceiver
	return (setmetatable(self, MappedSignal) :: any) :: MappedSignal<T>
end

function MappedSignal:connect(handler)
	if not self._signal then
		warn("MappedSignal: Missing signal")
		return function() end
	end

	local event = function()
		if self._eventReceiver then
			self._eventReceiver()
		end
		handler(self._fetchMapFunction())
	end
	local conn = self._signal:connect(event)

	-- fire event once to handle race condition where state changed between MappedSignal.new and MappedSignal:connect
	event()

	return conn
end

function MappedSignal:get<T>(): T
	return self._fetchMapFunction()
end

function setCoreGuiAvailability(
	integration: { availability: AvailabilitySignal },
	coreGui,
	customCallback: (boolean) -> ()?
)
	local function updateAvailable()
		local available = StarterGui:GetCoreGuiEnabled(coreGui)
		if customCallback then
			customCallback(available)
		else
			if available then
				integration.availability:available()
			else
				integration.availability:unavailable()
			end
		end
	end

	local disconnect = StarterGui.CoreGuiChangedSignal:Connect(updateAvailable)
	updateAvailable()
	return disconnect
end

return {
	MappedSignal = MappedSignal,
	AvailabilitySignal = AvailabilitySignal,
	AvailabilitySignalState = AvailabilitySignalState,
	NotifySignal = NotifySignal,
	ObservableValue = ObservableValue,
	setCoreGuiAvailability = setCoreGuiAvailability,
}
