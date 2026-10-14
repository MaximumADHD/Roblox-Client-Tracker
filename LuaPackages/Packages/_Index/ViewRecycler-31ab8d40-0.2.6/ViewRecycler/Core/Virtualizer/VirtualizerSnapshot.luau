local Src = script:FindFirstAncestor("ViewRecycler")

local DataPrefetch = require(Src.Core.DataPrefetch)
local DataSource = require(Src.Core.DataSource)
local Diagnostics = require(Src.Core.Diagnostics)
local Layout = require(Src.Core.Layout)
local OverscanPolicy = require(Src.Core.OverscanPolicy)
local PinnedItems = require(Src.Core.PinnedItems)
local Placement = require(Src.Core.Placement.PlacementTypes)
local ScrollAlignment = require(Src.Core.Enums.ScrollAlignment)
local ScrollObservationKind = require(Src.Core.Enums.ScrollObservationKind)
local Types = require(Src.Core.Types)
local VirtualizerCommandTypes = require(Src.Core.Enums.VirtualizerCommandType)
local VirtualizerCommandType = VirtualizerCommandTypes.External
local VirtualizerEffectType = require(Src.Core.Enums.VirtualizerEffectType)
local VirtualizerQueryType = require(Src.Core.Enums.VirtualizerQueryType)

export type DataIdentity = {
	kind: typeof(Placement.IdentityKind.Data),
	index: number,
	revision: number,
}

export type Identity = DataIdentity | Placement.PinnedIdentity

export type MeasurementIdentity = {
	itemIndex: number?,
	itemKey: string,
	itemRevision: number,
	pinnedPosition: Placement.PinnedPosition?,
}

export type LogicalMeasurement = MeasurementIdentity & {
	length: number,
}

export type ScrollAnchorSnapshot = {
	anchorKey: string?,
	anchorIndex: number?,
	offsetWithinItem: number,
	fallbackScrollOffset: number,
}

export type ScrollObservation = {
	kind: ScrollObservationKind.ScrollObservationKind,
	offset: number,
}

export type Policy<T, RecyclableViewType> = {
	overscan: number?,
	overscanPolicy: OverscanPolicy.Policy?,
	dataPrefetch: DataPrefetch.Options?,
	contentAlignment: ScrollAlignment.ScrollAlignment?,
	endThreshold: number?,
	pinnedItems: PinnedItems.Options<T, RecyclableViewType>,
	preserveScrollPositionOnChange: boolean,
}

export type LogicalCommand<T, RecyclableViewType> = { type: typeof(VirtualizerCommandType.Activate) } | {
	type: typeof(VirtualizerCommandType.SetScrollOffset),
	offset: number,
} | {
	type: typeof(VirtualizerCommandType.ObserveScrollOffset),
	observation: ScrollObservation,
} | {
	type: typeof(VirtualizerCommandType.ScrollToIndex),
	index: number,
	alignment: ScrollAlignment.ScrollAlignment?,
} | {
	type: typeof(VirtualizerCommandType.ScrollToOffset),
	offset: number,
} | {
	type: typeof(VirtualizerCommandType.ScrollBy),
	delta: number,
} | {
	type: typeof(VirtualizerCommandType.RestoreScrollAnchorSnapshot),
	snapshot: ScrollAnchorSnapshot,
} | {
	type: typeof(VirtualizerCommandType.SetViewportSize),
	scrollAxisLength: number,
	crossAxisLength: number,
} | {
	type: typeof(VirtualizerCommandType.SetPolicy),
	policy: Policy<T, RecyclableViewType>,
} | {
	type: typeof(VirtualizerCommandType.SetDataSource),
	dataSource: DataSource.DataSource<T>,
} | {
	type: typeof(VirtualizerCommandType.SetLayout),
	layout: Layout.Runtime,
} | {
	type: typeof(VirtualizerCommandType.SetDataSourceAndLayout),
	dataSource: DataSource.DataSource<T>,
	layout: Layout.Runtime,
} | {
	type: typeof(VirtualizerCommandType.ApplyScrollAnchorOffset),
	offset: number,
} | {
	type: typeof(VirtualizerCommandType.Refresh),
} | {
	type: typeof(VirtualizerCommandType.Destroy),
}

export type Command<T, RecyclableViewType> =
	LogicalCommand<T, RecyclableViewType>
	| { type: typeof(VirtualizerCommandType.SetActive), active: boolean }
	| { type: typeof(VirtualizerCommandType.SubmitMeasurements), measurements: { Types.ItemViewMeasurement } }

export type EngineCommand<T, RecyclableViewType> = LogicalCommand<T, RecyclableViewType> | {
	type: typeof(VirtualizerCommandTypes.Internal.ApplyDataSourceChange),
	changeBatch: Types.DataSourceChangeBatch,
} | {
	type: typeof(VirtualizerCommandTypes.Internal.SubmitLogicalMeasurements),
	measurements: { LogicalMeasurement },
	boundaryDropped: number?,
}

export type LogicalQuery =
	{ type: typeof(VirtualizerQueryType.GetVisibleRange) }
	| { type: typeof(VirtualizerQueryType.GetMountedRange) }
	| { type: typeof(VirtualizerQueryType.GetScrollState) }
	| { type: typeof(VirtualizerQueryType.CaptureScrollAnchorSnapshot) }
	| { type: typeof(VirtualizerQueryType.GetContentLength) }
	| { type: typeof(VirtualizerQueryType.GetContentStartOffset) }
	| { type: typeof(VirtualizerQueryType.GetItemLayout), index: number }
	| {
		type: typeof(VirtualizerQueryType.GetScrollOffsetForItem),
		index: number,
		alignment: ScrollAlignment.ScrollAlignment?,
	}
	| { type: typeof(VirtualizerQueryType.RequiresItemMeasurement) }

export type Effect =
	{ type: typeof(VirtualizerEffectType.VisibleRangeChanged), range: Types.IndexRange }
	| { type: typeof(VirtualizerEffectType.MountedRangeChanged), range: Types.IndexRange }
	| { type: typeof(VirtualizerEffectType.DataPrefetchRequested), request: DataPrefetch.Request }
	| { type: typeof(VirtualizerEffectType.ScrollCorrection), delta: number }
	| { type: typeof(VirtualizerEffectType.ScrollPositionChanged), offset: number }
	| {
		type: typeof(VirtualizerEffectType.DataSourceChanged),
		changeBatch: Types.DataSourceChangeBatch,
		before: Types.ScrollStateBeforeChange,
	}
	| { type: typeof(VirtualizerEffectType.Diagnostic), event: Diagnostics.Event }

export type PresentationChange = {
	assignmentsChanged: boolean,
	placementChanged: boolean,
}

export type Entry<T, RecyclableViewType> = {
	key: string,
	index: number?,
	value: T,
	recyclableViewType: RecyclableViewType,
	identity: Identity,
	itemLayout: Types.ItemLayout,
	canvasPlacement: Placement.ItemPlacement,
	viewportPlacement: Placement.ItemPlacement?,
	measurementIdentity: MeasurementIdentity,
}

export type Snapshot<T, RecyclableViewType> = {
	version: number,
	entries: { Entry<T, RecyclableViewType> },
	visibleRange: Types.IndexRange,
	mountedRange: Types.IndexRange,
	scrollState: Types.ScrollState,
	contentStartOffset: number,
	contentLength: number,
	requiresItemMeasurement: boolean,
}

export type Update<T, RecyclableViewType> = {
	snapshot: Snapshot<T, RecyclableViewType>,
	presentation: PresentationChange,
	result: number?,
	effects: { Effect },
}

return table.freeze({
	CommandType = VirtualizerCommandType,
	EffectType = VirtualizerEffectType,
	QueryType = VirtualizerQueryType,
})
