local EventKind = table.freeze({
	RangeChanged = "rangeChanged" :: "rangeChanged",
	PoolChanged = "poolChanged" :: "poolChanged",
	ItemViewsSynchronized = "itemViewsSynchronized" :: "itemViewsSynchronized",
	MeasurementsProcessingStarted = "measurementsProcessingStarted" :: "measurementsProcessingStarted",
	MeasurementsProcessed = "measurementsProcessed" :: "measurementsProcessed",
	ScrollCorrection = "scrollCorrection" :: "scrollCorrection",
})

local RangeKind = table.freeze({
	Visible = "visible" :: "visible",
	Rendered = "rendered" :: "rendered",
})

local PoolAction = table.freeze({
	Create = "create" :: "create",
	Acquire = "acquire" :: "acquire",
	Release = "release" :: "release",
	Evict = "evict" :: "evict",
})

local ScrollCorrectionSource = table.freeze({
	Data = "data" :: "data",
	Measurement = "measurement" :: "measurement",
	ProgrammaticScroll = "programmaticScroll" :: "programmaticScroll",
})

export type RangeKind = typeof(RangeKind.Visible) | typeof(RangeKind.Rendered)
export type PoolAction =
	typeof(PoolAction.Create)
	| typeof(PoolAction.Acquire)
	| typeof(PoolAction.Release)
	| typeof(PoolAction.Evict)
export type ScrollCorrectionSource =
	typeof(ScrollCorrectionSource.Data)
	| typeof(ScrollCorrectionSource.Measurement)
	| typeof(ScrollCorrectionSource.ProgrammaticScroll)

export type RangeChangedEvent = {
	kind: typeof(EventKind.RangeChanged),
	rangeKind: RangeKind,
	firstIndex: number,
	lastIndex: number,
}

export type PoolChangedEvent = {
	kind: typeof(EventKind.PoolChanged),
	action: PoolAction,
	itemViewType: any,
	occupiedDelta: number,
	vacantDelta: number,
	totalDelta: number,
}

export type ItemViewsSynchronizedEvent = {
	kind: typeof(EventKind.ItemViewsSynchronized),
	retained: number,
	reassigned: number,
	acquired: number,
	released: number,
}

export type MeasurementsProcessedEvent = {
	kind: typeof(EventKind.MeasurementsProcessed),
	accepted: number,
	dropped: number,
}

export type MeasurementsProcessingStartedEvent = {
	kind: typeof(EventKind.MeasurementsProcessingStarted),
	submitted: number,
	boundaryDropped: number,
}

export type ScrollCorrectionEvent = {
	kind: typeof(EventKind.ScrollCorrection),
	source: ScrollCorrectionSource,
	delta: number,
}

export type Event =
	RangeChangedEvent
	| PoolChangedEvent
	| ItemViewsSynchronizedEvent
	| MeasurementsProcessingStartedEvent
	| MeasurementsProcessedEvent
	| ScrollCorrectionEvent

export type Callback = (event: Event) -> ()

return table.freeze({
	EventKind = EventKind,
	PoolAction = PoolAction,
	RangeKind = RangeKind,
	ScrollCorrectionSource = ScrollCorrectionSource,
})
