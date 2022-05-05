
--[[
	BoundsChangedTracker object

	Watches a SelectionInfo for any changes to the items in that selection
	which are made by factors external to the DraggerFramework. For example:
	objects in the workspace may move around when the user presses Ctrl+Z.

	If you are writing a Schema for objects completely defined in Lua, then
	it suffices to listen on an event which you fire whenever you modify the
	selection in some way which effects its bounding box / handles, and you
	will be able to leave the setSelection method empty.

	If you are writing a Schema for instances in the hierarchy, then you will
	need to listen on their position / size properties changing. The
	BoundsChangedTracker in the Core schema has an optimally efficient
	implementation of this which you can take as an example or copy.
]]

local BoundsChangedTracker = {}
BoundsChangedTracker.__index = BoundsChangedTracker

-- TODO: AVBURST-8364 Handle ControlPoint/ControlEdge instances being deleted outside of module/plugin

function BoundsChangedTracker.new(draggerContext, handler)
	return setmetatable({
		_handler = handler,
		_draggerContext = draggerContext,
	}, BoundsChangedTracker)
end

function BoundsChangedTracker:install()
end

function BoundsChangedTracker:uninstall()
end

function BoundsChangedTracker:setSelection(selectionInfo)
	-- Set what items to watch for changes:
end

return BoundsChangedTracker
