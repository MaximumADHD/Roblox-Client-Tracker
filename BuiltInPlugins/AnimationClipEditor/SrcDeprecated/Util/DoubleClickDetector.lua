--[[
	A module used to detect double clicks.
	Usage:
		Call isDoubleClick on click events. It will return true only if
		the user performed a double click from that event.
]]


local DOUBLE_CLICK_INTERVAL = 0.2

local DoubleClickDetector = {}
DoubleClickDetector.__index = DoubleClickDetector

function DoubleClickDetector.new()
	local self = {
		lastClick = 0,
	}

	setmetatable(self, DoubleClickDetector)
	return self
end

function DoubleClickDetector:isDoubleClick()
	local now = tick()
	local isDoubleClick = now < self.lastClick + DOUBLE_CLICK_INTERVAL
	self.lastClick = now
	return isDoubleClick
end

return DoubleClickDetector