local Src = script:FindFirstAncestor("ViewRecycler")

local DataSourceChangeType = require(Src.Core.Enums.DataSourceChangeType)
local Types = require(Src.Core.Types)

local createTranslatedDataSource = require(script.Parent.TranslatedDataSource)

type ChangeBatch = Types.DataSourceChangeBatch
type DataSource<T> = {
	getItemCount: () -> number,
	getItem: (index: number) -> T,
	getItemKey: (index: number) -> string,
	getItems: (firstIndex: number, lastIndex: number) -> { T },
	subscribe: (callback: (changeBatch: ChangeBatch) -> ()) -> () -> (),
}

local function reversedKeys(keys: { string }): { string }
	local result = table.create(#keys)
	for index, key in keys do
		result[#keys - index + 1] = key
	end
	return result
end

local function createReverseDataSource<T>(child: DataSource<T>): DataSource<T>
	return createTranslatedDataSource(child.getItemCount, function(index)
		return child.getItem(child.getItemCount() - index + 1)
	end, function(index)
		return child.getItemKey(child.getItemCount() - index + 1)
	end, function(forward)
		return child.subscribe(function(changeBatch)
			local currentItemCount = changeBatch.previousItemCount
			local changes: { Types.DataSourceChange } = {}
			for _, change in changeBatch.changes do
				if change.type == DataSourceChangeType.Insert then
					local insertChange = change :: Types.InsertDataSourceChange
					table.insert(changes, {
						type = DataSourceChangeType.Insert,
						index = currentItemCount - insertChange.index + 2,
						keys = reversedKeys(insertChange.keys),
					})
					currentItemCount += #insertChange.keys
				elseif change.type == DataSourceChangeType.Remove then
					local removeChange = change :: Types.RemoveDataSourceChange
					table.insert(changes, {
						type = DataSourceChangeType.Remove,
						index = currentItemCount - removeChange.index - #removeChange.keys + 2,
						keys = reversedKeys(removeChange.keys),
					})
					currentItemCount -= #removeChange.keys
				elseif change.type == DataSourceChangeType.Update then
					table.insert(changes, {
						type = DataSourceChangeType.Update,
						keys = table.clone((change :: Types.UpdateDataSourceChange).keys),
					})
				elseif change.type == DataSourceChangeType.Move then
					local moveChange = change :: Types.MoveDataSourceChange
					table.insert(changes, {
						type = DataSourceChangeType.Move,
						fromIndex = currentItemCount - moveChange.fromIndex + 1,
						toIndex = currentItemCount - moveChange.toIndex + 1,
						key = moveChange.key,
					})
				elseif change.type == DataSourceChangeType.Reorder then
					local keys = reversedKeys((change :: Types.ReorderDataSourceChange).keys)
					table.insert(changes, { type = DataSourceChangeType.Reorder, keys = keys })
				elseif change.type == DataSourceChangeType.Reset then
					local keys = reversedKeys((change :: Types.ResetDataSourceChange).keys)
					table.insert(changes, { type = DataSourceChangeType.Reset, keys = keys })
					currentItemCount = #keys
				end
			end
			forward({
				changes = changes,
				previousItemCount = changeBatch.previousItemCount,
				itemCount = changeBatch.itemCount,
			})
		end)
	end)
end

return createReverseDataSource
