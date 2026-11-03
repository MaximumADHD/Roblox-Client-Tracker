local Root = script:FindFirstAncestor("ViewRecyclerReact")
local Core = require(Root.Parent.ViewRecycler)

local RecyclableViewHost = require(Root.ReactAdapter.RecyclableViewHost)
local React = require(Root.Parent.React)
local RecyclableViewRegistry = require(script.Parent.RecyclableViewRegistry)
local SignalsExperimental = require(Root.Parent.SignalsExperimental)
local RecyclableView = require(script.Parent.RecyclableView)

local e = React.createElement

export type CreatePortal = (children: React.Node, target: Instance) -> React.Node
export type HostRenderer = (createPortal: CreatePortal) -> React.Node
export type RecyclingScopeOptions = {
	maxPoolSize: number?,
	diagnostics: Core.DiagnosticCallback?,
}
type HostRegistry = {
	allocateId: () -> number,
	addHosts: (resources: { any }, getKey: (resource: any) -> string, render: (resource: any) -> HostRenderer) -> (),
	removeHosts: (resources: { any }) -> (),
}
export type RecyclingScope<T, ViewType> = Core.RecyclingScope<
	RecyclableView.RecyclableView<T, ViewType>,
	T,
	ViewType
>
export type RecyclingRoot = {
	getScope: <T, ViewType>(options: RecyclingScopeOptions) -> RecyclingScope<T, ViewType>,
	getPortalChildren: (createPortal: CreatePortal) -> { [string]: React.Node },
	destroy: () -> (),
}

type HostEntry = {
	key: string,
	render: HostRenderer,
}

local RecyclingRoot = {}

function RecyclingRoot.new(onChanged: () -> ()): RecyclingRoot
	local hosts: { [any]: HostEntry } = {}
	local nextId = 1
	local destroyed = false
	local recyclingScope: any = nil

	local function notifyChanged()
		if not destroyed then
			onChanged()
		end
	end

	local registry: HostRegistry
	registry = {
		allocateId = function()
			assert(not destroyed, "RecyclingRoot: cannot allocate after destroy")
			local id = nextId
			nextId += 1
			return id
		end,
		addHosts = function(resources, getKey, render)
			assert(not destroyed, "RecyclingRoot: cannot add hosts after destroy")
			local changed = false
			for _, resource in resources do
				assert(hosts[resource] == nil, "RecyclingRoot: resource host is already registered")
				hosts[resource] = {
					key = getKey(resource),
					render = render(resource),
				}
				changed = true
			end
			if changed then
				notifyChanged()
			end
		end,
		removeHosts = function(resources)
			local changed = false
			for _, resource in resources do
				if hosts[resource] ~= nil then
					hosts[resource] = nil
					changed = true
				end
			end
			if changed then
				notifyChanged()
			end
		end,
	}

	local function getScope<T, ViewType>(options: RecyclingScopeOptions): RecyclingScope<T, ViewType>
		assert(not destroyed, "RecyclingRoot: cannot get a Recycling scope after destroy")
		if recyclingScope ~= nil then
			return recyclingScope
		end

		local batchDepth = 0
		local created = {}
		local evicted = {}

		local function flushHosts()
			if #evicted > 0 then
				registry.removeHosts(evicted)
				for _, view in evicted do
					view.destroy()
				end
			end
			if #created > 0 then
				local surviving = {}
				local evictedSet = {}
				for _, view in evicted do
					evictedSet[view] = true
				end
				for _, view in created do
					if not evictedSet[view] then
						table.insert(surviving, view)
					end
				end
				if #surviving > 0 then
					registry.addHosts(surviving, function(view)
						return `RecyclableView{view.id}`
					end, function(view)
						return function(createPortal)
							return e(RecyclableViewHost, {
								itemView = view,
								createPortal = createPortal,
							})
						end
					end)
				end
			end
			table.clear(created)
			table.clear(evicted)
		end

		local function batch(callback: () -> ())
			batchDepth += 1
			local ok, result = pcall(SignalsExperimental.batch, callback)
			batchDepth -= 1
			if batchDepth == 0 then
				flushHosts()
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
					(options.diagnostics :: Core.DiagnosticCallback)({
						kind = Core.Diagnostics.EventKind.PoolChanged,
						action = change.action,
						itemViewType = change.viewType,
						occupiedDelta = change.occupiedDelta,
						vacantDelta = change.vacantDelta,
						totalDelta = change.totalDelta,
					})
				end,
			adapter = {
				create = function(viewType)
					local metadata = RecyclableViewRegistry.getMetadata(viewType)
					assert(metadata ~= nil, "RecyclingScope: cannot create an unregistered Recyclable view type")
					local view = RecyclableView(
						registry.allocateId(),
						viewType,
						nil,
						metadata.readiness,
						metadata.hideWhilePending
					)
					table.insert(created, view)
					return view
				end,
				destroy = function(view)
					table.insert(evicted, view)
				end,
				batch = batch,
			},
		})

		recyclingScope = {
			exchange = function(owner, releases, requests)
				local result = scope.exchange(owner, releases, requests)
				if batchDepth == 0 then
					flushHosts()
				end
				return result
			end,
			batch = scope.batch,
			isLeaseCurrent = scope.isLeaseCurrent,
			setMaxPoolSize = function(maximum)
				scope.setMaxPoolSize(maximum)
				if batchDepth == 0 then
					flushHosts()
				end
			end,
			getScopeInventory = scope.getScopeInventory,
			getVacantViews = scope.getVacantViews,
			destroy = function()
				scope.destroy()
				if batchDepth == 0 then
					flushHosts()
				end
			end,
		}
		return recyclingScope
	end

	return {
		getScope = getScope,
		getPortalChildren = function(createPortal)
			local children: { [string]: React.Node } = {}
			for _, entry in hosts do
				children[entry.key] = entry.render(createPortal)
			end
			return children
		end,
		destroy = function()
			if destroyed then
				return
			end
			destroyed = true
			if recyclingScope ~= nil then
				recyclingScope.destroy()
			end
			recyclingScope = nil
			table.clear(hosts)
		end,
	}
end

return RecyclingRoot
