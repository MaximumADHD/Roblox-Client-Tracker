export type GetItemKey<T> = (value: T, index: number) -> string
type MutableSequence<T> = {
	remove: (index: number, count: number?) -> (),
	insert: (index: number, value: T) -> (),
	setItem: (index: number, value: T) -> (),
	moveItem: (fromIndex: number, toIndex: number) -> (),
	reorder: (orderedKeys: { string }) -> (),
	reset: (values: { T }) -> (),
	transaction: (callback: () -> ()) -> (),
}

local function applySplice<T>(
	dataSource: MutableSequence<T>,
	previousItems: { T },
	nextItems: { T },
	prefix: number,
	suffix: number,
	updatedPrefix: { number }?
)
	local removed = #previousItems - prefix - suffix
	local inserted = #nextItems - prefix - suffix
	if removed > 0 then
		dataSource.remove(prefix + 1, removed)
	end
	for offset = 1, inserted do
		dataSource.insert(prefix + offset, nextItems[prefix + offset])
	end
	if updatedPrefix ~= nil then
		for _, index in updatedPrefix do
			dataSource.setItem(index, nextItems[index])
		end
	end
	for offset = 0, suffix - 1 do
		local nextIndex = #nextItems - offset
		local previousIndex = #previousItems - offset
		if previousItems[previousIndex] ~= nextItems[nextIndex] then
			dataSource.setItem(nextIndex, nextItems[nextIndex])
		end
	end
end

-- A contiguous splice (the pagination shape) is detected from the edges without
-- building key sets, so appending a page costs O(page), not O(items). The
-- sequence still rejects duplicate inserted keys and rolls the splice back.
local function reconcileSplice<T>(
	dataSource: MutableSequence<T>,
	previousItems: { T },
	nextItems: { T },
	getItemKey: GetItemKey<T>
): boolean
	local previousCount = #previousItems
	local nextCount = #nextItems
	local shared = math.min(previousCount, nextCount)
	local prefix = 0
	local updatedPrefix: { number }? = nil
	while prefix < shared do
		local index = prefix + 1
		local previousValue = previousItems[index]
		local nextValue = nextItems[index]
		if previousValue ~= nextValue then
			if getItemKey(previousValue, index) ~= getItemKey(nextValue, index) then
				break
			end
			if updatedPrefix == nil then
				updatedPrefix = {}
			end
			table.insert(updatedPrefix :: { number }, index)
		end
		prefix = index
	end
	local suffix = 0
	while suffix < shared - prefix do
		local previousIndex = previousCount - suffix
		local nextIndex = nextCount - suffix
		if getItemKey(previousItems[previousIndex], previousIndex) ~= getItemKey(nextItems[nextIndex], nextIndex) then
			break
		end
		suffix += 1
	end
	if prefix + suffix ~= shared then
		return false
	end
	dataSource.transaction(function()
		applySplice(dataSource, previousItems, nextItems, prefix, suffix, updatedPrefix)
	end)
	return true
end

local function reconcileSnapshot<T>(
	dataSource: MutableSequence<T>,
	previousItems: { T },
	nextItems: { T },
	getItemKey: GetItemKey<T>
)
	if reconcileSplice(dataSource, previousItems, nextItems, getItemKey) then
		return
	end

	local previousKeys = table.create(#previousItems)
	local nextKeys = table.create(#nextItems)
	local previousByKey: { [string]: T } = {}
	local seen: { [string]: boolean } = {}
	for index, value in previousItems do
		local key = getItemKey(value, index)
		if seen[key] ~= nil then
			error(`DataSource.reconcileSnapshot: duplicate key "{key}"`, 2)
		end
		seen[key] = true
		previousKeys[index] = key
		previousByKey[key] = value
	end
	table.clear(seen)
	for index, value in nextItems do
		local key = getItemKey(value, index)
		if seen[key] ~= nil then
			error(`DataSource.reconcileSnapshot: duplicate key "{key}"`, 2)
		end
		seen[key] = true
		nextKeys[index] = key
	end

	local sameKeySet = #previousKeys == #nextKeys
	if sameKeySet then
		for _, key in nextKeys do
			if previousByKey[key] == nil then
				sameKeySet = false
				break
			end
		end
	end

	local prefix = 0
	while prefix < math.min(#previousKeys, #nextKeys) and previousKeys[prefix + 1] == nextKeys[prefix + 1] do
		prefix += 1
	end
	local function updateRetainedValues()
		for index, value in nextItems do
			if previousByKey[nextKeys[index]] ~= value then
				dataSource.setItem(index, value)
			end
		end
	end

	dataSource.transaction(function()
		if sameKeySet then
			local mismatchIndex = prefix + 1
			local moveFrom = table.find(previousKeys, nextKeys[mismatchIndex])
			local moveTo: number? = mismatchIndex
			local function matchesMove(fromIndex: number?, toIndex: number?): boolean
				if fromIndex == nil or toIndex == nil then
					return false
				end
				local movedKeys = table.clone(previousKeys)
				local movedKey = table.remove(movedKeys, fromIndex)
				table.insert(movedKeys, toIndex, movedKey)
				for index, key in nextKeys do
					if movedKeys[index] ~= key then
						return false
					end
				end
				return true
			end
			if not matchesMove(moveFrom, moveTo) then
				moveFrom = mismatchIndex
				moveTo = table.find(nextKeys, previousKeys[mismatchIndex])
			end
			if matchesMove(moveFrom, moveTo) then
				dataSource.moveItem(moveFrom :: number, moveTo :: number)
			else
				dataSource.reorder(nextKeys)
			end
			updateRetainedValues()
		else
			dataSource.reset(nextItems)
		end
	end)
end

return reconcileSnapshot
