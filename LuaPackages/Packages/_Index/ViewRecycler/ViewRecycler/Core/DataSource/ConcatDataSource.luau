local Src = script:FindFirstAncestor("ViewRecycler")

local DataSourceChangeType = require(Src.Core.Enums.DataSourceChangeType)
local Types = require(Src.Core.Types)

local KeyUtils = require(script.Parent.KeyUtils)
local createTranslatedDataSource = require(script.Parent.TranslatedDataSource)

type ChangeBatch = Types.DataSourceChangeBatch
type DataSource<T> = {
	getItemCount: () -> number,
	getItem: (index: number) -> T,
	getItemKey: (index: number) -> string,
	getItems: (firstIndex: number, lastIndex: number) -> { T },
	subscribe: (callback: (changeBatch: ChangeBatch) -> ()) -> () -> (),
}

local function createConcatDataSource<T>(...: DataSource<T>): DataSource<T>
	local children = { ... }

	local function getItemCount(): number
		local total = 0
		for _, child in children do
			total += child.getItemCount()
		end
		return total
	end

	local function resolve(index: number): (DataSource<T>, number)
		for _, child in children do
			if index <= child.getItemCount() then
				return child, index
			end
			index -= child.getItemCount()
		end
		error("DataSource.concat: index out of range")
	end

	local source = createTranslatedDataSource(getItemCount, function(index)
		local child, childIndex = resolve(index)
		return child.getItem(childIndex)
	end, function(index)
		local child, childIndex = resolve(index)
		return child.getItemKey(childIndex)
	end, function(forward)
		local keysByChild: { { string } } = {}
		for index, child in children do
			local childKeys = table.create(child.getItemCount())
			for itemIndex = 1, child.getItemCount() do
				childKeys[itemIndex] = child.getItemKey(itemIndex)
			end
			keysByChild[index] = childKeys
		end
		local function collectAllKeys()
			local result = {}
			for _, childKeys in keysByChild do
				for _, key in childKeys do
					table.insert(result, key)
				end
			end
			return result
		end
		local function validateCurrentKeys()
			KeyUtils.validateUnique(collectAllKeys(), "DataSource.concat")
		end
		local disconnects = {}
		for childIndex, child in children do
			table.insert(
				disconnects,
				child.subscribe(function(changeBatch)
					local offset = 0
					for index = 1, childIndex - 1 do
						offset += #keysByChild[index]
					end
					local previousItemCount = 0
					for _, childKeys in keysByChild do
						previousItemCount += #childKeys
					end
					local childKeys = keysByChild[childIndex]
					local changes: { Types.DataSourceChange } = {}
					for _, change in changeBatch.changes do
						if change.type == DataSourceChangeType.Insert then
							local insertChange = change :: Types.InsertDataSourceChange
							for keyOffset, key in insertChange.keys do
								table.insert(childKeys, insertChange.index + keyOffset - 1, key)
							end
							table.insert(changes, {
								type = DataSourceChangeType.Insert,
								index = offset + insertChange.index,
								keys = table.clone(insertChange.keys),
							})
						elseif change.type == DataSourceChangeType.Remove then
							local removeChange = change :: Types.RemoveDataSourceChange
							for _ = 1, #removeChange.keys do
								table.remove(childKeys, removeChange.index)
							end
							table.insert(changes, {
								type = DataSourceChangeType.Remove,
								index = offset + removeChange.index,
								keys = table.clone(removeChange.keys),
							})
						elseif change.type == DataSourceChangeType.Update then
							table.insert(changes, {
								type = DataSourceChangeType.Update,
								keys = table.clone((change :: Types.UpdateDataSourceChange).keys),
							})
						elseif change.type == DataSourceChangeType.Move then
							local moveChange = change :: Types.MoveDataSourceChange
							local key = table.remove(childKeys, moveChange.fromIndex)
							table.insert(childKeys, moveChange.toIndex, key)
							table.insert(changes, {
								type = DataSourceChangeType.Move,
								fromIndex = offset + moveChange.fromIndex,
								toIndex = offset + moveChange.toIndex,
								key = moveChange.key,
							})
						elseif change.type == DataSourceChangeType.Reorder then
							keysByChild[childIndex] = table.clone((change :: Types.ReorderDataSourceChange).keys)
							childKeys = keysByChild[childIndex]
							table.insert(changes, { type = DataSourceChangeType.Reorder, keys = collectAllKeys() })
						elseif change.type == DataSourceChangeType.Reset then
							keysByChild[childIndex] = table.clone((change :: Types.ResetDataSourceChange).keys)
							childKeys = keysByChild[childIndex]
							table.insert(changes, { type = DataSourceChangeType.Reset, keys = collectAllKeys() })
						end
					end
					validateCurrentKeys()
					forward({
						changes = changes,
						previousItemCount = previousItemCount,
						itemCount = #collectAllKeys(),
					})
				end)
			)
		end
		return function()
			for _, disconnect in disconnects do
				disconnect()
			end
		end
	end)

	local allKeys = {}
	for index = 1, source.getItemCount() do
		allKeys[index] = source.getItemKey(index)
	end
	KeyUtils.validateUnique(allKeys, "DataSource.concat")
	return source
end

return createConcatDataSource
