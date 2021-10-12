return function(draggerContext, waypointIdentifier, waypointText)
	assert(draggerContext.getMouseTarget == nil,
		"You accidentally called schema:addUndoWaypoint intead of schema.addUndoWaypoint")
end
