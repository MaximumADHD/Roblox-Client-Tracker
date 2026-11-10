local FFlagViewRecyclerReact08 = require(script:FindFirstAncestor("ViewRecyclerRoblox").Flags).FFlagViewRecyclerReact08
local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local Core = require(Root.Parent.ViewRecycler)
export type Options<ItemView, ItemViewType> = {
	itemViewAdapter: {
		create: (itemViewType: ItemViewType) -> ItemView,
		batch: ((callback: () -> ()) -> ())?,
		onCreated: ((itemViews: { ItemView }) -> ())?,
		onEvicted: ((itemViews: { ItemView }) -> ())?,
	},
	destroyItemView: ((itemView: ItemView) -> ())?,
	getInstance: ((itemView: ItemView) -> GuiObject)?,
	maxPoolSize: number?,
	diagnostics: Core.DiagnosticCallback?,
}

export type RecyclingScope<ItemView, ItemViewType> = Core.RecyclingScope<ItemView, ItemViewType>

local function createRecyclingScope<ItemView, ItemViewType>(options: Options<ItemView, ItemViewType>): RecyclingScope<ItemView, ItemViewType>
	local itemViewAdapter = options.itemViewAdapter
	local maximum = options.maxPoolSize

	local function getInstance(itemView: ItemView): GuiObject
		local instance = if options.getInstance ~= nil then options.getInstance(itemView) else itemView :: any
		assert(
			typeof(instance) == "Instance" and instance:IsA("GuiObject"),
			"createRecyclingScope: ItemView host must be a GuiObject"
		)
		return instance
	end

	local runAdapterBatch = itemViewAdapter.batch or function(callback)
		callback()
	end

	local lifetimes: { [ItemView]: RBXScriptConnection }
	if FFlagViewRecyclerReact08 then -- Destroying an Instance disconnects its connections at once, even under
		-- deferred signals, so a held connection reports a destroyed Host.
		lifetimes = {}
	end
	local scope = Core.Adapter.createRecyclingScope({
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

				if FFlagViewRecyclerReact08 then
					lifetimes[itemView] = getInstance(itemView).Destroying:Connect(function() end)
				else
					getInstance(itemView)
				end
				return itemView
			end,
			destroy = function(itemView)
				local lifetime
				if FFlagViewRecyclerReact08 then
					lifetime = lifetimes[itemView]
					if lifetime ~= nil then
						lifetime:Disconnect()
						lifetimes[itemView] = nil
					end
				end
				if options.destroyItemView ~= nil then
					options.destroyItemView(itemView)
				else
					getInstance(itemView):Destroy()
				end
			end,
			onCreated = itemViewAdapter.onCreated,
			onEvicted = itemViewAdapter.onEvicted,
			batch = runAdapterBatch,
			isDestroyed = (if FFlagViewRecyclerReact08
				then function(itemView)
					local lifetime = lifetimes[itemView]
					return lifetime ~= nil and not lifetime.Connected
				end
				else nil),
		},
	})

	return {
		bind = function(submission)
			local normalized = table.clone(submission)
			if normalized.capacity == nil then
				normalized.capacity = maximum
			end
			return scope.bind(normalized)
		end,
		dispose = scope.dispose,
	}
end

return {
	create = createRecyclingScope,
}
