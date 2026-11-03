local Src = script:FindFirstAncestor("ViewRecycler")
local Diagnostics = require(Src.Core.Diagnostics)
local EMPTY = table.freeze({})

export type Request<ViewType> = {
	viewType: ViewType,
}

export type Binding<View, ViewType> = {
	releases: { View },
	requests: { Request<ViewType> },
	capacity: number?,
}

export type BindResult<View> = {
	acquired: { View },
	releasedCount: number,
}

export type Adapter<View, ViewType> = {
	create: (viewType: ViewType) -> View,
	destroy: (view: View) -> (),
	onCreated: ((views: { View }) -> ())?,
	onEvicted: ((views: { View }) -> ())?,
	batch: ((callback: () -> ()) -> ())?,
}

export type Options<View, ViewType> = {
	adapter: Adapter<View, ViewType>,
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
	bind: (binding: Binding<View, ViewType>) -> BindResult<View>,
	dispose: () -> (),
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
	active: boolean,
}

local function validCapacity(capacity: number?): boolean
	return capacity == nil or (capacity >= 0 and capacity % 1 == 0)
end

local function appendChange(changes: { any }, action: any, viewType: any, occupied: any, vacant: any, total: any)
	table.insert(changes, { action, viewType, occupied, vacant, total })
end

local function createRecyclingScope<View, ViewType>(options: Options<View, ViewType>): RecyclingScope<View, ViewType>
	local adapter = options.adapter
	local pools: { [ViewType]: Pool<View, ViewType> } = {}
	local states: { [View]: State<View, ViewType> } = {}
	local disposed = false
	local submitting = false
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

	local function forget(view: View)
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

	local function finalize(
		changes: { any }?,
		evicted: { View },
		created: { View }?,
		reportEvicted: boolean?
	): (boolean, any)
		if
			(changes == nil or #changes == 0)
			and #evicted == 0
			and (created == nil or #created == 0 or adapter.onCreated == nil)
		then
			return true, nil
		end
		local firstFailure: any = nil
		local function captureFailure(ok: boolean, failure: any)
			if not ok and firstFailure == nil then
				firstFailure = failure
			end
		end
		local batchResult = table.pack(pcall(runBatch, function()
			if changes ~= nil then
				for _, change in changes do
					captureFailure(pcall(notify, change[1], change[2], change[3], change[4], change[5]))
				end
			end
			if reportEvicted ~= false and #evicted > 0 and adapter.onEvicted ~= nil then
				captureFailure(pcall(adapter.onEvicted, evicted))
			end
			for _, view in evicted do
				captureFailure(pcall(adapter.destroy, view))
			end
			if created ~= nil and #created > 0 and adapter.onCreated ~= nil then
				captureFailure(pcall(adapter.onCreated, created))
			end
			if firstFailure ~= nil then
				error(firstFailure, 0)
			end
		end))
		return batchResult[1], batchResult[2]
	end

	local function trimPoolExcess(pool: Pool<View, ViewType>, capacity: number, evicted: { View }, changes: { any }?)
		while pool.last - pool.first + 1 > capacity do
			local view = pool.items[pool.first]
			pool.items[pool.first] = nil
			pool.first += 1
			forget(view)
			table.insert(evicted, view)
			if changes ~= nil then
				appendChange(changes, Diagnostics.PoolAction.Evict, pool.viewType, 0, -1, -1)
			end
		end
	end

	local function uniformDirectReuse(releases: { View }, requests: { Request<ViewType> }): BindResult<View>?
		local count = #releases
		if count == 0 or count ~= #requests then
			return nil
		end
		local viewType = requests[1].viewType
		for index = 2, count do
			if requests[index].viewType ~= viewType then
				return nil
			end
		end
		for index, view in releases do
			local state = states[view]
			if state == nil or not state.active then
				error("RecyclingScope: can only release an active view", 3)
			end
			if state.viewType ~= viewType then
				return nil
			end
			for previous = 1, index - 1 do
				if releases[previous] == view then
					error("RecyclingScope: cannot release one view more than once", 3)
				end
			end
		end
		-- Pair from the end, matching the general release stack for one type.
		local acquired = table.create(count)
		for index = 1, count do
			acquired[index] = releases[count - index + 1]
		end
		return {
			acquired = acquired,
			releasedCount = 0,
		}
	end

	local releaseSeen: { [View]: boolean } = {}
	local availableByType: { [ViewType]: number } = {}

	-- Releases with no requests, or requests that existing vacancies satisfy,
	-- cannot fail after validation and need no planning phase.
	local function exchangeWithoutCreation(
		releases: { View },
		requests: { Request<ViewType> },
		changes: { any }?
	): BindResult<View>?
		if #requests == 0 then
			for _, view in releases do
				local state = states[view]
				if state == nil or not state.active then
					table.clear(releaseSeen)
					error("RecyclingScope: can only release an active view", 3)
				end
				if releaseSeen[view] then
					table.clear(releaseSeen)
					error("RecyclingScope: cannot release one view more than once", 3)
				end
				releaseSeen[view] = true
			end
			table.clear(releaseSeen)
			for _, view in releases do
				local state = states[view] :: State<View, ViewType>
				state.active = false
				local pool = state.pool
				pool.last += 1
				pool.items[pool.last] = view
				if changes ~= nil then
					appendChange(changes, Diagnostics.PoolAction.Release, state.viewType, -1, 1, 0)
				end
			end
			return {
				acquired = EMPTY :: any,
				releasedCount = #releases,
			}
		end
		if #releases ~= 0 then
			return nil
		end
		local satisfiable = true
		for _, request in requests do
			local viewType = request.viewType
			local available = availableByType[viewType]
			if available == nil then
				local pool = pools[viewType]
				available = if pool == nil then 0 else pool.last - pool.first + 1
			end
			if available == 0 then
				satisfiable = false
				break
			end
			availableByType[viewType] = available - 1
		end
		table.clear(availableByType)
		if not satisfiable then
			return nil
		end
		local acquired = table.create(#requests)
		for index, request in requests do
			local pool = pools[request.viewType] :: Pool<View, ViewType>
			local view = pool.items[pool.last]
			pool.items[pool.last] = nil
			pool.last -= 1
			(states[view] :: State<View, ViewType>).active = true
			acquired[index] = view
			if changes ~= nil then
				appendChange(changes, Diagnostics.PoolAction.Acquire, request.viewType, 1, -1, 0)
			end
		end
		return {
			acquired = acquired,
			releasedCount = 0,
		}
	end

	local function bind(submission: Binding<View, ViewType>): BindResult<View>
		assert(not disposed, "RecyclingScope: cannot bind after disposal")
		assert(not submitting, "RecyclingScope: cannot bind reentrantly")
		assert(validCapacity(submission.capacity), "RecyclingScope: capacity must be a non-negative integer")
		local releases = submission.releases
		local requests = submission.requests
		local direct = uniformDirectReuse(releases, requests)
		if direct ~= nil then
			local capacity = submission.capacity
			if capacity ~= nil then
				local evicted: { View } = {}
				local changes: { any }? = if options.onPoolChanged == nil then nil else {}
				for _, pool in pools do
					trimPoolExcess(pool, capacity, evicted, changes)
				end
				if #evicted > 0 then
					submitting = true
					local finalized, failure = finalize(changes, evicted, nil)
					submitting = false
					if not finalized then
						error(failure, 0)
					end
				end
			end
			return direct
		end
		local quickChanges: { any }? = if options.onPoolChanged == nil then nil else {}
		local quick = exchangeWithoutCreation(releases, requests, quickChanges)
		if quick ~= nil then
			local evicted: { View } = EMPTY :: any
			local capacity = submission.capacity
			if capacity ~= nil then
				evicted = {}
				for _, pool in pools do
					trimPoolExcess(pool, capacity, evicted, quickChanges)
				end
			end
			submitting = true
			local finalized, failure = finalize(quickChanges, evicted, nil)
			submitting = false
			if not finalized then
				error(failure, 0)
			end
			return quick
		end
		submitting = true
		local releasedByType: { [ViewType]: { View } } = {}
		local releaseSeen: { [View]: boolean } = {}
		for _, view in releases do
			local state = states[view]
			if state == nil or not state.active then
				submitting = false
				error("RecyclingScope: can only release an active view", 2)
			end
			if releaseSeen[view] then
				submitting = false
				error("RecyclingScope: cannot release one view more than once", 2)
			end
			releaseSeen[view] = true
			local typed = releasedByType[state.viewType]
			if typed == nil then
				typed = {}
				releasedByType[state.viewType] = typed
			end
			table.insert(typed, view)
		end

		-- Plan direct reuse and reserve existing vacancies without mutating
		-- membership. Only missing views are created during this fallible phase.
		local available: { [ViewType]: number } = {}
		local directByRequest: { [number]: View } = {}
		local reservedByRequest: { [number]: boolean } = {}
		local directlyReused: { [View]: boolean } = {}
		local createdByRequest: { [number]: View } = {}
		local createdSeen: { [View]: boolean } = {}
		local ok, failure = pcall(function()
			for requestIndex, request in requests do
				local typedReleases = releasedByType[request.viewType]
				local releasedView = if typedReleases == nil then nil else table.remove(typedReleases)
				if releasedView ~= nil then
					directByRequest[requestIndex] = releasedView
					directlyReused[releasedView] = true
					continue
				end

				local count = available[request.viewType]
				if count == nil then
					local pool = pools[request.viewType]
					count = if pool == nil then 0 else pool.last - pool.first + 1
				end
				if count > 0 then
					available[request.viewType] = count - 1
					reservedByRequest[requestIndex] = true
				else
					available[request.viewType] = 0
					local view = adapter.create(request.viewType)
					assert(
						states[view] == nil and not createdSeen[view],
						"RecyclingScope: create must return a new view"
					)
					createdSeen[view] = true
					createdByRequest[requestIndex] = view
				end
			end
		end)
		if not ok then
			finalize(nil, createdByRequest, nil, false)
			submitting = false
			error(failure, 0)
		end

		local result: BindResult<View> = {
			acquired = if #requests == 0 then EMPTY :: any else table.create(#requests),
			releasedCount = 0,
		}
		local changes: { any }? = if options.onPoolChanged == nil then nil else {}
		local evicted: { View } = {}

		for _, view in releases do
			if not directlyReused[view] then
				local state = states[view] :: State<View, ViewType>
				state.active = false
				local pool = state.pool
				pool.last += 1
				pool.items[pool.last] = view
				result.releasedCount += 1
				if changes ~= nil then
					appendChange(changes, Diagnostics.PoolAction.Release, state.viewType, -1, 1, 0)
				end
			end
		end

		for requestIndex, request in requests do
			local view = directByRequest[requestIndex]
			if view == nil and reservedByRequest[requestIndex] then
				local pool = pools[request.viewType] :: Pool<View, ViewType>
				view = pool.items[pool.last]
				pool.items[pool.last] = nil
				pool.last -= 1
				(states[view] :: State<View, ViewType>).active = true
				if changes ~= nil then
					appendChange(changes, Diagnostics.PoolAction.Acquire, request.viewType, 1, -1, 0)
				end
			elseif view == nil then
				view = createdByRequest[requestIndex] :: View
				states[view] = {
					viewType = request.viewType,
					pool = poolFor(request.viewType),
					active = true,
				}
				if changes ~= nil then
					appendChange(changes, Diagnostics.PoolAction.Create, request.viewType, 1, 0, 1)
				end
			end
			table.insert(result.acquired, view :: View)
		end

		local capacity = submission.capacity
		if capacity ~= nil then
			for _, pool in pools do
				trimPoolExcess(pool, capacity, evicted, changes)
			end
		end

		local created = {}
		for _, view in createdByRequest do
			table.insert(created, view)
		end
		local finalized, finalizationFailure = finalize(changes, evicted, created)
		submitting = false
		if not finalized then
			error(finalizationFailure, 0)
		end
		return result
	end

	return {
		bind = bind,
		dispose = function()
			if disposed then
				return
			end
			assert(not submitting, "RecyclingScope: cannot dispose during bind")
			disposed = true
			local views = {}
			local destructionStates: { { viewType: ViewType, occupied: boolean } }? = if options.onPoolChanged
					== nil
				then nil
				else {}
			for view, state in states do
				table.insert(views, view)
				if destructionStates ~= nil then
					table.insert(destructionStates, {
						viewType = state.viewType,
						occupied = state.active,
					})
				end
			end
			table.clear(states)
			table.clear(pools)
			local changes: { any }? = if destructionStates == nil then nil else table.create(#views)
			if changes ~= nil then
				for _, state in destructionStates :: { { viewType: ViewType, occupied: boolean } } do
					appendChange(
						changes,
						Diagnostics.PoolAction.Evict,
						state.viewType,
						if state.occupied then -1 else 0,
						if state.occupied then 0 else -1,
						-1
					)
				end
			end
			local finalized, failure = finalize(changes, views, nil)
			if not finalized then
				error(failure, 0)
			end
		end,
	}
end

return createRecyclingScope
