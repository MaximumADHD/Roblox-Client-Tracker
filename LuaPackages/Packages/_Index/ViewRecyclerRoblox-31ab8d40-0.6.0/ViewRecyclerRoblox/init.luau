local CanvasItemPlacer = require(script.RobloxAdapter.CanvasItemPlacer)
local Core = require(script.Parent.ViewRecycler)
local HostPlacement = require(script.RobloxAdapter.HostPlacement)
local HostPresentationPhase = require(script.RobloxAdapter.HostPresentationPhase)
local MeasurementBatcher = require(script.RobloxAdapter.MeasurementBatcher)
local Measurer = require(script.RobloxAdapter.Measurer)
local ReparentableHost = require(script.RobloxAdapter.ReparentableHost)
local ScrollHost = require(script.RobloxAdapter.ScrollHost)
local ScrollbarOverlay = require(script.RobloxAdapter.ScrollbarOverlay)
local SlotGeometry = require(script.RobloxAdapter.SlotGeometry)
local ViewportCoordinator = require(script.RobloxAdapter.ViewportCoordinator)
local createRecyclingScope = require(script.RobloxAdapter.createRecyclingScope)
local createVirtualizer = require(script.RobloxAdapter.createVirtualizer)

export type RecyclingScopeOptions<ItemView, ItemViewType> = createRecyclingScope.Options<ItemView, ItemViewType>
export type RecyclingScope<ItemView, ItemViewType> = createRecyclingScope.RecyclingScope<ItemView, ItemViewType>
export type VirtualizerOptions<ItemView, T, ItemViewType> = createVirtualizer.Options<ItemView, T, ItemViewType>
export type Virtualizer<T> = createVirtualizer.Virtualizer<T, any>
export type VirtualizerConfiguration<T, ItemViewType> = createVirtualizer.Configuration<T, ItemViewType>
export type PresentItemView<ItemView, T> = createVirtualizer.PresentItemView<ItemView, T>
export type HostPlacementSink<ItemView, T> = createVirtualizer.HostPlacementSink<ItemView, T>
export type HostPlacementState<T> = createVirtualizer.HostPlacementState<T>
export type MeasurementDependencies = createVirtualizer.MeasurementDependencies
export type ViewportCoordinator = ViewportCoordinator.ViewportCoordinator
export type ViewportCoordinatorOptions = ViewportCoordinator.Options
export type HostPresentationPhase = HostPresentationPhase.HostPresentationPhase
export type PinnedItem<T, ItemViewType> = Core.PinnedItem<T, ItemViewType>
export type ItemPlacement = Core.ItemPlacement
export type ChatPresetOptions = Core.ChatPresetOptions
export type ChatPresetProps = Core.ChatPresetProps
export type ReachedThreshold = Core.ReachedThreshold

local Internal = table.freeze({
	CanvasItemPlacer = CanvasItemPlacer,
	HostPlacement = HostPlacement,
	ScrollbarOverlay = ScrollbarOverlay,
	ScrollHost = ScrollHost,
})

return table.freeze({
	createRecyclingScope = createRecyclingScope.create,
	createVirtualizer = createVirtualizer,
	ChatPreset = Core.ChatPreset,
	HostPresentationPhase = HostPresentationPhase,
	MeasurementBatcher = MeasurementBatcher,
	Measurer = Measurer,
	ReparentableHost = ReparentableHost,
	SlotGeometry = SlotGeometry,
	ViewportCoordinator = ViewportCoordinator,
	Internal = Internal,

	["jest.config"] = script["jest.config"],
})
