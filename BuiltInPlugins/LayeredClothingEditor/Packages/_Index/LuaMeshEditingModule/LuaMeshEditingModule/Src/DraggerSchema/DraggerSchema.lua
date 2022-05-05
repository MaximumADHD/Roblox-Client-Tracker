--[[
	table DraggerSchema

	Contains functions / classes that spceify how the DraggerFramework should
	operate on your class of `items` and `selectables`.

	* `items` are objects that you can click on with your mouse.

	* `selectables` are things that can be added to / removed from a persistent
	selection, with the same API as the Roblox Selection object.

	If you are making a schema for simple objects, with no interior complexity,
	then items and selectables can be one and the same. For example, in the Core
	schema, a Part instance can be both a selectable and an item, but a Model
	instance is only ever a selectable.

	Both items and selectables MUST BE reference stable such as Lua defined
	objects or Roblox Instances. That is, if A and B represent the same
	selectable, then A == B must be true. You can accomplish this by
	implementing the __eq metamethod on your Selectables if they do not
	naturally have this property.

	Most of these functions / classes in the Schema take a DraggerContext as an
	argument. You do not have to create your own implementation of
	DraggerContext. The intent is that you use the default implementation of
	DraggerContext (DraggerContext_PluginImpl), assign additional data into
	new fields of it after constructing it, and then pull that data back out
	as needed in the Schema implementation. E.g:
		local context = DraggerContext_PluginImpl.new()
		context.MyFancyData = ...
		...pass context into the DraggerToolComponent
		...then in the schema
		print(context.MyFancyData)

	All of the following must be implemented, but some of them may be stub
	functions returning false / nil. See the individual template files for more
	info on how to implement the individual functions / classes.

	The ones marked "Required" will definitely need a non-trivial implementation
	for every schema, the others may be possible to leave as stubs in simpler
	schemas for selectables defined purely on the Lua side.
]]
local emptyFunction = function()
end

local DraggerSchema = {
	-- Getting selectables from the world based on click / mouse handling
	getMouseTarget = require(script.Parent.getMouseTarget), -- Required
	beginBoxSelect = require(script.Parent.beginBoxSelect), -- Required

	-- Hovered selectable management
	setHover = require(script.Parent.setHover), -- Required
	HoverEscapeDetector = require(script.Parent.HoverEscapeDetector),

	-- Selection handling
	SelectionInfo = require(script.Parent.SelectionInfo), -- Required
	BoundsChangedTracker = require(script.Parent.BoundsChangedTracker),

	-- Click / drag handling
	dispatchWorldClick = require(script.Parent.dispatchWorldClick), -- Required
	getNextSelectables = require(script.Parent.getNextSelectables),

	-- Handle implementations (how to transform / scale your selectables)
	-- (these don't actually need to be in the schema, but it's convinient to
	-- put them here, as you will need them in places where you're already
	-- including your schema)
	TransformHandlesImplementation = require(script.Parent.TransformHandlesImplementation),
	ExtrudeHandlesImplementation = require(script.Parent.ExtrudeHandlesImplementation),

	-- unused
	addUndoWaypoint = emptyFunction,
	endBoxSelect = emptyFunction,
	getSelectionBoxComponent = emptyFunction,
	setActivePoint = emptyFunction,
	isExclusiveSelectable = emptyFunction,
	FreeformDragger = nil,
}

return DraggerSchema