-- Places keyed Recyclable views at explicit rectangles in one container. Each
-- `sync` is declarative and is at most one Slot binder exchange.
local Root = script:FindFirstAncestor("ViewRecyclerReact")
local Core = require(Root.Parent.ViewRecycler)
local Destination = require(script.Parent.Destination)
local Placement = require(script.Parent.Placement)
local RecyclableView = require(script.Parent.RecyclableView)
local RecyclableViewRegistry = require(script.Parent.RecyclableViewRegistry)

type RecyclableViewType = RecyclableViewRegistry.RecyclableViewType<any>
type View = RecyclableView.RecyclableView<any, RecyclableViewType>
type RecyclingScope = Core.RecyclingScope<View, RecyclableViewType>

-- `key` is unique within one placement. A slot may later support pinning
-- (not moved or reused while it holds focus or a selection); not built yet.
export type RectSlot = {
	key: string,
	viewType: RecyclableViewType,
	item: any,
	position: Vector2,
	size: Vector2,
	zIndex: number?,
}

export type RectPlacement = {
	sync: (slots: { RectSlot }) -> (),
}

export type ContainerRef = { current: GuiObject? }

export type InternalRectPlacement = {
	sync: (slots: { RectSlot }) -> (),
	releaseAll: () -> (),
}

local RectPlacement = {}

local nextPlacementId = 1

function RectPlacement.new(scope: RecyclingScope, getContainerRef: () -> ContainerRef): InternalRectPlacement
	local placementId = nextPlacementId
	nextPlacementId += 1
	local placement = Placement.new(scope, {
		name = "RectPlacement",
		namespace = `rect:{placementId}`,
	})
	local identity = {}
	local destination: Destination.RectDestination? = nil

	return {
		sync = function(slots)
			local container = getContainerRef().current
			assert(container ~= nil, "RectPlacement: cannot sync without a container")
			if destination == nil or destination.container ~= container then
				-- Destroying the previous container destroyed the views in
				-- it; releasing them all lets the Recycling scope evict those.
				if destination ~= nil and placement.hasDestroyedView() then
					placement.releaseAll()
				end
				destination = table.freeze({
					kind = Destination.Kind.Rect,
					rectPlacement = identity,
					container = container,
				})
			end
			local placedSlots = table.create(#slots)
			for index, slot in slots do
				assert(typeof(slot.position) == "Vector2", "RectPlacement: slot position must be a Vector2")
				assert(typeof(slot.size) == "Vector2", "RectPlacement: slot size must be a Vector2")
				placedSlots[index] = {
					key = slot.key,
					viewType = slot.viewType,
					value = slot.item,
					destination = destination,
					geometry = {
						position = slot.position,
						size = slot.size,
						zIndex = slot.zIndex or 1,
					},
				}
			end
			placement.sync(placedSlots)
		end,
		releaseAll = placement.releaseAll,
	}
end

return RectPlacement
