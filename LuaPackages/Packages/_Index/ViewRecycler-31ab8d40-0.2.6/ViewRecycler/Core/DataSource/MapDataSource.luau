local Src = script:FindFirstAncestor("ViewRecycler")

local DataSourceChangeType = require(Src.Core.Enums.DataSourceChangeType)
local Types = require(Src.Core.Types)
local createEvent = require(Src.Internal.createEvent)

type ChangeBatch = Types.DataSourceChangeBatch
type DataSource<T> = {
	getItemCount: () -> number,
	getItem: (index: number) -> T,
	getItemKey: (index: number) -> string,
	getItems: (firstIndex: number, lastIndex: number) -> { T },
	subscribe: (callback: (changeBatch: ChangeBatch) -> ()) -> () -> (),
}

local function getItems<T>(itemCount: number, getItem: (number) -> T, firstIndex: number, lastIndex: number): { T }
	local result = table.create(math.max(0, lastIndex - firstIndex + 1))
	for index = firstIndex, math.min(lastIndex, itemCount) do
		table.insert(result, getItem(index))
	end
	return result
end

local function createMapDataSource<T, U>(child: DataSource<T>, mapper: (value: T, index: number) -> U): DataSource<U>
	type CacheEntry = {
		input: T,
		index: number,
		output: U,
	}

	local cacheByKey: { [string]: CacheEntry } = {}
	local changed: createEvent.Event<ChangeBatch> = createEvent()
	local subscriberCount = 0
	local disconnectChild: (() -> ())? = nil

	local function getItem(index: number): U
		local input = child.getItem(index)
		if subscriberCount == 0 then
			return mapper(input, index)
		end
		local key = child.getItemKey(index)
		local cached = cacheByKey[key]
		if cached ~= nil and cached.input == input and cached.index == index then
			return cached.output
		end
		local output = mapper(input, index)
		cacheByKey[key] = {
			input = input,
			index = index,
			output = output,
		}
		return output
	end

	local function connectChild()
		disconnectChild = child.subscribe(function(changeBatch)
			for _, change in changeBatch.changes do
				if change.type == DataSourceChangeType.Reset then
					cacheByKey = {}
					break
				elseif change.type == DataSourceChangeType.Update or change.type == DataSourceChangeType.Remove then
					local keys = if change.type == DataSourceChangeType.Update
						then (change :: Types.UpdateDataSourceChange).keys
						else (change :: Types.RemoveDataSourceChange).keys
					for _, key in keys do
						cacheByKey[key] = nil
					end
				end
			end
			changed.fire({
				changes = changeBatch.changes,
				previousItemCount = changeBatch.previousItemCount,
				itemCount = changeBatch.itemCount,
			})
		end)
	end

	local function subscribe(callback: (ChangeBatch) -> ())
		if subscriberCount == 0 then
			cacheByKey = {}
			connectChild()
		end
		subscriberCount += 1
		local disconnect = changed.connect(callback)
		local connected = true
		return function()
			if not connected then
				return
			end
			connected = false
			disconnect()
			subscriberCount -= 1
			if subscriberCount == 0 and disconnectChild ~= nil then
				disconnectChild()
				disconnectChild = nil
				cacheByKey = {}
			end
		end
	end

	return {
		getItemCount = child.getItemCount,
		getItem = getItem,
		getItemKey = child.getItemKey,
		getItems = function(firstIndex, lastIndex)
			return getItems(child.getItemCount(), getItem, firstIndex, lastIndex)
		end,
		subscribe = subscribe,
	}
end

return createMapDataSource
