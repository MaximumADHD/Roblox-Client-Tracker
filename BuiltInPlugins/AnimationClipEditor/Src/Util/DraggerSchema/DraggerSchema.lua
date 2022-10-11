--[[
	DraggerSchema, AnimationClipEditor Dragger Implementation

	A schema describing the dragger framework implementation which the Animation Clip Editor uses, 
	where the user selects and transforms parts. 
]]

local DraggerSchema = {
	Selection = require(script.Parent.Selection),
	TransformHandlesImplementation = require(script.Parent.TransformHandlesImplementation),
	getSelectionBoxComponent = require(script.Parent.getSelectionBoxComponent),
	HoverEscapeDetector = require(script.Parent.HoverEscapeDetector),
	getMouseTarget = require(script.Parent.getMouseTarget),
	setHover = require(script.Parent.setHover),
	setActivePoint = require(script.Parent.setActivePoint),
	isExclusiveSelectable = require(script.Parent.isExclusiveSelectable),
	dispatchWorldClick = require(script.Parent.dispatchWorldClick),
	getNextSelectables = require(script.Parent.getNextSelectables),
	beginBoxSelect = require(script.Parent.beginBoxSelect),
	endBoxSelect = require(script.Parent.endBoxSelect),
	BoundsChangedTracker = require(script.Parent.BoundsChangedTracker),
	SelectionInfo = require(script.Parent.SelectionInfo),
	addUndoWaypoint = require(script.Parent.addUndoWaypoint),
}

return DraggerSchema
