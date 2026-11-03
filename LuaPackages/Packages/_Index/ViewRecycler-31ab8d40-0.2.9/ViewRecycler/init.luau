local AutoScrollPolicy = require(script.Core.Enums.AutoScrollPolicy)
local AutoScrollTarget = require(script.Core.Enums.AutoScrollTarget)
local Axis = require(script.Core.Enums.Axis)
local ChatPreset = require(script.Core.ViewportBehavior.ChatPreset)
local DataPrefetch = require(script.Core.DataPrefetch)
local DataSource = require(script.Core.DataSource)
local DataSourceChangeType = require(script.Core.Enums.DataSourceChangeType)
local Diagnostics = require(script.Core.Diagnostics)
local IdentityKind = require(script.Core.Enums.IdentityKind)
local Layout = require(script.Core.Layout)
local OverscanPolicy = require(script.Core.OverscanPolicy)
local PinnedPosition = require(script.Core.Enums.PinnedPosition)
local PinnedItems = require(script.Core.PinnedItems)
local ShallowTable = require(script.Internal.ShallowTable)
local ScrollAlignment = require(script.Core.Enums.ScrollAlignment)
local ScrollDirection = require(script.Core.Enums.ScrollDirection)
local ScrollObservationKind = require(script.Core.Enums.ScrollObservationKind)
local ScrollPolicy = require(script.Core.ViewportBehavior)
local SignalsExperimental = require(script.Parent.SignalsExperimental)
local Types = require(script.Core.Types)
local VirtualizerCommandTypes = require(script.Core.Enums.VirtualizerCommandType)
local VirtualizerEffectType = require(script.Core.Enums.VirtualizerEffectType)
local VirtualizerQueryType = require(script.Core.Enums.VirtualizerQueryType)
local createRecyclingScope = require(script.Core.RecyclingScope)
local createVirtualizer = require(script.Core.Virtualizer.Virtualizer)

export type DataSource<T> = DataSource.DataSource<T>
export type MutableSequence<T> = DataSource.MutableSequence<T>
export type GetItemKey<T> = DataSource.GetItemKey<T>
export type DataSourceChangeBatch = DataSource.ChangeBatch
export type IndexRange = Types.IndexRange
export type ItemLayout = Types.ItemLayout
export type ItemMeasurement = Types.ItemMeasurement
export type ItemViewMeasurement = Types.ItemViewMeasurement
export type MeasurementIdentity = Types.MeasurementIdentity
export type DataSourceChange = Types.DataSourceChange
export type DiagnosticEvent = Diagnostics.Event
export type DiagnosticCallback = Diagnostics.Callback
export type OverscanSpan = OverscanPolicy.Span
export type OverscanContext = OverscanPolicy.Context
export type OverscanPolicy = OverscanPolicy.Policy
export type DataPrefetchOptions = DataPrefetch.Options
export type DataPrefetchRequest = DataPrefetch.Request
export type DataPrefetchEdge = DataPrefetch.Edge
export type ScrollState = createVirtualizer.ScrollState
export type ScrollAnchorSnapshot = createVirtualizer.ScrollAnchorSnapshot
export type ScrollObservation = createVirtualizer.ScrollObservation
export type ScrollObservationKind = ScrollObservationKind.ScrollObservationKind
export type VirtualizerCommandType = VirtualizerCommandTypes.ExternalVirtualizerCommandType
export type VirtualizerEffectType = VirtualizerEffectType.VirtualizerEffectType
export type VirtualizerQueryType = VirtualizerQueryType.VirtualizerQueryType
export type PinnedItem<T, ItemViewType> = PinnedItems.PinnedItem<T, ItemViewType>
export type ItemPlacement = createVirtualizer.ItemPlacement
export type PlacementIntent<T> = createVirtualizer.PlacementIntent<T>
export type VirtualizerSnapshot<T, ItemViewType> = createVirtualizer.Snapshot<T, ItemViewType>
export type VirtualizerPolicy<T, ItemViewType> = createVirtualizer.Policy<T, ItemViewType>
export type VirtualizerCommand<T, ItemViewType> = createVirtualizer.Command<T, ItemViewType>
export type VirtualizerQuery<ItemView> = createVirtualizer.Query<ItemView>
export type VirtualizerEffect = createVirtualizer.Effect
export type VirtualizerUpdate<T, ItemViewType> = createVirtualizer.Update<T, ItemViewType>
export type ChatPresetOptions = ChatPreset.Options
export type ChatPresetProps = ChatPreset.Props
export type ItemAssignment<T> = createVirtualizer.ItemAssignment<T>
export type DesiredAssignment<T> = createVirtualizer.DesiredAssignment<T>
export type Virtualizer<ItemView, T, ItemViewType> = createVirtualizer.Virtualizer<ItemView, T, ItemViewType>
export type Lease<View> = createRecyclingScope.Lease<View>
export type RecyclingRequest<ViewType> = createRecyclingScope.Request<ViewType>
export type RecyclingExchangeResult<View> = createRecyclingScope.ExchangeResult<View>
export type RecyclingScopeAdapter<View, ViewType> = createRecyclingScope.Adapter<View, ViewType>
export type RecyclingScopeOptions<View, ViewType> = createRecyclingScope.Options<View, ViewType>
export type RecyclingScope<View, T, ViewType> = createRecyclingScope.RecyclingScope<View, ViewType>
export type VirtualizerOptions<ItemView, T, ItemViewType> = createVirtualizer.Options<ItemView, T, ItemViewType>
export type Axis = Axis.Axis
export type AutoScrollPolicy = AutoScrollPolicy.AutoScrollPolicy
export type AutoScrollTarget = AutoScrollTarget.AutoScrollTarget
export type ScrollAlignment = ScrollAlignment.ScrollAlignment
export type ScrollDirection = ScrollDirection.ScrollDirection
export type PinnedPosition = PinnedPosition.PinnedPosition
export type IdentityKind = IdentityKind.IdentityKind
export type DataSourceChangeType = DataSourceChangeType.DataSourceChangeType

local Adapter = table.freeze({
	createRecyclingScope = createRecyclingScope,
	createVirtualizer = createVirtualizer,
	ScrollPolicy = ScrollPolicy,
	_Private = table.freeze({
		-- React uses the Core-owned batching policy without rebuilding its
		-- package wiring; this private facade removes cross-package setup.
		batch = SignalsExperimental.batch,
		ShallowTable = ShallowTable,
	}),
})

return table.freeze({
	DataSource = DataSource,
	Diagnostics = Diagnostics,
	Layout = Layout,
	OverscanPolicy = OverscanPolicy,

	Axis = Axis,
	AutoScrollPolicy = AutoScrollPolicy,
	AutoScrollTarget = AutoScrollTarget,
	ScrollAlignment = ScrollAlignment,
	ScrollDirection = ScrollDirection,
	ScrollObservationKind = ScrollObservationKind,
	PinnedPosition = PinnedPosition,
	IdentityKind = IdentityKind,
	DataPrefetchEdge = DataPrefetch.Edge,
	DataSourceChangeType = DataSourceChangeType,
	VirtualizerCommandType = VirtualizerCommandTypes.External,
	VirtualizerEffectType = VirtualizerEffectType,
	VirtualizerQueryType = VirtualizerQueryType,

	Adapter = Adapter,
	["jest.config"] = script["jest.config"],
})
