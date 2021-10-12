local HoverEscapeDetector = {}
HoverEscapeDetector.__index = HoverEscapeDetector

function HoverEscapeDetector.new(draggerContext, hoveredItem, onEscaped)
	return setmetatable({
		_draggerContext = draggerContext,
	}, HoverEscapeDetector)
end

function HoverEscapeDetector:destroy() end

return HoverEscapeDetector
