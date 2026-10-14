local Src = script:FindFirstAncestor("ViewRecycler")
local Diagnostics = require(Src.Core.Diagnostics)
local EMPTY = table.freeze({})

export type Lease<View> = {
	view: View,
	leaseToken: number,
}

export type Request<ViewType> = {
	viewType: ViewType,
}

export type ExchangeResult<View> = {
	acquired: { Lease<View> },
	releasedCount: number,
}

export type Adapter<View, ViewType> = {
	create: (viewType: ViewType) -> View,
	destroy: (view: View) -> (),
	batch: ((callback: () -> ()) -> ())?,
}

export type Options<View, ViewType> = {
	adapter: Adapter<View, ViewType>,
	maxPoolSize: number?,
	onPoolChanged: ((
		change: {
			action: Diagnostics.PoolAction,
			viewType: ViewType,
			occupiedDelta: number,
			vacantDelta: number,
			totalDelta: number,
		}
	) -> ())?,
}

export type RecyclingScope<View, ViewType> = {
	exchange: (owner: any, releases: { Lease<View> }, requests: { Request<ViewType> }) -> ExchangeResult<View>,
	batch: (callback: () -> ()) -> (),
	isLeaseCurrent: (owner: any, view: View, leaseToken: number) -> boolean,
	setMaxPoolSize: (maximum: number?) -> (),
	getScopeInventory: () -> { View },
	getVacantViews: () -> { View },
	destroy: () -> (),
}

type Pool<View, ViewType> = {
	viewType: ViewType,
	items: { [number]: View },
	first: number,
	last: number,
}

type State<View, ViewType> = {
	viewType: ViewType,
	pool: Pool<View, ViewType>,
	owner: any?,
	leaseToken: number?,
	inventoryIndex: number,
	validationToken: number?,
}

local function validMaximum(maximum: number?): boolean
	return maximum == nil or (maximum >= 0 and maximum % 1 == 0)
end

local function appendChange(changes: { any }, action: any, viewType: any, occupied: any, vacant: any, total: any)
	table.insert(changes, { action, viewType, occupied, vacant, total })
end

local function createRecyclingScope<View, ViewType>(options: Options<View, ViewType>): RecyclingScope<View, ViewType>
	assert(validMaximum(options.maxPoolSize), "RecyclingScope: maxPoolSize must be a non-negative integer")
	local adapter = options.adapter
	local maximum = options.maxPoolSize
	local pools: { [ViewType]: Pool<View, ViewType> } = {}
	local states: { [View]: State<View, ViewType> } = {}
	local inventory: { View } = {}
	local nextLeaseToken = 1
	local nextValidationToken = 1
	local destroyed = false
	local exchanging = false
	local runBatch: (callback: () -> ()) -> () = adapter.batch or function(callback)
		callback()
	end

	local function poolFor(viewType: ViewType): Pool<View, ViewType>
		local pool = pools[viewType]
		if pool == nil then
			pool = { viewType = viewType, items = {}, first = 1, last = 0 }
			pools[viewType] = pool
		end
		return pool
	end

	local function removeInventory(view: View)
		local state = states[view] :: State<View, ViewType>
		local lastIndex = #inventory
		local lastView = inventory[lastIndex]
		if state.inventoryIndex ~= lastIndex then
			inventory[state.inventoryIndex] = lastView
			local lastState = states[lastView] :: State<View, ViewType>
			lastState.inventoryIndex = state.inventoryIndex
		end
		inventory[lastIndex] = nil
		states[view] = nil
	end

	local function notify(action, viewType, occupiedDelta, vacantDelta, totalDelta)
		if options.onPoolChanged ~= nil then
			options.onPoolChanged({
				action = action,
				viewType = viewType,
				occupiedDelta = occupiedDelta,
				vacantDelta = vacantDelta,
				totalDelta = totalDelta,
			})
		end
	end

	local function exchange(
		owner: any,
		releases: { Lease<View> },
		requests: { Request<ViewType> }
	): ExchangeResult<View>
		assert(not destroyed, "RecyclingScope: cannot exchange after destruction")
		assert(not exchanging, "RecyclingScope: cannot mutate during an exchange")
		assert(owner ~= nil, "RecyclingScope: exchange requires an owner")

		local validationToken = nextValidationToken
		nextValidationToken += 1
		local seen: { [View]: boolean }? = if #requests == 0 then nil else {}
		for _, lease in releases do
			local state = states[lease.view]
			assert(
				state ~= nil and state.owner == owner and state.leaseToken == lease.leaseToken,
				"RecyclingScope: cannot use a stale Lease"
			)
			assert(state.validationToken ~= validationToken, "RecyclingScope: cannot release one Lease more than once")
			state.validationToken = validationToken
		end
		if #requests == 0 and options.onPoolChanged == nil then
			local result: ExchangeResult<View> = {
				acquired = EMPTY :: any,
				releasedCount = #releases,
			}
			local evicted = {}
			exchanging = true
			for _, lease in releases do
				local state = states[lease.view] :: State<View, ViewType>
				state.owner = nil
				state.leaseToken = nil
				state.pool.last += 1
				state.pool.items[state.pool.last] = lease.view
			end
			for _, pool in pools do
				while maximum ~= nil and pool.last - pool.first + 1 > maximum do
					local view = pool.items[pool.first]
					pool.items[pool.first] = nil
					pool.first += 1
					removeInventory(view)
					table.insert(evicted, view)
				end
			end
			exchanging = false
			runBatch(function()
				for _, view in evicted do
					adapter.destroy(view)
				end
			end)
			return result
		end
		exchanging = true

		local available: { [ViewType]: number } = {}
		for viewType, pool in pools do
			available[viewType] = pool.last - pool.first + 1
		end
		local releasedByType: { [ViewType]: { View } }? = if #releases == 0 then nil else {}
		if releasedByType ~= nil then
			for _, lease in releases do
				local state = states[lease.view] :: State<View, ViewType>
				local views = releasedByType[state.viewType]
				if views == nil then
					views = {}
					releasedByType[state.viewType] = views
				end
				table.insert(views, lease.view)
			end
		end

		local createdByRequest: { [number]: View } = {}
		local directViews: { [number]: View }? = if releasedByType == nil then nil else {}
		local directlyReused: { [View]: boolean } = if directViews == nil then EMPTY :: any else {}
		local createdSeen = seen :: { [View]: boolean }
		local ok, failure = pcall(function()
			for requestIndex, request in requests do
				local releasedViews = if releasedByType == nil then nil else releasedByType[request.viewType]
				local releasedView = if releasedViews == nil then nil else table.remove(releasedViews)
				if releasedView ~= nil then
					(directViews :: { [number]: View })[requestIndex] = releasedView
					directlyReused[releasedView] = true
				else
					local count = available[request.viewType] or 0
					if count > 0 then
						available[request.viewType] = count - 1
					else
						local view = adapter.create(request.viewType)
						assert(
							states[view] == nil and not createdSeen[view],
							"RecyclingScope: create must return a new view"
						)
						createdSeen[view] = true
						createdByRequest[requestIndex] = view
					end
				end
			end
		end)
		if not ok then
			exchanging = false
			for _, view in createdByRequest do
				adapter.destroy(view)
			end
			error(failure, 0)
		end

		local result: ExchangeResult<View> = {
			acquired = table.create(#requests),
			releasedCount = 0,
		}
		local evicted = {}
		local changes: { any }? = if options.onPoolChanged == nil then nil else {}

		for _, lease in releases do
			if not directlyReused[lease.view] then
				local state = states[lease.view] :: State<View, ViewType>
				state.owner = nil
				state.leaseToken = nil
				local pool = state.pool
				pool.last += 1
				pool.items[pool.last] = lease.view
				result.releasedCount += 1
				if changes ~= nil then
					appendChange(changes, Diagnostics.PoolAction.Release, state.viewType, -1, 1, 0)
				end
			end
		end

		for requestIndex, request in requests do
			local pool = poolFor(request.viewType)
			local view = if directViews == nil then nil else directViews[requestIndex]
			if view == nil then
				if pool.last >= pool.first then
					view = pool.items[pool.last]
					pool.items[pool.last] = nil
					pool.last -= 1
					if changes ~= nil then
						appendChange(changes, Diagnostics.PoolAction.Acquire, request.viewType, 1, -1, 0)
					end
				else
					local createdView = createdByRequest[requestIndex] :: View
					view = createdView
					states[createdView] = {
						viewType = request.viewType,
						pool = pool,
						owner = nil,
						leaseToken = nil,
						inventoryIndex = #inventory + 1,
						validationToken = nil,
					}
					table.insert(inventory, createdView)
					if changes ~= nil then
						appendChange(changes, Diagnostics.PoolAction.Create, request.viewType, 1, 0, 1)
					end
				end
			end
			local acquiredView = view :: View
			local state = states[acquiredView] :: State<View, ViewType>
			local leaseToken = nextLeaseToken
			nextLeaseToken += 1
			state.owner = owner
			state.leaseToken = leaseToken
			table.insert(result.acquired, { view = acquiredView, leaseToken = leaseToken })
		end

		for _, pool in pools do
			while maximum ~= nil and pool.last - pool.first + 1 > maximum do
				local view = pool.items[pool.first]
				pool.items[pool.first] = nil
				pool.first += 1
				removeInventory(view)
				table.insert(evicted, view)
				if changes ~= nil then
					appendChange(changes, Diagnostics.PoolAction.Evict, pool.viewType, 0, -1, -1)
				end
			end
		end
		exchanging = false

		runBatch(function()
			if changes ~= nil then
				for _, change in changes do
					notify(change[1], change[2], change[3], change[4], change[5])
				end
			end
			for _, view in evicted do
				adapter.destroy(view)
			end
		end)
		return result
	end

	local function evictExcess()
		local evicted = {}
		local changes = {}
		for _, pool in pools do
			while maximum ~= nil and pool.last - pool.first + 1 > maximum do
				local view = pool.items[pool.first]
				pool.items[pool.first] = nil
				pool.first += 1
				removeInventory(view)
				table.insert(evicted, view)
				table.insert(changes, { pool.viewType })
			end
		end
		for _, change in changes do
			notify(Diagnostics.PoolAction.Evict, change[1], 0, -1, -1)
		end
		for _, view in evicted do
			adapter.destroy(view)
		end
	end

	return {
		exchange = exchange,
		batch = runBatch,
		isLeaseCurrent = function(owner, view, leaseToken)
			local state = states[view]
			return not destroyed and state ~= nil and state.owner == owner and state.leaseToken == leaseToken
		end,
		setMaxPoolSize = function(nextMaximum)
			assert(not destroyed and not exchanging, "RecyclingScope: cannot set capacity now")
			assert(validMaximum(nextMaximum), "RecyclingScope: maxPoolSize must be a non-negative integer")
			maximum = nextMaximum
			evictExcess()
		end,
		getScopeInventory = function()
			return table.clone(inventory)
		end,
		getVacantViews = function()
			local vacant = {}
			for _, pool in pools do
				for index = pool.first, pool.last do
					table.insert(vacant, pool.items[index])
				end
			end
			return vacant
		end,
		destroy = function()
			if destroyed then
				return
			end
			assert(not exchanging, "RecyclingScope: cannot destroy during an exchange")
			destroyed = true
			local views = table.clone(inventory)
			local destructionStates: { { viewType: ViewType, occupied: boolean } }? = if options.onPoolChanged
					== nil
				then nil
				else table.create(#views)
			if destructionStates ~= nil then
				for index, view in views do
					local state = states[view] :: State<View, ViewType>
					destructionStates[index] = {
						viewType = state.viewType,
						occupied = state.owner ~= nil,
					}
				end
			end
			table.clear(inventory)
			table.clear(states)
			table.clear(pools)
			local firstFailure: any = nil
			local function captureFailure(ok: boolean, failure: any)
				if not ok and firstFailure == nil then
					firstFailure = failure
				end
			end
			runBatch(function()
				for index, view in views do
					if destructionStates ~= nil then
						local state = destructionStates[index]
						captureFailure(
							pcall(
								notify,
								Diagnostics.PoolAction.Evict,
								state.viewType,
								if state.occupied then -1 else 0,
								if state.occupied then 0 else -1,
								-1
							)
						)
					end
					captureFailure(pcall(adapter.destroy, view))
				end
			end)
			if firstFailure ~= nil then
				error(firstFailure, 0)
			end
		end,
	}
end

return createRecyclingScope
