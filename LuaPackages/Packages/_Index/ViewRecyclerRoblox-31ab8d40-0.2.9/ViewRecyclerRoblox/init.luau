local CanvasItemPlacer = require(script.RobloxAdapter.CanvasItemPlacer)
local HostPlacement = require(script.RobloxAdapter.HostPlacement)
local Core = require(script.Parent.ViewRecycler)
local MeasurementBatcher = require(script.RobloxAdapter.MeasurementBatcher)
local Measurer = require(script.RobloxAdapter.Measurer)
local ReparentableHost = require(script.RobloxAdapter.ReparentableHost)
local ScrollingFrameSync = require(script.RobloxAdapter.ScrollingFrameSync)
local ScrollingFrameVirtualizer = require(script.RobloxAdapter.ScrollingFrameVirtualizer)
local SlotGeometry = require(script.RobloxAdapter.SlotGeometry)
local ViewportCoordinator = require(script.RobloxAdapter.ViewportCoordinator)
local createRecyclingScope = require(script.RobloxAdapter.createRecyclingScope)
local createVirtualizer = require(script.RobloxAdapter.createVirtualizer)

export type RecyclingScopeOptions<ItemView, T, ItemViewType> = createRecyclingScope.Options<ItemView, T, ItemViewType>
export type RecyclingScope<ItemView, T, ItemViewType> = createRecyclingScope.RecyclingScope<ItemView, T, ItemViewType>
export type VirtualizerOptions<ItemView, T, ItemViewType> = createVirtualizer.Options<ItemView, T, ItemViewType>
export type Virtualizer<T> = createVirtualizer.Virtualizer<T, any>
export type ViewportCoordinator = ViewportCoordinator.ViewportCoordinator
export type ViewportCoordinatorOptions = ViewportCoordinator.Options
export type MeasurementIdentity = Measurer.Identity
export type PinnedItem<T, ItemViewType> = Core.PinnedItem<T, ItemViewType>
export type ItemPlacement = Core.ItemPlacement
export type ChatPresetOptions = Core.ChatPresetOptions
export type ChatPresetProps = Core.ChatPresetProps

local Internal = table.freeze({
	CanvasItemPlacer = CanvasItemPlacer,
	HostPlacement = HostPlacement,
	ScrollingFrameVirtualizer = ScrollingFrameVirtualizer,
	ScrollingFrameSync = ScrollingFrameSync,
})

return table.freeze({
	createRecyclingScope = createRecyclingScope.create,
	createVirtualizer = createVirtualizer,
	ChatPreset = Core.Adapter.ScrollPolicy.ChatPreset,
	MeasurementBatcher = MeasurementBatcher,
	Measurer = Measurer,
	ReparentableHost = ReparentableHost,
	SlotGeometry = SlotGeometry,
	ViewportCoordinator = ViewportCoordinator,
	Internal = Internal,

	["jest.config"] = script["jest.config"],
})
