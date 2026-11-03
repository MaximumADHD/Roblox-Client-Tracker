local Src = script:FindFirstAncestor("ViewRecycler")

local DataSourceChangeType = require(Src.Core.Enums.DataSourceChangeType)
local Types = require(Src.Core.Types)

local ItemKeyRegistry = require(script.Parent.ItemKeyRegistry)
local createMutationController = require(script.Parent.MutationController)
local readDenseRange = require(script.Parent.readDenseRange)

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
	pushFrontMany: (values: { T }) -> (),
	pushBackMany: (values: { T }) -> (),
	popFront: () -> T?,
	popBack: () -> T?,
	setItem: (index: number, value: T) -> (),
	transaction: (callback: () -> ()) -> (),
}

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

	local function ensureCapacity(requiredCapacity: number)
		if requiredCapacity <= capacity then
			return
		end
		local nextCapacity = capacity * 2
		while nextCapacity < requiredCapacity do
			nextCapacity *= 2
		end
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

	local function claimMany(nextValues: { T }, firstIndex: number): { string }
		local claimedKeys = table.create(#nextValues)
		local result = table.pack(pcall(function()
			for index, value in nextValues do
				claimedKeys[index] = keyRegistry.claim(value, firstIndex + index - 1)
			end
		end))
		if not result[1] then
			for _, key in claimedKeys do
				keyRegistry.release(key)
			end
			error(result[2], 0)
		end
		return claimedKeys
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
			return readDenseRange(count, source.getItem, firstIndex, lastIndex)
		end,
		subscribe = controller.subscribe,
		transaction = controller.transaction,
	}

	function source.pushFront(value: T)
		source.pushFrontMany({ value })
	end

	function source.pushBack(value: T)
		source.pushBackMany({ value })
	end

	function source.pushFrontMany(nextValues: { T })
		local addedCount = #nextValues
		if addedCount == 0 then
			return
		end
		local previousItemCount = count
		local nextKeys = claimMany(nextValues, 1)
		ensureCapacity(count + addedCount)
		head = (head - addedCount - 1) % capacity + 1
		for index, value in nextValues do
			local position = (head + index - 2) % capacity + 1
			values[position] = value
			keys[position] = nextKeys[index]
		end
		count += addedCount
		controller.emit({ type = DataSourceChangeType.Insert, index = 1, keys = nextKeys }, previousItemCount)
	end

	function source.pushBackMany(nextValues: { T })
		local addedCount = #nextValues
		if addedCount == 0 then
			return
		end
		local previousItemCount = count
		local nextKeys = claimMany(nextValues, count + 1)
		ensureCapacity(count + addedCount)
		for index, value in nextValues do
			local position = physical(count + index)
			values[position] = value
			keys[position] = nextKeys[index]
		end
		count += addedCount
		controller.emit(
			{ type = DataSourceChangeType.Insert, index = previousItemCount + 1, keys = nextKeys },
			previousItemCount
		)
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

	function source.setItem(index: number, value: T)
		local previousItemCount = count
		assert(index >= 1 and index <= previousItemCount, "DataSource.deque: setItem index out of range")
		local position = physical(index)
		local existingKey = keys[position]
		keyRegistry.assertPreserved(existingKey, value, index)
		values[position] = value
		controller.emit({ type = DataSourceChangeType.Update, keys = { existingKey } }, previousItemCount)
	end

	return source
end

return createDequeDataSource
