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

local function reconcileSnapshot<T>(
	dataSource: MutableSequence<T>,
	previousItems: { T },
	nextItems: { T },
	getItemKey: GetItemKey<T>
)
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
	local suffix = 0
	while
		suffix < math.min(#previousKeys, #nextKeys) - prefix
		and previousKeys[#previousKeys - suffix] == nextKeys[#nextKeys - suffix]
	do
		suffix += 1
	end

	local function updateRetainedValues()
		for index, value in nextItems do
			if previousByKey[nextKeys[index]] ~= value then
				dataSource.setItem(index, value)
			end
		end
	end

	dataSource.transaction(function()
		if #previousKeys == #nextKeys and prefix == #nextKeys then
			updateRetainedValues()
		elseif prefix + suffix == math.min(#previousKeys, #nextKeys) then
			local removed = #previousKeys - prefix - suffix
			local inserted = #nextKeys - prefix - suffix
			if removed > 0 then
				dataSource.remove(prefix + 1, removed)
			end
			for offset = 1, inserted do
				dataSource.insert(prefix + offset, nextItems[prefix + offset])
			end
			for index = 1, prefix do
				if previousItems[index] ~= nextItems[index] then
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
		elseif sameKeySet then
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
