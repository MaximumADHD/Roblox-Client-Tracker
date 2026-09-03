local Src = script:FindFirstAncestor("ViewRecycler")

local Types = require(Src.Core.Types)

local KeyUtils = require(script.Parent.KeyUtils)

type ChangeBatch = Types.DataSourceChangeBatch
type GetItemKey<T> = (value: T, index: number) -> string

type DataSource<T> = {
	getItemCount: () -> number,
	getItem: (index: number) -> T,
	getItemKey: (index: number) -> string,
	getItems: (firstIndex: number, lastIndex: number) -> { T },
	subscribe: (callback: (changeBatch: ChangeBatch) -> ()) -> () -> (),
}

local NEVER_DISCONNECT: () -> () = function() end

local function createArrayDataSource<T>(items: { T }, getItemKey: GetItemKey<T>?): DataSource<T>
	local values = table.clone(items)
	local keys = KeyUtils.keysFor(values, getItemKey)
	return {
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
		subscribe = function(_callback)
			return NEVER_DISCONNECT
		end,
	}
end

return createArrayDataSource
