local InspectAndBuyFolder = script.Parent.Parent
local OverlayEnum = require(InspectAndBuyFolder.Enums.Overlay)
local AttributionTraversal = require(InspectAndBuyFolder.Components.AttributionTraversal)

return {
	[OverlayEnum.AttributionTraversal] = AttributionTraversal,
}
