local FFlagViewRecyclerReact084 = require(script.Flags).FFlagViewRecyclerReact084
local FFlagViewRecyclerReact08 = require(script.Flags).FFlagViewRecyclerReact08

local AttachedViewportOverlay = require(script.RobloxAdapter.AttachedViewportOverlay)
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

local VacantHosts = require(script.RobloxAdapter.VacantHosts)
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
export type VisibleItemsPresentation = createVirtualizer.VisibleItemsPresentation
export type ViewportCoordinator = ViewportCoordinator.ViewportCoordinator
export type ViewportCoordinatorOptions = ViewportCoordinator.Options
export type HostPresentationPhase = HostPresentationPhase.HostPresentationPhase
export type PinnedItem<T, ItemViewType> = Core.PinnedItem<T, ItemViewType>
export type ItemPlacement = Core.ItemPlacement
export type ChatPresetOptions = Core.ChatPresetOptions
export type ChatPresetProps = Core.ChatPresetProps
export type ReachedThreshold = Core.ReachedThreshold
export type ScrollOptions = Core.ScrollOptions
export type AnimatedScrollOptions = Core.AnimatedScrollOptions

local Internal = table.freeze({
	ScrollbarOverlay = ScrollbarOverlay,
	VacantHosts = (if FFlagViewRecyclerReact084 then VacantHosts else nil),

	AttachedViewportOverlay = if FFlagViewRecyclerReact084
		then nil
		else if FFlagViewRecyclerReact08 then nil else AttachedViewportOverlay,
	CanvasItemPlacer = if FFlagViewRecyclerReact084
		then nil
		else if FFlagViewRecyclerReact08 then nil else CanvasItemPlacer,
	HostPlacement = if FFlagViewRecyclerReact084 then nil else if FFlagViewRecyclerReact08 then nil else HostPlacement,
	ScrollHost = if FFlagViewRecyclerReact084 then nil else if FFlagViewRecyclerReact08 then nil else ScrollHost,
})

return table.freeze({
	createRecyclingScope = createRecyclingScope.create,
	createVirtualizer = createVirtualizer,
	ChatPreset = Core.ChatPreset,
	HostPresentationPhase = HostPresentationPhase,
	ReparentableHost = ReparentableHost,
	SlotGeometry = SlotGeometry,
	ViewportCoordinator = ViewportCoordinator,
	Internal = Internal,

	["jest.config"] = script["jest.config"],

	MeasurementBatcher = if FFlagViewRecyclerReact084
		then nil
		else if FFlagViewRecyclerReact08 then nil else MeasurementBatcher,
	Measurer = if FFlagViewRecyclerReact084 then nil else if FFlagViewRecyclerReact08 then nil else Measurer,
})
