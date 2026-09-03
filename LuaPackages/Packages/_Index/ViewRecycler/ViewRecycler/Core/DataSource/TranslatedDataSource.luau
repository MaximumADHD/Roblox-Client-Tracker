local Src = script:FindFirstAncestor("ViewRecycler")

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

local function createTranslatedDataSource<T>(
	getItemCount: () -> number,
	getItem: (number) -> T,
	getItemKey: (number) -> string,
	connectChildren: ((ChangeBatch) -> ()) -> () -> ()
): DataSource<T>
	local changed: createEvent.Event<ChangeBatch> = createEvent()
	local subscriberCount = 0
	local disconnectChildren: (() -> ())? = nil

	local function subscribe(callback: (ChangeBatch) -> ())
		if subscriberCount == 0 then
			disconnectChildren = connectChildren(changed.fire)
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
			if subscriberCount == 0 and disconnectChildren ~= nil then
				disconnectChildren()
				disconnectChildren = nil
			end
		end
	end

	return {
		getItemCount = getItemCount,
		getItem = getItem,
		getItemKey = getItemKey,
		getItems = function(firstIndex, lastIndex)
			return getItems(getItemCount(), getItem, firstIndex, lastIndex)
		end,
		subscribe = subscribe,
	}
end

return createTranslatedDataSource
