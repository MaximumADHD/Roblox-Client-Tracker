local Src = script:FindFirstAncestor("ViewRecycler")

local ShallowTable = require(Src.Internal.ShallowTable)
local Types = require(Src.Core.Types)
local createEvent = require(Src.Internal.createEvent)

local INDEX_RANGE_KEYS = Types.INDEX_RANGE_KEYS

export type RangeState = {
	report: (range: Types.IndexRange) -> (),
	set: (range: Types.IndexRange) -> (),
	publish: () -> (),
	get: () -> Types.IndexRange,
	connect: (callback: (range: Types.IndexRange) -> ()) -> () -> (),
	isObserved: () -> boolean,
}

local function createRangeState(): RangeState
	local currentRange = Types.EMPTY_INDEX_RANGE
	local hasReported = false
	local pendingPublish = false
	local listenerCount = 0
	local changed: createEvent.Event<Types.IndexRange> = createEvent()

	local function set(range: Types.IndexRange)
		if hasReported and ShallowTable.containsEqual(currentRange, range, INDEX_RANGE_KEYS) then
			return
		end
		hasReported = true
		currentRange = range
		pendingPublish = true
	end

	local function publish()
		if not pendingPublish then
			return
		end
		pendingPublish = false
		if listenerCount > 0 then
			changed.fire(currentRange)
		end
	end

	local function report(range: Types.IndexRange)
		if hasReported and ShallowTable.containsEqual(currentRange, range, INDEX_RANGE_KEYS) then
			return
		end
		hasReported = true
		currentRange = range
		pendingPublish = false
		if listenerCount > 0 then
			changed.fire(range)
		end
	end

	local function connect(callback: (range: Types.IndexRange) -> ()): () -> ()
		listenerCount += 1
		local disconnectChanged = changed.connect(callback)
		local connected = true
		return function()
			if not connected then
				return
			end
			connected = false
			listenerCount -= 1
			disconnectChanged()
		end
	end

	return {
		report = report,
		set = set,
		publish = publish,
		get = function()
			return currentRange
		end,
		connect = connect,
		isObserved = function()
			return listenerCount > 0
		end,
	}
end

return createRangeState
