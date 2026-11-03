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

type Deque<T> = DataSource<T> & {
	pushFront: (value: T) -> (),
	pushBack: (value: T) -> (),
	popFront: () -> T?,
	popBack: () -> T?,
	transaction: (callback: () -> ()) -> (),
}

local function getItems<T>(itemCount: number, getItem: (number) -> T, firstIndex: number, lastIndex: number): { T }
	local result = table.create(math.max(0, lastIndex - firstIndex + 1))
	for index = firstIndex, math.min(lastIndex, itemCount) do
		table.insert(result, getItem(index))
	end
	return result
end

local function createDequeDataSource<T>(initial: { T }?, getItemKey: GetItemKey<T>?): Deque<T>
	local seed: { T } = initial or {}
	local values: { [number]: T } = {}
	local keys: { [number]: string } = {}
	local keyRegistry = ItemKeyRegistry.create(getItemKey, "DataSource.deque")
	local seedKeys = keyRegistry.rebuild(seed)
	local capacity = math.max(8, #seed)
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
			capacity = capacity,
			head = head,
			count = count,
			keyRegistry = keyRegistry.snapshot(),
		}
	end, function(state)
		values = state.values
		keys = state.keys
		capacity = state.capacity
		head = state.head
		count = state.count
		keyRegistry.restore(state.keyRegistry)
	end)

	local function physical(index: number): number
		return (head + index - 2) % capacity + 1
	end

	local function ensureCapacity()
		if count < capacity then
			return
		end
		local nextCapacity = capacity * 2
		local nextValues: { [number]: T } = {}
		local nextKeys: { [number]: string } = {}
		for index = 1, count do
			nextValues[index] = values[physical(index)]
			nextKeys[index] = keys[physical(index)]
		end
		values = nextValues
		keys = nextKeys
		capacity = nextCapacity
		head = 1
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

	function source.pushFront(value: T)
		local previousItemCount = count
		local key = keyRegistry.claim(value, 1)
		ensureCapacity()
		head = (head - 2) % capacity + 1
		values[head] = value
		keys[head] = key
		count += 1
		controller.emit({ type = DataSourceChangeType.Insert, index = 1, keys = { key } }, previousItemCount)
	end

	function source.pushBack(value: T)
		local previousItemCount = count
		local key = keyRegistry.claim(value, count + 1)
		ensureCapacity()
		local position = physical(count + 1)
		values[position] = value
		keys[position] = key
		count += 1
		controller.emit({ type = DataSourceChangeType.Insert, index = count, keys = { key } }, previousItemCount)
	end

	function source.popFront(): T?
		if count == 0 then
			return nil
		end
		local previousItemCount = count
		local value = values[head]
		values[head] = nil
		local removedKey = keys[head]
		keys[head] = nil
		keyRegistry.release(removedKey)
		head = head % capacity + 1
		count -= 1
		controller.emit({ type = DataSourceChangeType.Remove, index = 1, keys = { removedKey } }, previousItemCount)
		return value
	end

	function source.popBack(): T?
		if count == 0 then
			return nil
		end
		local previousItemCount = count
		local position = physical(count)
		local value = values[position]
		values[position] = nil
		local removedKey = keys[position]
		keys[position] = nil
		keyRegistry.release(removedKey)
		count -= 1
		controller.emit(
			{ type = DataSourceChangeType.Remove, index = previousItemCount, keys = { removedKey } },
			previousItemCount
		)
		return value
	end

	return source
end

return createDequeDataSource
