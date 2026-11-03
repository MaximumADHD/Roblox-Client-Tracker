local ExternalVirtualizerCommandType = table.freeze({
	Activate = "Activate" :: "Activate",
	SetActive = "SetActive" :: "SetActive",
	SetScrollOffset = "SetScrollOffset" :: "SetScrollOffset",
	ObserveScrollOffset = "ObserveScrollOffset" :: "ObserveScrollOffset",
	ScrollToIndex = "ScrollToIndex" :: "ScrollToIndex",
	ScrollToOffset = "ScrollToOffset" :: "ScrollToOffset",
	ScrollBy = "ScrollBy" :: "ScrollBy",
	RestoreScrollAnchorSnapshot = "RestoreScrollAnchorSnapshot" :: "RestoreScrollAnchorSnapshot",
	SetViewportSize = "SetViewportSize" :: "SetViewportSize",
	SetPolicy = "SetPolicy" :: "SetPolicy",
	SetDataSource = "SetDataSource" :: "SetDataSource",
	SetLayout = "SetLayout" :: "SetLayout",
	SetDataSourceAndLayout = "SetDataSourceAndLayout" :: "SetDataSourceAndLayout",
	ApplyScrollAnchorOffset = "ApplyScrollAnchorOffset" :: "ApplyScrollAnchorOffset",
	Refresh = "Refresh" :: "Refresh",
	Destroy = "Destroy" :: "Destroy",
	SubmitMeasurements = "SubmitMeasurements" :: "SubmitMeasurements",
})

local InternalVirtualizerCommandType = table.freeze({
	ApplyDataSourceChange = "ApplyDataSourceChange" :: "ApplyDataSourceChange",
	SubmitLogicalMeasurements = "SubmitLogicalMeasurements" :: "SubmitLogicalMeasurements",
})

export type ExternalVirtualizerCommandType =
	typeof(ExternalVirtualizerCommandType.Activate)
	| typeof(ExternalVirtualizerCommandType.SetActive)
	| typeof(ExternalVirtualizerCommandType.SetScrollOffset)
	| typeof(ExternalVirtualizerCommandType.ObserveScrollOffset)
	| typeof(ExternalVirtualizerCommandType.ScrollToIndex)
	| typeof(ExternalVirtualizerCommandType.ScrollToOffset)
	| typeof(ExternalVirtualizerCommandType.ScrollBy)
	| typeof(ExternalVirtualizerCommandType.RestoreScrollAnchorSnapshot)
	| typeof(ExternalVirtualizerCommandType.SetViewportSize)
	| typeof(ExternalVirtualizerCommandType.SetPolicy)
	| typeof(ExternalVirtualizerCommandType.SetDataSource)
	| typeof(ExternalVirtualizerCommandType.SetLayout)
	| typeof(ExternalVirtualizerCommandType.SetDataSourceAndLayout)
	| typeof(ExternalVirtualizerCommandType.ApplyScrollAnchorOffset)
	| typeof(ExternalVirtualizerCommandType.Refresh)
	| typeof(ExternalVirtualizerCommandType.Destroy)
	| typeof(ExternalVirtualizerCommandType.SubmitMeasurements)

export type InternalVirtualizerCommandType =
	typeof(InternalVirtualizerCommandType.ApplyDataSourceChange)
	| typeof(InternalVirtualizerCommandType.SubmitLogicalMeasurements)

export type VirtualizerCommandType = ExternalVirtualizerCommandType | InternalVirtualizerCommandType

return table.freeze({
	External = ExternalVirtualizerCommandType,
	Internal = InternalVirtualizerCommandType,
})
