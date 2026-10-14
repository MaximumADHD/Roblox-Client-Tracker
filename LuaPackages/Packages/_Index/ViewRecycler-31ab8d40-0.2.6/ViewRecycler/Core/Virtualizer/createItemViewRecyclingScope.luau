local Src = script:FindFirstAncestor("ViewRecycler")

local Diagnostics = require(Src.Core.Diagnostics)
local createRecyclingScope = require(Src.Core.RecyclingScope)

export type Adapter<ItemView, T, ItemViewType> = {
	create: (itemViewType: ItemViewType) -> ItemView,
	update: (itemView: ItemView, assignment: { key: string, index: number?, value: T, generation: number }?) -> (),
	batch: ((callback: () -> ()) -> ())?,
	onCreated: ((itemViews: { ItemView }) -> ())?,
	onEvicted: ((itemViews: { ItemView }) -> ())?,
}

export type Options<ItemView, T, ItemViewType> = {
	itemViewAdapter: Adapter<ItemView, T, ItemViewType>,
	maxPoolSize: number?,
	diagnostics: Diagnostics.Callback?,
}

local function directBatch(callback: () -> ())
	callback()
end

local function createItemViewRecyclingScope<ItemView, T, ItemViewType>(
	options: Options<ItemView, T, ItemViewType>
): createRecyclingScope.RecyclingScope<
	ItemView,
	ItemViewType
>
	local itemViewAdapter = options.itemViewAdapter
	local alive: { [ItemView]: boolean } = {}
	local created: { ItemView } = {}
	local evicted: { ItemView } = {}

	local function flushLifecycleNotifications()
		if #evicted > 0 and itemViewAdapter.onEvicted ~= nil then
			itemViewAdapter.onEvicted(evicted)
		end
		if #created > 0 and itemViewAdapter.onCreated ~= nil then
			local surviving = {}
			for _, itemView in created do
				if alive[itemView] then
					table.insert(surviving, itemView)
				end
			end
			if #surviving > 0 then
				itemViewAdapter.onCreated(surviving)
			end
		end
		created = {}
		evicted = {}
	end

	local runAdapterBatch = itemViewAdapter.batch or directBatch
	local function batch(callback: () -> ())
		local ok, result = pcall(runAdapterBatch, callback)
		flushLifecycleNotifications()
		if not ok then
			error(result, 0)
		end
	end

	local diagnostics = options.diagnostics
	return createRecyclingScope({
		adapter = {
			create = function(itemViewType)
				local itemView = itemViewAdapter.create(itemViewType)
				alive[itemView] = true
				table.insert(created, itemView)
				return itemView
			end,
			destroy = function(itemView)
				alive[itemView] = nil
				table.insert(evicted, itemView)
			end,
			batch = batch,
		},
		maxPoolSize = options.maxPoolSize,
		onPoolChanged = if diagnostics == nil
			then nil
			else function(change)
				diagnostics({
					kind = Diagnostics.EventKind.PoolChanged,
					action = change.action,
					itemViewType = change.viewType,
					occupiedDelta = change.occupiedDelta,
					vacantDelta = change.vacantDelta,
					totalDelta = change.totalDelta,
				})
			end,
	})
end

return createItemViewRecyclingScope
