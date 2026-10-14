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

type MutableSequence<T> = DataSource<T> & {
	append: (value: T) -> (),
	prepend: (value: T) -> (),
	insert: (index: number, value: T) -> (),
	remove: (index: number, count: number?) -> (),
	setItem: (index: number, value: T) -> (),
	moveItem: (fromIndex: number, toIndex: number) -> (),
	reorder: (orderedKeys: { string }) -> (),
	replaceItems: (firstIndex: number, lastIndex: number, values: { T }) -> (),
	reset: (values: { T }) -> (),
	transaction: (callback: () -> ()) -> (),
}

local function createSequenceDataSource<T>(initial: { T }?, getItemKey: GetItemKey<T>?): MutableSequence<T>
	local values = table.clone(initial or {})
	local keyRegistry = ItemKeyRegistry.create(getItemKey, "DataSource.sequence")
	local keys = keyRegistry.rebuild(values)
	local controller = createMutationController(function()
		return #values
	end, function()
		return { values = table.clone(values), keys = table.clone(keys), keyRegistry = keyRegistry.snapshot() }
	end, function(state)
		values = state.values
		keys = state.keys
		keyRegistry.restore(state.keyRegistry)
	end)

	local source: any
	source = {
		getItemCount = function()
			return #values
		end,
		getItem = function(index)
			return values[index]
		end,
		getItemKey = function(index)
			return keys[index]
		end,
		getItems = function(firstIndex, lastIndex)
			return table.move(values, firstIndex, lastIndex, 1, {})
		end,
		subscribe = controller.subscribe,
		transaction = controller.transaction,
	}

	function source.append(value: T)
		source.insert(#values + 1, value)
	end

	function source.prepend(value: T)
		source.insert(1, value)
	end

	function source.insert(index: number, value: T)
		local previousItemCount = #values
		assert(index >= 1 and index <= previousItemCount + 1, "DataSource.sequence: insert index out of range")
		local key = keyRegistry.claim(value, index)
		table.insert(values, index, value)
		table.insert(keys, index, key)
		controller.emit({ type = DataSourceChangeType.Insert, index = index, keys = { key } }, previousItemCount)
	end

	function source.remove(index: number, count: number?)
		local previousItemCount = #values
		local amount = count or 1
		assert(
			amount > 0 and index >= 1 and index + amount - 1 <= previousItemCount,
			"DataSource.sequence: remove range out of range"
		)
		local removedKeys = table.create(amount)
		for offset = 1, amount do
			table.remove(values, index)
			local removedKey = table.remove(keys, index) :: string
			removedKeys[offset] = removedKey
			keyRegistry.release(removedKey)
		end
		controller.emit({ type = DataSourceChangeType.Remove, index = index, keys = removedKeys }, previousItemCount)
	end

	function source.setItem(index: number, value: T)
		local previousItemCount = #values
		assert(index >= 1 and index <= previousItemCount, "DataSource.sequence: setItem index out of range")
		local existingKey = keys[index]
		keyRegistry.assertPreserved(existingKey, value, index)
		values[index] = value
		controller.emit({ type = DataSourceChangeType.Update, keys = { existingKey } }, previousItemCount)
	end

	function source.moveItem(fromIndex: number, toIndex: number)
		local previousItemCount = #values
		assert(
			fromIndex >= 1 and fromIndex <= previousItemCount,
			"DataSource.sequence: moveItem source index out of range"
		)
		assert(
			toIndex >= 1 and toIndex <= previousItemCount,
			"DataSource.sequence: moveItem destination index out of range"
		)
		if fromIndex == toIndex then
			return
		end
		local value = table.remove(values, fromIndex)
		local key = table.remove(keys, fromIndex) :: string
		table.insert(values, toIndex, value)
		table.insert(keys, toIndex, key)
		controller.emit({
			type = DataSourceChangeType.Move,
			fromIndex = fromIndex,
			toIndex = toIndex,
			key = key,
		}, previousItemCount)
	end

	function source.reorder(orderedKeys: { string })
		local previousItemCount = #values
		assert(#orderedKeys == previousItemCount, "DataSource.sequence: reorder must contain every key")
		local valueByKey: { [string]: T } = {}
		for index, key in keys do
			valueByKey[key] = values[index]
		end
		local nextValues = table.create(previousItemCount)
		local nextKeys = table.create(previousItemCount)
		local seen: { [string]: boolean } = {}
		for index, key in orderedKeys do
			assert(
				valueByKey[key] ~= nil and seen[key] == nil,
				"DataSource.sequence: reorder must contain every key once"
			)
			seen[key] = true
			nextValues[index] = valueByKey[key]
			nextKeys[index] = key
		end
		values = nextValues
		keys = nextKeys
		controller.emit({ type = DataSourceChangeType.Reorder, keys = table.clone(nextKeys) }, previousItemCount)
	end

	function source.replaceItems(firstIndex: number, lastIndex: number, replacements: { T })
		assert(
			firstIndex >= 1 and lastIndex >= firstIndex and lastIndex <= #values,
			"DataSource.sequence: replaceItems range out of range"
		)
		controller.transaction(function()
			source.remove(firstIndex, lastIndex - firstIndex + 1)
			if #replacements == 0 then
				return
			end

			local previousItemCount = #values
			local insertedKeys = table.create(#replacements)
			for offset, value in replacements do
				insertedKeys[offset] = keyRegistry.claim(value, firstIndex + offset - 1)
			end

			local nextValues = table.create(previousItemCount + #replacements)
			local nextKeys = table.create(previousItemCount + #replacements)
			if firstIndex > 1 then
				table.move(values, 1, firstIndex - 1, 1, nextValues)
				table.move(keys, 1, firstIndex - 1, 1, nextKeys)
			end
			for offset, value in replacements do
				local index = firstIndex + offset - 1
				nextValues[index] = value
				nextKeys[index] = insertedKeys[offset]
			end
			if firstIndex <= previousItemCount then
				table.move(values, firstIndex, previousItemCount, firstIndex + #replacements, nextValues)
				table.move(keys, firstIndex, previousItemCount, firstIndex + #replacements, nextKeys)
			end
			values = nextValues
			keys = nextKeys
			controller.emit({
				type = DataSourceChangeType.Insert,
				index = firstIndex,
				keys = insertedKeys,
			}, previousItemCount)
		end)
	end

	function source.reset(replacements: { T })
		local previousItemCount = #values
		local nextValues = table.clone(replacements)
		local nextKeys = keyRegistry.rebuild(nextValues)
		values = nextValues
		keys = nextKeys
		controller.emit({ type = DataSourceChangeType.Reset, keys = table.clone(nextKeys) }, previousItemCount)
	end

	return source
end

return createSequenceDataSource
