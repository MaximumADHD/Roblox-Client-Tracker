local MockChangeHistoryService = {}

MockChangeHistoryService.__index = MockChangeHistoryService

function MockChangeHistoryService.new()
	return setmetatable({
		_undoWaypoints = {},
		_redoWaypoints = {},
	}, MockChangeHistoryService)
end

function MockChangeHistoryService:Destroy() end

function MockChangeHistoryService:SetWaypoint(waypoint: string)
	table.insert(self._undoWaypoints, waypoint)
end

function MockChangeHistoryService:Undo()
	table.insert(self._redoWaypoints, self._undoWaypoints[#self._undoWaypoints])
	table.remove(self._undoWaypoints, #self._undoWaypoints)
end

function MockChangeHistoryService:Redo()
	table.insert(self._undoWaypoints, self._redoWaypoints[#self._redoWaypoints])
	table.remove(self._redoWaypoints, #self._redoWaypoints)
end

return MockChangeHistoryService
