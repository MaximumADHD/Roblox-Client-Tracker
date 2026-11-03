local VirtualizerEffectType = table.freeze({
	VisibleRangeChanged = "VisibleRangeChanged" :: "VisibleRangeChanged",
	MountedRangeChanged = "MountedRangeChanged" :: "MountedRangeChanged",
	DataPrefetchRequested = "DataPrefetchRequested" :: "DataPrefetchRequested",
	ScrollCorrection = "ScrollCorrection" :: "ScrollCorrection",
	ScrollPositionChanged = "ScrollPositionChanged" :: "ScrollPositionChanged",
	DataSourceChanged = "DataSourceChanged" :: "DataSourceChanged",
	Diagnostic = "Diagnostic" :: "Diagnostic",
})

export type VirtualizerEffectType =
	typeof(VirtualizerEffectType.VisibleRangeChanged)
	| typeof(VirtualizerEffectType.MountedRangeChanged)
	| typeof(VirtualizerEffectType.DataPrefetchRequested)
	| typeof(VirtualizerEffectType.ScrollCorrection)
	| typeof(VirtualizerEffectType.ScrollPositionChanged)
	| typeof(VirtualizerEffectType.DataSourceChanged)
	| typeof(VirtualizerEffectType.Diagnostic)

return VirtualizerEffectType
