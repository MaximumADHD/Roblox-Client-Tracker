local DiagnosticsModule = require(script.Diagnostics)

export type RangeKind = DiagnosticsModule.RangeKind
export type PoolAction = DiagnosticsModule.PoolAction
export type ScrollCorrectionSource = DiagnosticsModule.ScrollCorrectionSource
export type RangeChangedEvent = DiagnosticsModule.RangeChangedEvent
export type PoolChangedEvent = DiagnosticsModule.PoolChangedEvent
export type ItemViewsSynchronizedEvent = DiagnosticsModule.ItemViewsSynchronizedEvent
export type MeasurementsProcessingStartedEvent = DiagnosticsModule.MeasurementsProcessingStartedEvent
export type MeasurementsProcessedEvent = DiagnosticsModule.MeasurementsProcessedEvent
export type ScrollCorrectionEvent = DiagnosticsModule.ScrollCorrectionEvent
export type Event = DiagnosticsModule.Event
export type Callback = DiagnosticsModule.Callback

return DiagnosticsModule
