local Packages = script.Parent.Parent

local Signals = require(Packages.Signals)
local createSignal = Signals.createSignal
local createComputed = Signals.createComputed

local SignalsScheduler = require(Packages.SignalsScheduler)
local batch = SignalsScheduler.batch

type scope = Signals.scope
type getter<T> = Signals.getter<T>
type setter<T> = Signals.setter<T>

export type readonly<T> = T

export type proxy<T> = typeof(setmetatable({}, {} :: { __call: (unknown, scope?) -> readonly<T> })) & T

-- TODO: new solver
-- export type proxy<T> = setmetatable<T, { __call: (unknown, scope?) -> readonly<T> }>

local function createWrappedSignal<T>(initial: T): { getter: getter<T>, setter: setter<T> }
	local getter, setter = createSignal(function()
		return initial
	end)
	return { getter = getter, setter = setter }
end

local function createProxy<T>(initial: T & {}): proxy<T>
	local signals = {}

	for k, v in initial :: {} do
		signals[k] = createWrappedSignal(v)
	end

	local trackProxy, updateProxy = createSignal(nil, function()
		return false
	end)

	local getLength = createComputed(function(scope)
		trackProxy(scope)
		local length = 0
		for _, v in ipairs(signals :: {}) do
			if v.getter(false) ~= nil then
				length += 1
			end
		end
		return length
	end)

	local function createTrackedProxy(_, scope: scope | nil): T
		local function trackedLength()
			return getLength(scope)
		end

		local function nextSignal(state, index)
			while true do
				local nextIndex, nextValue = next(state, index)
				if nextIndex == nil then
					return nil
				end
				if nextValue ~= nil then
					local currentValue = nextValue.getter(scope)
					if currentValue ~= nil then
						return nextIndex, currentValue
					end
				end
				index = nextIndex
			end
		end

		local function trackedIterator()
			trackProxy(scope)
			return nextSignal, signals
		end

		local function trackedIndex(_, index): unknown
			local signal = signals[index]
			if signal == nil then
				if scope == nil then
					return nil
				end
				signal = createWrappedSignal(nil :: unknown)
				signals[index] = signal
			end
			return signal.getter(scope)
		end

		local function noNewIndex(_, index, value)
			error(`attempt to update read-only store at {index} with {value}`, 2)
		end

		local trackedMetatable = table.freeze({
			__len = trackedLength,
			__iter = trackedIterator,
			__index = trackedIndex,
			__newindex = noNewIndex,
			__metatable = false,
		})

		return (setmetatable({}, trackedMetatable) :: unknown) :: T
	end

	local function untrackedLength()
		return getLength(false)
	end

	local function nextSignal(state, index)
		while true do
			local nextIndex, nextValue = next(state, index)
			if nextIndex == nil then
				return nil
			end
			if nextValue ~= nil then
				local currentValue = nextValue.getter(false)
				if currentValue ~= nil then
					return nextIndex, currentValue
				end
			end
			index = nextIndex
		end
	end

	local function untrackedIterator()
		return nextSignal, signals
	end

	local function untrackedIndex(_, index)
		local signal = signals[index]
		if signal ~= nil then
			return signal.getter(false)
		end
		return nil
	end

	local function newIndex(_, index, value)
		local signal = signals[index]
		if signal == nil then
			if value ~= nil then
				signal = createWrappedSignal(value)
				signals[index] = signal
				updateProxy()
			end
		else
			local current = signal.getter(false)
			if current ~= value then
				batch(function()
					signal.setter(function()
						return value
					end)
					if current == nil or value == nil then
						updateProxy()
					end
				end)
			end
		end
	end

	local untrackedMetatable = table.freeze({
		__len = untrackedLength,
		__call = createTrackedProxy,
		__iter = untrackedIterator,
		__index = untrackedIndex,
		__newindex = newIndex,
		__metatable = false,
	})

	return (setmetatable({}, untrackedMetatable) :: unknown) :: proxy<T>
end

return createProxy
