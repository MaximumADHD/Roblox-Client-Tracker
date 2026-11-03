local Root = script:FindFirstAncestor("ViewRecyclerReact")

local Core = require(Root.Parent.ViewRecycler)
local ItemHooks = require(Root.ReactAdapter.ItemHooks)
local RecyclableViewReadiness = require(Root.ReactAdapter.RecyclableViewReadiness)
local RecyclingScope = require(Root.ReactAdapter.RecyclingScope)
local RecyclingViewport = require(Root.ReactAdapter.RecyclingViewport)
local VirtualList = require(Root.ReactAdapter.VirtualList)
local createPinnedItem = require(Root.ReactAdapter.createPinnedItem)
local createRecyclableComponent = require(Root.ReactAdapter.createRecyclableComponent)
local createRecyclableView = require(Root.ReactAdapter.createRecyclableView)

local function createReactAdapter(options: VirtualList.AdapterOptions)
	local ConfiguredVirtualList = VirtualList.create(options)
	local ConfiguredRecyclingScope = RecyclingScope.create(options)
	local ConfiguredRecyclingViewport = RecyclingViewport.create(options)

	return table.freeze({
		VirtualList = ConfiguredVirtualList,
		RecyclingScope = ConfiguredRecyclingScope,
		RecyclingViewport = ConfiguredRecyclingViewport,
		createPinnedItem = createPinnedItem,
		createRecyclableComponent = createRecyclableComponent,
		createRecyclableView = createRecyclableView,
		useRecyclingState = ItemHooks.useRecyclingState,
		useRecyclingSignal = ItemHooks.useRecyclingSignal,
		useRecyclingItem = ItemHooks.useRecyclingItem,
		useRecyclingAssignment = ItemHooks.useRecyclingAssignment,
		RecyclableViewReadiness = RecyclableViewReadiness,

		DataSource = Core.DataSource,
		Diagnostics = Core.Diagnostics,
		Layout = Core.Layout,
		OverscanPolicy = Core.OverscanPolicy,
		ChatPreset = Core.Adapter.ScrollPolicy.ChatPreset,

		Axis = Core.Axis,
		AutoScrollPolicy = Core.AutoScrollPolicy,
		AutoScrollTarget = Core.AutoScrollTarget,
		ScrollAlignment = Core.ScrollAlignment,
		ScrollDirection = Core.ScrollDirection,
		ScrollObservationKind = Core.ScrollObservationKind,
		PinnedPosition = Core.PinnedPosition,
		IdentityKind = Core.IdentityKind,
		DataPrefetchEdge = Core.DataPrefetchEdge,
		DataSourceChangeType = Core.DataSourceChangeType,
		VirtualizerCommandType = Core.VirtualizerCommandType,
		VirtualizerEffectType = Core.VirtualizerEffectType,
		VirtualizerQueryType = Core.VirtualizerQueryType,

		["jest.config"] = Root["jest.config"],
	})
end

return createReactAdapter
