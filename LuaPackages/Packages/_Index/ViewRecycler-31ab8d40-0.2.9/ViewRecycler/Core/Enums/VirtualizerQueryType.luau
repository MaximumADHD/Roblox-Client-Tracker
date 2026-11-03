local VirtualizerQueryType = table.freeze({
	GetVisibleRange = "GetVisibleRange" :: "GetVisibleRange",
	GetMountedRange = "GetMountedRange" :: "GetMountedRange",
	GetScrollState = "GetScrollState" :: "GetScrollState",
	CaptureScrollAnchorSnapshot = "CaptureScrollAnchorSnapshot" :: "CaptureScrollAnchorSnapshot",
	GetContentLength = "GetContentLength" :: "GetContentLength",
	GetContentStartOffset = "GetContentStartOffset" :: "GetContentStartOffset",
	GetItemLayout = "GetItemLayout" :: "GetItemLayout",
	GetScrollOffsetForItem = "GetScrollOffsetForItem" :: "GetScrollOffsetForItem",
	RequiresItemMeasurement = "RequiresItemMeasurement" :: "RequiresItemMeasurement",
	GetItemViews = "GetItemViews" :: "GetItemViews",
	GetPlacementIntent = "GetPlacementIntent" :: "GetPlacementIntent",
})

export type VirtualizerQueryType =
	typeof(VirtualizerQueryType.GetVisibleRange)
	| typeof(VirtualizerQueryType.GetMountedRange)
	| typeof(VirtualizerQueryType.GetScrollState)
	| typeof(VirtualizerQueryType.CaptureScrollAnchorSnapshot)
	| typeof(VirtualizerQueryType.GetContentLength)
	| typeof(VirtualizerQueryType.GetContentStartOffset)
	| typeof(VirtualizerQueryType.GetItemLayout)
	| typeof(VirtualizerQueryType.GetScrollOffsetForItem)
	| typeof(VirtualizerQueryType.RequiresItemMeasurement)
	| typeof(VirtualizerQueryType.GetItemViews)
	| typeof(VirtualizerQueryType.GetPlacementIntent)

return VirtualizerQueryType
