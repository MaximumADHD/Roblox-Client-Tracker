-- Binds keyed slots to Recyclable views from one Recycling scope and
-- publishes each view's Destination. One `exchange` is at most one Slot binder
-- exchange; departed views are released before entered views are published,
-- in one batch, and Rect geometry is written after publication.
local Root = script:FindFirstAncestor("ViewRecyclerReact")
local Core = require(Root.Parent.ViewRecycler)
local Destination = require(script.Parent.Destination)
local RecyclableView = require(script.Parent.RecyclableView)
local RecyclableViewRegistry = require(script.Parent.RecyclableViewRegistry)
local SignalsExperimental = require(Root.Parent.SignalsExperimental)

type RecyclableViewType = RecyclableViewRegistry.RecyclableViewType<any>
type View = RecyclableView.RecyclableView<any, RecyclableViewType>
type RecyclingScope = Core.RecyclingScope<View, RecyclableViewType>
type SlotDestination = Destination.CompositionDestination | Destination.RectDestination

export type RectGeometry = {
	position: Vector2,
	size: Vector2,
	zIndex: number,
}

-- `assignmentKey`, which must be unique across the scope, is used as is;
-- without it `key` is prefixed with the placement's namespace. A bound slot
-- gets a new Assignment when its value or Assignment key changes, or when
-- `changed` is set. A slot whose view, Assignment, and Destination reference
-- are all unchanged is not republished.
export type PlacedSlot = {
	key: string,
	viewType: RecyclableViewType,
	value: any,
	assignmentKey: string?,
	changed: boolean?,
	destination: SlotDestination,
	-- Only for a Rect Destination.
	geometry: RectGeometry?,
}

export type Options = {
	-- Names the owner in error messages.
	name: string,
	-- Prefixes slot keys used as Assignment keys.
	namespace: string,
}

export type Placement = {
	exchange: (departs: { string }, slots: { PlacedSlot }) -> (),
	sync: (slots: { PlacedSlot }) -> (),
	releaseAll: () -> (),
	hasDestroyedView: () -> boolean,
	destroy: () -> (),
}

-- The geometry fields cache what was last written to the view's Frame.
type Entry = {
	view: View,
	assignment: RecyclableView.Assignment<any>,
	destination: SlotDestination,
	position: Vector2?,
	size: Vector2?,
	zIndex: number?,
}

local Placement = {}

function Placement.new(scope: RecyclingScope, options: Options): Placement
	local name = options.name
	local namespace = options.namespace
	local binder = Core.Adapter.createSlotBinder({
		recyclingScope = scope,
		name = name,
		prepareDesiredAssignment = function(slot: any)
			return {
				key = slot.assignmentKey or namespace .. ":" .. slot.key,
				value = slot.value,
			}
		end,
	})
	local entries: { [string]: Entry } = {}
	local exchanging = false
	local faulted = false
	local destroyed = false

	local function publish(departed: { View }, slots: { PlacedSlot })
		for _, view in departed do
			view.transition(nil)
		end
		for _, slot in slots do
			local key = slot.key
			local binding = binder.get(key) :: Core.SlotBinding<View, any, RecyclableViewType>
			local view = binding.view
			local entry = entries[key]
			if
				entry == nil
				or entry.view ~= view
				or entry.assignment ~= binding.assignment
				or entry.destination ~= slot.destination
			then
				entry = {
					view = view,
					assignment = binding.assignment,
					destination = slot.destination,
				}
				entries[key] = entry
				view.transition(table.freeze({
					assignment = binding.assignment,
					index = nil,
					destination = slot.destination,
				}))
			end
			local geometry = slot.geometry
			local frame = view.portalFrame(false)
			if geometry ~= nil and frame ~= nil then
				assert(
					slot.destination.kind == Destination.Kind.Rect,
					"Placement: geometry requires a Rect Destination"
				)
				local placed = entry :: Entry
				local position = geometry.position
				local size = geometry.size
				if placed.position ~= position then
					placed.position = position
					frame.Position = UDim2.fromOffset(position.X, position.Y)
				end
				if placed.size ~= size then
					placed.size = size
					frame.Size = UDim2.fromOffset(size.X, size.Y)
				end
				if placed.zIndex ~= geometry.zIndex then
					placed.zIndex = geometry.zIndex
					frame.ZIndex = geometry.zIndex
				end
			end
		end
	end

	-- Without `departs`, every bound key missing from `slots` departs.
	local function apply(departs: { string }?, slots: { PlacedSlot })
		local binderSlots = table.create(#slots)
		for index, slot in slots do
			local key = slot.key
			local assignmentKey = slot.assignmentKey
			local changed = slot.changed == true
			if assignmentKey ~= nil then
				local entry = entries[key]
				changed = changed or entry ~= nil and entry.assignment.key ~= assignmentKey
			end
			binderSlots[index] = {
				key = key,
				value = slot.value,
				viewType = slot.viewType,
				changed = changed,
				assignmentKey = assignmentKey,
			}
		end
		local changes
		if departs == nil then
			changes = binder.sync(binderSlots)
			for key in entries do
				if binder.get(key) == nil then
					entries[key] = nil
				end
			end
		else
			changes = binder.apply(departs, binderSlots)
			for _, key in departs do
				if binder.get(key) == nil then
					entries[key] = nil
				end
			end
		end
		faulted = true
		-- Each transition batches its own writes, so one geometry-free
		-- publication needs no outer batch.
		if #changes.departed + #slots > 1 or slots[1] ~= nil and slots[1].geometry ~= nil then
			SignalsExperimental.batch(function()
				publish(changes.departed, slots)
			end)
		else
			publish(changes.departed, slots)
		end
		faulted = false
	end

	local function exchange(departs: { string }?, slots: { PlacedSlot })
		-- Messages are built only on failure; exchange is a hot path.
		if destroyed then
			error(`{name}: cannot place views after destruction`)
		elseif exchanging then
			error(`{name}: cannot place views reentrantly`)
		elseif faulted then
			error(`{name}: cannot place views after a publication failure`)
		end
		exchanging = true
		local ok, failure = pcall(apply, departs, slots)
		exchanging = false
		if not ok then
			error(failure, 0)
		end
	end

	local function releaseAll()
		assert(not exchanging, `{name}: cannot release views during placement`)
		table.clear(entries)
		local views = binder.releaseAll()
		SignalsExperimental.batch(function()
			for _, view in views do
				view.transition(nil)
			end
		end)
	end

	return {
		exchange = exchange,
		sync = function(slots)
			exchange(nil, slots)
		end,
		releaseAll = function()
			if not destroyed then
				releaseAll()
			end
		end,
		hasDestroyedView = function()
			for _, entry in entries do
				if entry.view.isHostDestroyed() then
					return true
				end
			end
			return false
		end,
		destroy = function()
			if destroyed then
				return
			end
			releaseAll()
			binder.destroy()
			destroyed = true
		end,
	}
end

return Placement
