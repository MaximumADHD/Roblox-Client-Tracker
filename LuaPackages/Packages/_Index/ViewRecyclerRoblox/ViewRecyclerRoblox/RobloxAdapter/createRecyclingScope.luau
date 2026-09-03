local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local Core = require(Root.Parent.ViewRecycler)

export type Options<ItemView, T, ItemViewType> = {
	itemViewAdapter: {
		create: (itemViewType: ItemViewType) -> ItemView,
		update: (itemView: ItemView, assignment: Core.ItemAssignment<T>?) -> (),
		batch: ((callback: () -> ()) -> ())?,
		onCreated: ((itemViews: { ItemView }) -> ())?,
		onEvicted: ((itemViews: { ItemView }) -> ())?,
	},
	destroyItemView: ((itemView: ItemView) -> ())?,
	getInstance: ((itemView: ItemView) -> GuiObject)?,
	maxPoolSize: number?,
	diagnostics: Core.DiagnosticCallback?,
}

export type RecyclingScope<ItemView, T, ItemViewType> = Core.RecyclingScope<ItemView, T, ItemViewType> & {
	getItemViews: () -> { ItemView },
	getVacantViews: () -> { ItemView },
	updateItemView: (itemView: ItemView, assignment: Core.ItemAssignment<T>?) -> (),
}

local function createRecyclingScope<ItemView, T, ItemViewType>(
	options: Options<ItemView, T, ItemViewType>
): RecyclingScope<ItemView, T, ItemViewType>
	local itemViewAdapter = options.itemViewAdapter
	local batchDepth = 0
	local created: { ItemView } = {}
	local evicted: { ItemView } = {}

	local function getInstance(itemView: ItemView): GuiObject
		local instance = if options.getInstance ~= nil then options.getInstance(itemView) else itemView :: any
		assert(
			typeof(instance) == "Instance" and instance:IsA("GuiObject"),
			"createRecyclingScope: ItemView host must be a GuiObject"
		)
		return instance
	end

	local function flushLifecycle()
		local evictedSet = {}
		for _, itemView in evicted do
			evictedSet[itemView] = true
		end
		if #evicted > 0 and itemViewAdapter.onEvicted ~= nil then
			itemViewAdapter.onEvicted(table.clone(evicted))
		end
		for _, itemView in evicted do
			if options.destroyItemView ~= nil then
				options.destroyItemView(itemView)
			else
				getInstance(itemView):Destroy()
			end
		end
		if #created > 0 and itemViewAdapter.onCreated ~= nil then
			local surviving = {}
			for _, itemView in created do
				if not evictedSet[itemView] then
					table.insert(surviving, itemView)
				end
			end
			if #surviving > 0 then
				itemViewAdapter.onCreated(surviving)
			end
		end
		table.clear(created)
		table.clear(evicted)
	end

	local runAdapterBatch = itemViewAdapter.batch or function(callback)
		callback()
	end
	local function batch(callback: () -> ())
		batchDepth += 1
		local ok, result = pcall(runAdapterBatch, callback)
		batchDepth -= 1
		if batchDepth == 0 then
			flushLifecycle()
		end
		if not ok then
			error(result, 0)
		end
	end

	local scope = Core.Adapter.createRecyclingScope({
		maxPoolSize = options.maxPoolSize,
		onPoolChanged = if options.diagnostics == nil
			then nil
			else function(change)
				options.diagnostics({
					kind = Core.Diagnostics.EventKind.PoolChanged,
					action = change.action,
					itemViewType = change.viewType,
					occupiedDelta = change.occupiedDelta,
					vacantDelta = change.vacantDelta,
					totalDelta = change.totalDelta,
				})
			end,
		adapter = {
			create = function(itemViewType)
				local itemView = itemViewAdapter.create(itemViewType)
				getInstance(itemView)
				table.insert(created, itemView)
				return itemView
			end,
			destroy = function(itemView)
				table.insert(evicted, itemView)
			end,
			batch = batch,
		},
	})

	return {
		exchange = function(owner, releases, requests)
			local result = scope.exchange(owner, releases, requests)
			if batchDepth == 0 then
				flushLifecycle()
			end
			return result
		end,
		batch = scope.batch,
		isLeaseCurrent = scope.isLeaseCurrent,
		setMaxPoolSize = scope.setMaxPoolSize,
		getScopeInventory = scope.getScopeInventory,
		getVacantViews = scope.getVacantViews,
		getItemViews = scope.getScopeInventory,
		updateItemView = itemViewAdapter.update,
		destroy = function()
			scope.destroy()
		end,
	}
end

return {
	create = createRecyclingScope,
}
