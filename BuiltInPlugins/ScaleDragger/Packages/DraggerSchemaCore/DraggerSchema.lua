--[[
	DraggerSchema, Core Dragger Implementation

	A schema describing the dragger framework implementation which the core
	modeling tools use, where the user selects and transforms an aggregate of
	parts and attachments.
]]

local DraggerSchema = {
	-- class Selection
	-- (for convenience, doesn't have to be part of the schema, you must pass
	-- a selection object conforming to this API to the DraggerContext)
	-- A class describing what objects are currently selected and notifying the
	-- dragger framework when the selection changes. This class should expose
	-- the same API as RBX::SelectionService (Get/Set/SelectionChanged).
	-- NOTE: The selectables that will be passed to Selection:Set are the same
	-- selectables that the framework got from Selection:Get / getMouseTarget /
	-- beginBoxSelect.
	-- NOTE: The :Set method on this object will be called with an extra "hint"
	-- parameter, which is a table like so: {Removed = {...}, Added = {...}}.
	-- This hint parameter describes a way that the selection can be more
	-- efficiently updated by first removing and then adding some selectables to
	-- it rather than entirely replacing the existing selection. You can
	-- completely ignore the hint if you want.
	Selection = require(script.Parent.Selection),

	-- class TransformHandlesImplementation
	-- (for convenience, doesn't have to be part of the schema, you must pass
	-- this to the MoveHandles constructor)
	TransformHandlesImplementation = require(script.Parent.TransformHandlesImplementation),

	-- class ExtrudeHandlesImplementation
	-- (for convenience, doesn't have to be part of the schema, you must pass
	-- this to the ExtrudeHandles constructor)
	ExtrudeHandlesImplementation = require(script.Parent.ExtrudeHandlesImplementation),

	-- function getSelectionBoxComponent(draggerContext, selectable)
	-- May return nil if you do your own hovered object rendering by making
	-- use of the Schema.setHover calls, use this if you want to have a similar
	-- pulsing hovered object highlight to the core draggers.
	-- getSelectionBoxComponent should return a kind of Roact element which
	-- has same props as an RBX::SelectionBox, but where Adornee can point at
	-- the type of selectable in your schema (which may not be an Instance).
	getSelectionBoxComponent = require(script.Parent.getSelectionBoxComponent),

	-- class HoverEscapeDetector
	-- A class detecting when a given hovered object changes in some way that
	-- may cause it to no longer be the hovered object thanks to reasons other
	-- than the dragger changing it.
	HoverEscapeDetector = require(script.Parent.HoverEscapeDetector),

	-- function getMouseTarget(draggerContext, mouseRay, currentSelection)
	-- Get:
	--  * the current selectable
	--  * the hit item within that selectable
	--  * the distance along the mouseRay to the surface of the hit item
	-- The selectable is the thing that will be added to the selection,
	-- and the hit item within it gives optional additional context about why
	-- the selectable was selected to other schema specific code.
	getMouseTarget = require(script.Parent.getMouseTarget),

	-- function setHover(draggerContext, hoverSelectable, hoverItem)
	-- Sets what the environment should treat as the currently hovered object,
	-- if the environment needs to draw the hovered object differently in some
	-- way.
	setHover = require(script.Parent.setHover),

	-- function setActivePoint(draggerContext, selectionInfo)
	-- Sets the "active point", that is, the location where inserted or
	-- duplicated objects will be initially placed.
	setActivePoint = require(script.Parent.setActivePoint),

	-- function isExclusiveSelectable(draggerContext, selectable, item)
	-- When clicking on the given selectable/item, should the selection be
	-- cleared and set to exactly that item and nothing else?
	isExclusiveSelectable = require(script.Parent.isExclusiveSelectable),

	-- function dispatchClick(draggerContext, clickEvent)
	-- Decide what the dragger should do when clicking in the 3d space, given
	-- a clickEvent, which is a table: {
	--     ClickedSelectable, -- The selectable that was clicked
	--     ClickedItem, -- The item in the selectable which was clicked
	--     SelectionDidContainSelectable, -- did the old selection previously
	--         contain the Selectable that was clicked?
	--     SelectionNowContainsSelectable, -- does the new selection now
	--         contain the Selectable that was clicked?
	-- }
	-- The function should return one of the following states (as a string):
	--  * "Ready" -- Do nothing until the next click
	--  * "DragSelecting" -- Begin a rubber band select
	--  * "FreeformSelectionDrag" -- Begin dragging the current selection
	-- The dragger will then enter the state specified by the return value.
	dispatchWorldClick = require(script.Parent.dispatchWorldClick),

	-- function getNextSelectables(draggerContext, currentSelection, dragInfo, isDoubleClick)
	-- When a freeform drag fails to be started due to the user clicking and
	-- releasing without moving their mouse, the dragger will try to select
	-- a list of "next" selectables instead.
	-- For the core draggers, this means selecting a face instance underneath
	-- the clicked part if one exists.
	-- This function returns a list of those next selectables to select, or nil
	-- if the old selection should be kept.
	-- The "dragInfo" parameter is the dragInfo which was returned by
	-- dispatchClick, or nil if no freeform drag was attempted.
	getNextSelectables = require(script.Parent.getNextSelectables),

	-- class FreeformDragger
	-- .new(draggerContext, draggerToolModel, dragInfo)
	--     Begins a drag with a dragInfo that was returned from dispatchClick.
	-- :rotate(axis)
	---    Rotate the dragged parts around a given axis (T/R key hookup)
	-- :update()
	--     Update the drag with a given mouse target.
	-- :render()
	--     Optional rendering function which returns a Roact component
	--     representing any snaps / joints / other UI associated with the drag.
	-- :destroy()
	--     Finish the freeform drag.
	FreeformDragger = require(script.Parent.FreeformDragger),

	-- function beginBoxSelect(draggerContext)
	-- Returns an array of tables structured like so:
	--     {Center = Vector3, Selectable = ...}
	-- containing each candidate selectable to potentially be included,
	-- in the selection after a box select, and where each one is located.
	beginBoxSelect = require(script.Parent.beginBoxSelect),

	-- function endBoxSelect(draggerContext, finalSelection)
	-- Does any final cleanup / finalization that should be done after a box
	-- select has occurred. In the core schema, we don't have to do anything
	-- in this function, but if you were implementing some form of soft
	-- selection (where you only update your model classes once at the end of
	-- the box select), you would want this hook.
	endBoxSelect = require(script.Parent.endBoxSelect),

	-- class BoundsChangedTracker
	-- Tracks changes to the position of the selected items due to factors
	-- external to the dragger. For instance, when you press Ctrl+Z, the
	-- ChangeHistoryService may move the selected items, and the dragger needs
	-- to know that this happened so that it can rerender the handles around the
	-- new location of the moved items.
	-- .new(draggerContext, onChangedHandler)
	--     When an item moves, the function onChangedHandler should be called
	--     with the item which moved.
	-- :setSelection(derivedWorldState)
	--     Set the items to track position changes for
	-- :install()
	--     Begin tracking bounds changes on the target parts
	-- :uninstall()
	--     Stop tracking bounds changes on the target parts
	BoundsChangedTracker = require(script.Parent.BoundsChangedTracker),

	-- class SelectionInfo
	-- Exposes derived aggregate information about the selection.
	-- It is returned as an object so that some of the information can be lazily
	-- calculated if desired.
	-- The returned SelectionInfo can contain whatever fields and methods you
	-- need depending on your tool implementations, however, the following are
	-- are required for the DraggerFramework code:
	-- SelectionInfo
	-- .new(draggerContext, selection)
	--     Construct a SelectionInfo for a given selection of selectables.
	-- :isEmpty()
	--     Returns true when there were no items in the selection to calculate
	--     a well formed SelectionInfo from. When this returns true, the other
	--     functions on SelectionInfo will not be called by the framework.
	-- :getBoundingBox() -> (CFrame at, Vector3 offset, Vector3 size)
	--     Returns the primary "basis" of the selection which the bounding box
	--     is oriented around in `at`, as well as the offset of the center of
	--     the bounding box from that basis, and the size of the bounding box.
	--     Supporting "Use Local Space" means changing the return value of this
	--     method depending on whether the option is set.
	-- :doesContainItem(item)
	--     Returns whether a given item is part of the selection or not.
	-- :isDynamic()
	--     For optimization purposes, do fields of the SelectionInfo change
	--     every single frame? If this is hardcoded to true then you don't need
	--     to implement BoundsChangedTracker, as the bounds are assumed to be
	--     changing every frame... at the cost of significantly worse perf.
	SelectionInfo = require(script.Parent.SelectionInfo),

	-- function addUndoWaypoint(draggerContext, waypointName)
	-- Add an undo waypoint. A simple implementation would be to simply delegate
	-- to draggerContext:addUndoWaypoint, however if you have some Lua-side
	-- undo state then you have an opportunity to edit that state in this.
	addUndoWaypoint = require(script.Parent.addUndoWaypoint),
}

return DraggerSchema