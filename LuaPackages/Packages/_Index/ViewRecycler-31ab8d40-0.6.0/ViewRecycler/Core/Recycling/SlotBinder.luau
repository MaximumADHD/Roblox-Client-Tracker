-- Binds keyed Slots to retained Assignments and views. One `apply` departs
-- keys, enters new keys, and rebinds existing keys through a single
-- Recycling scope exchange, then reports what changed.
local Src = script:FindFirstAncestor("ViewRecycler")

local createRecyclingScope = require(Src.Core.Recycling.RecyclingScope)

local EMPTY_LIST = table.freeze({})

export type DesiredAssignment<T> = {
	key: string,
	value: T,
}

export type Assignment<T> = {
	key: string,
	value: T,
}

-- `changed` marks a payload revision whose value may be the same reference.
-- An entering Slot table becomes its Binding: the binder takes ownership and
-- adds `view` and `assignment`, so callers may attach their own fields.
export type Slot<T, ViewType> = {
	key: string,
	value: T,
	viewType: ViewType,
	changed: boolean?,
}

export type Binding<View, T, ViewType> = {
	key: string,
	value: T,
	viewType: ViewType,
	view: View,
	assignment: Assignment<T>,
}

-- A key whose view type changed departs its old view and enters a new
-- binding. A released view that another key reuses in the same exchange is
-- reported only as entered.
export type Changes<View, T, ViewType> = {
	entered: { Binding<View, T, ViewType> },
	updated: { Binding<View, T, ViewType> },
	departed: { View },
}

export type Options<View, T, ViewType> = {
	recyclingScope: createRecyclingScope.RecyclingScope<View, ViewType>,
	prepareDesiredAssignment: ((DesiredAssignment<T>) -> DesiredAssignment<T>)?,
}

export type SlotBinder<View, T, ViewType> = {
	apply: (departs: { string }, slots: { Slot<T, ViewType> }) -> Changes<View, T, ViewType>,
	sync: (slots: { Slot<T, ViewType> }) -> Changes<View, T, ViewType>,
	get: (key: string) -> Binding<View, T, ViewType>?,
	releaseAll: () -> { View },
	destroy: () -> (),
}

local EMPTY_CHANGES = table.freeze({
	entered = EMPTY_LIST,
	updated = EMPTY_LIST,
	departed = EMPTY_LIST,
})

local function createSlotBinder<View, T, ViewType>(options: Options<View, T, ViewType>): SlotBinder<View, T, ViewType>
	local scope = options.recyclingScope
	local prepare = options.prepareDesiredAssignment
	local bindings: { [string]: Binding<View, T, ViewType> } = {}
	local requestByViewType: { [ViewType]: createRecyclingScope.Request<ViewType> } = {}
	local destroyed = false
	-- Scratch tables reused across applies.
	local departing: { [string]: boolean } = {}
	local seen: { [string]: boolean } = {}
	local reused: { [View]: boolean } = {}

	local function makeAssignment(key: string, value: T): Assignment<T>
		if prepare ~= nil then
			local prepared = prepare({ key = key, value = value })
			return table.freeze({ key = prepared.key, value = prepared.value })
		end
		return table.freeze({ key = key, value = value })
	end

	local function requestFor(viewType: ViewType): createRecyclingScope.Request<ViewType>
		local request = requestByViewType[viewType]
		if request == nil then
			request = table.freeze({ viewType = viewType })
			requestByViewType[viewType] = request
		end
		return request
	end

	local function apply(departs: { string }, slots: { Slot<T, ViewType> }): Changes<View, T, ViewType>
		assert(not destroyed, "SlotBinder: cannot apply after destruction")
		local releases: { View } = {}
		local hasDeparting = false
		for _, key in departs do
			local binding = bindings[key]
			if binding ~= nil then
				table.insert(releases, binding.view)
				departing[key] = true
				hasDeparting = true
			end
		end

		local requests = {}
		local entering: { Slot<T, ViewType> } = {}
		local updating: { Slot<T, ViewType> }? = nil
		local checkDuplicates = #slots > 1
		for _, slot in slots do
			local key = slot.key
			if checkDuplicates then
				if seen[key] then
					table.clear(seen)
					table.clear(departing)
					error(`Virtualizer: duplicate key "{key}"`, 0)
				end
				seen[key] = true
			end
			local binding = bindings[key]
			local retained = binding ~= nil and not (hasDeparting and departing[key])
			if retained and (binding :: Binding<View, T, ViewType>).viewType == slot.viewType then
				if slot.changed or (binding :: Binding<View, T, ViewType>).value ~= slot.value then
					updating = updating or {}
					table.insert(updating :: { Slot<T, ViewType> }, slot)
				end
			else
				if retained then
					table.insert(releases, (binding :: Binding<View, T, ViewType>).view)
				end
				table.insert(entering, slot)
				table.insert(requests, requestFor(slot.viewType))
			end
		end
		if checkDuplicates then
			table.clear(seen)
		end

		if #releases == 0 and #requests == 0 and updating == nil then
			return EMPTY_CHANGES :: any
		end

		local acquired: { View } = EMPTY_LIST :: any
		if #releases > 0 or #requests > 0 then
			local bound, bindFailure = pcall(scope.bind, { releases = releases, requests = requests })
			if not bound then
				table.clear(departing)
				error(bindFailure, 0)
			end
			acquired = (bindFailure :: any).acquired
		end

		if hasDeparting then
			for key in departing do
				bindings[key] = nil
			end
			table.clear(departing)
		end

		local entered: { Binding<View, T, ViewType> } = entering :: any
		local trackReuse = #releases > 0 and #entering > 0
		for position, slot in entering do
			local view = acquired[position]
			local binding = slot :: any
			binding.view = view
			binding.assignment = makeAssignment(slot.key, slot.value)
			bindings[slot.key] = binding
			if trackReuse then
				reused[view] = true
			end
		end

		local updated: { Binding<View, T, ViewType> } = EMPTY_LIST :: any
		if updating ~= nil then
			updated = table.create(#updating)
			for position, slot in updating do
				local binding = bindings[slot.key] :: Binding<View, T, ViewType>
				binding.value = slot.value
				binding.assignment = makeAssignment(slot.key, slot.value)
				updated[position] = binding
			end
		end

		local departed: { View } = EMPTY_LIST :: any
		if #releases > 0 then
			if trackReuse then
				departed = {}
				for _, view in releases do
					if not reused[view] then
						table.insert(departed, view)
					end
				end
				table.clear(reused)
			else
				departed = releases
			end
		end

		return {
			entered = if #entered == 0 then EMPTY_LIST :: any else entered,
			updated = updated,
			departed = departed,
		}
	end

	local function releaseAll(): { View }
		local releases = {}
		for _, binding in bindings do
			table.insert(releases, binding.view)
		end
		table.clear(bindings)
		if #releases > 0 then
			scope.bind({ releases = releases, requests = {} })
		end
		return releases
	end

	return {
		apply = apply,
		sync = function(slots)
			local wanted = {}
			for _, slot in slots do
				wanted[slot.key] = true
			end
			local departs = {}
			for key in bindings do
				if not wanted[key] then
					table.insert(departs, key)
				end
			end
			return apply(departs, slots)
		end,
		get = function(key)
			return bindings[key]
		end,
		releaseAll = function()
			assert(not destroyed, "SlotBinder: cannot release after destruction")
			return releaseAll()
		end,
		destroy = function()
			if destroyed then
				return
			end
			releaseAll()
			destroyed = true
		end,
	}
end

return createSlotBinder
