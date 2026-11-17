local FFlagViewRecyclerReact084 =
	require(script:FindFirstAncestor("ViewRecyclerRoblox").Flags).FFlagViewRecyclerReact084
local FFlagViewRecyclerReact08 = require(script:FindFirstAncestor("ViewRecyclerRoblox").Flags).FFlagViewRecyclerReact08
local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local Core = require(Root.Parent.ViewRecycler)

local VacantHosts = require(Root.RobloxAdapter.VacantHosts)

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
	-- A Vacant Host stays, hidden, in the list container it left. When that
	-- list is destroyed or changes container, its Vacant Hosts move here,
	-- at the size they were laid out at, so a later list can reuse them
	-- after the old container is destroyed. Must be under a LayerCollector
	-- by then, or laid-out Hosts stay where they are.
	vacantHostParent: Instance,
}

export type RecyclingScope<ItemView, ItemViewType> = Core.RecyclingScope<ItemView, ItemViewType>

local function createRecyclingScope<ItemView, ItemViewType>(options: Options<ItemView, ItemViewType>): RecyclingScope<ItemView, ItemViewType>
	if FFlagViewRecyclerReact084 then
		assert(
			typeof(options.vacantHostParent) == "Instance",
			"createRecyclingScope: vacantHostParent must be an Instance"
		)
	end
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
	if FFlagViewRecyclerReact084 then -- Destroying an Instance disconnects its connections at once, even under
		-- deferred signals, so a held connection reports a destroyed Host.
		lifetimes = {}
	else
		lifetimes = nil
		if FFlagViewRecyclerReact08 then -- Destroying an Instance disconnects its connections at once, even under
			-- deferred signals, so a held connection reports a destroyed Host.
			lifetimes = {}
		end
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

				if FFlagViewRecyclerReact084 then
					lifetimes[itemView] = getInstance(itemView).Destroying:Connect(function() end)
				else
					if FFlagViewRecyclerReact08 then
						lifetimes[itemView] = getInstance(itemView).Destroying:Connect(function() end)
					else
						getInstance(itemView)
					end
				end
				return itemView
			end,
			destroy = function(itemView)
				local lifetime
				if FFlagViewRecyclerReact084 then
					lifetime = lifetimes[itemView]
				else
					lifetime = nil
				end
				if if FFlagViewRecyclerReact084 then lifetime ~= nil else FFlagViewRecyclerReact08 then
					if FFlagViewRecyclerReact084 then
						lifetime:Disconnect()
						lifetimes[itemView] = nil
					else
						lifetime = lifetimes[itemView]
						if lifetime ~= nil then
							lifetime:Disconnect()
							lifetimes[itemView] = nil
						end
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
			isDestroyed = (if FFlagViewRecyclerReact084
				then function(itemView)
					local lifetime = lifetimes[itemView]
					return lifetime ~= nil and not lifetime.Connected
				end
				else (if FFlagViewRecyclerReact08
					then function(itemView)
						local lifetime = lifetimes[itemView]
						return lifetime ~= nil and not lifetime.Connected
					end
					else nil)),
		},
	})

	local vacantHosts, recyclingScope: RecyclingScope<ItemView, ItemViewType>
	if FFlagViewRecyclerReact084 then
		vacantHosts = VacantHosts.new()
		vacantHosts.setParent(options.vacantHostParent)

		recyclingScope = {
			bind = function(submission)
				local normalized = table.clone(submission)
				if normalized.capacity == nil then
					normalized.capacity = maximum
				end
				return scope.bind(normalized)
			end,
			dispose = function()
				scope.dispose()
				vacantHosts.destroy()
			end,
		}
		VacantHosts.register(recyclingScope, vacantHosts)
	end
	return (
		if FFlagViewRecyclerReact084
			then recyclingScope
			else {
				bind = function(submission)
					local normalized = table.clone(submission)
					if normalized.capacity == nil then
						normalized.capacity = maximum
					end
					return scope.bind(normalized)
				end,
				dispose = scope.dispose,
			}
	)
end

return {
	create = createRecyclingScope,
}
