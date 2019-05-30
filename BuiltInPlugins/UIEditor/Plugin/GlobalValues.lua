


local SCALE = 1
local OFFSET = 2

local m_gridType = SCALE








local GlobalValues = {}

function GlobalValues:isScale()
	return m_gridType == SCALE
end


function GlobalValues:toggleGridType()
	if (GlobalValues:isScale()) then
		m_gridType = OFFSET
		print("Setting Grid mode: Offset")
	else
		m_gridType = SCALE
		print("Setting Grid mode: Scale")
	end
end

function GlobalValues:getScreenSize()
	return game.Workspace.CurrentCamera.ViewportSize
end

--function GlobalValues:getGridType()
--	return m_gridType
--end
--
--function GlobalValues:setGridType(gridType)
--	m_gridType = gridType
--end

--GlobalValues.SCALE = SCALE
--GlobalValues.OFFSET = OFFSET

return GlobalValues
