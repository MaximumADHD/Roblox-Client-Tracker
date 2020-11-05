--[[
	DraggerSchema, Pivot Point Editor Schema

	A schema which is a subset of the core behavior. Allows only selecting
	single instances.
]]

local Plugin = script.Parent.Parent.Parent
local Packages = Plugin.Packages
local DraggerSchemaCore = require(Packages.DraggerSchemaCore.DraggerSchema)

local DraggerSchema = {
	isExclusiveSelectable = require(script.Parent.isExclusiveSelectable),
	SelectionInfo = require(script.Parent.SelectionInfo),
	BoundsChangedTracker = require(script.Parent.BoundsChangedTracker),
	dispatchWorldClick = require(script.Parent.dispatchWorldClick),
	TransformHandlesImplementation = require(script.Parent.TransformHandlesImplementation),

	getMouseTarget = DraggerSchemaCore.getMouseTarget,
	getNextSelectables = DraggerSchemaCore.getNextSelectables,
	FreeformDragger = DraggerSchemaCore.FreeformDragger,
	Selection = DraggerSchemaCore.Selection,
	getSelectionBoxComponent = DraggerSchemaCore.getSelectionBoxComponent,
	HoverEscapeDetector = DraggerSchemaCore.HoverEscapeDetector,
	setHover = DraggerSchemaCore.setHover,
	setActivePoint = DraggerSchemaCore.setActivePoint,
	beginBoxSelect = DraggerSchemaCore.beginBoxSelect,
	endBoxSelect = DraggerSchemaCore.endBoxSelect,
	addUndoWaypoint = DraggerSchemaCore.addUndoWaypoint,
}

return DraggerSchema