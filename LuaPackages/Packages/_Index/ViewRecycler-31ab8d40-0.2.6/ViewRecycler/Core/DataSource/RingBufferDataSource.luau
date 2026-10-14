local Src = script:FindFirstAncestor("ViewRecycler")

local DataSourceChangeType = require(Src.Core.Enums.DataSourceChangeType)
local Types = require(Src.Core.Types)

local ItemKeyRegistry = require(script.Parent.ItemKeyRegistry)
local createMutationController = require(script.Parent.MutationController)

type ChangeBatch = Types.DataSourceChangeBatch
type GetItemKey<T> = (value: T, index: number) -> string

type DataSource<T> = {
	getItemCount: () -> number,
	getItem: (index: number) -> T,
	getItemKey: (index: number) -> string,
	getItems: (firstIndex: number, lastIndex: number) -> { T },
	subscribe: (callback: (changeBatch: ChangeBatch) -> ()) -> () -> (),
}

type RingBuffer<T> = DataSource<T> & {
	push: (value: T) -> (),
	clear: () -> (),
	transaction: (callback: () -> ()) -> (),
}

local function getItems<T>(itemCount: number, getItem: (number) -> T, firstIndex: number, lastIndex: number): { T }
	local result = table.create(math.max(0, lastIndex - firstIndex + 1))
	for index = firstIndex, math.min(lastIndex, itemCount) do
		table.insert(result, getItem(index))
	end
	return result
end

local function createRingBufferDataSource<T>(capacity: number, initial: { T }?, getItemKey: GetItemKey<T>?): RingBuffer<T>
	assert(capacity > 0 and capacity % 1 == 0, "DataSource.ringBuffer: capacity must be a positive integer")
	local seed: { T } = initial or {}
	assert(#seed <= capacity, "DataSource.ringBuffer: initial values exceed capacity")
	local values: { [number]: T } = {}
	local keys: { [number]: string } = {}
	local keyRegistry = ItemKeyRegistry.create(getItemKey, "DataSource.ringBuffer")
	local seedKeys = keyRegistry.rebuild(seed)
	local head = 1
	local count = #seed
	for index, value in seed do
		values[index] = value
		keys[index] = seedKeys[index]
	end

	local controller = createMutationController(function()
		return count
	end, function()
		return {
			values = table.clone(values),
			keys = table.clone(keys),
			head = head,
			count = count,
			keyRegistry = keyRegistry.snapshot(),
		}
	end, function(state)
		values = state.values
		keys = state.keys
		head = state.head
		count = state.count
		keyRegistry.restore(state.keyRegistry)
	end)

	local function physical(index: number): number
		return (head + index - 2) % capacity + 1
	end

	local source: any
	source = {
		getItemCount = function()
			return count
		end,
		getItem = function(index)
			return values[physical(index)]
		end,
		getItemKey = function(index)
			return keys[physical(index)]
		end,
		getItems = function(firstIndex, lastIndex)
			return getItems(count, source.getItem, firstIndex, lastIndex)
		end,
		subscribe = controller.subscribe,
		transaction = controller.transaction,
	}

	function source.push(value: T)
		local previousItemCount = count
		if count == capacity then
			local position = head
			local removedKey = keys[position]
			local key = keyRegistry.replace(removedKey, value, capacity)
			values[position] = value
			keys[position] = key
			head = head % capacity + 1
			controller.emitMany({
				{ type = DataSourceChangeType.Remove, index = 1, keys = { removedKey } },
				{ type = DataSourceChangeType.Insert, index = capacity, keys = { key } },
			}, previousItemCount)
			return
		end

		local key = keyRegistry.claim(value, count + 1)
		local position = physical(count + 1)
		values[position] = value
		keys[position] = key
		count += 1
		controller.emit({ type = DataSourceChangeType.Insert, index = count, keys = { key } }, previousItemCount)
	end

	function source.clear()
		local previousItemCount = count
		if previousItemCount == 0 then
			return
		end
		values = {}
		keys = {}
		keyRegistry.clear()
		head = 1
		count = 0
		controller.emit({ type = DataSourceChangeType.Reset, keys = {} }, previousItemCount)
	end

	return source
end

return createRingBufferDataSource
