local m_lastClickTime = nil
local DOUBLE_CLICK_TIME_BUFFER = 0.3

local DoubleClickDetector = {}

function DoubleClickDetector:isDoubleClick()
	local currentTime = tick()
	if m_lastClickTime and m_lastClickTime + DOUBLE_CLICK_TIME_BUFFER >= currentTime then
		m_lastClickTime = nil
		return true
	end

	m_lastClickTime = currentTime
	return false
end

return DoubleClickDetector
