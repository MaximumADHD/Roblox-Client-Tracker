local emptyFunction = function() end

local DraggerSchema = {
	getMouseTarget = require(script.Parent.getMouseTarget), -- Required
	beginBoxSelect = require(script.Parent.beginBoxSelect), -- Required
	SelectionInfo = require(script.Parent.SelectionInfo), -- Required
	Selection = require(script.Parent.Selection),
	FreeformDragger = require(script.Parent.FreeformDragger),
	TransformHandlesImplementation = require(script.Parent.TransformHandlesImplementation),

	-- This code remains unchanged from template code for the most part
	BoundsChangedTracker = require(script.Parent.BoundsChangedTracker),
	getSelectionBoxComponent = emptyFunction,
	isExclusiveSelectable = require(script.Parent.isExclusiveSelectable),
	endBoxSelect = emptyFunction,
	getNextSelectables = emptyFunction,
	setActivePoint = emptyFunction,
	dispatchWorldClick = require(script.Parent.dispatchWorldClick),
	addUndoWaypoint = require(script.Parent.addUndoWaypoint),
	setHover = emptyFunction,
	HoverEscapeDetector = require(script.Parent.HoverEscapeDetector),
}

return DraggerSchema
