--[[
	class HoverEscapeDetector

	Constructed with a specific item and a callback.

	The HoverEscapeDetector calls the `onEscaped` callback when the item
	changes in some way that could make it no longer hovered due to factors
	external to the dragger (such as when it is deleted through a hotkey).

	If your Schema is for Lua-based selectables, then it suffices to fire
	an event whenever your code edits the selectables in some way outside of
	the framework, and listen on that event here.

	If your Schema is for Instance-based selectables, you will need to listen
	on hierarchy changed and position changed events to know when the hovered
	object may have been deleted for moved out from underneath the dragger.
	Implementing this correctly is quite difficult due to gotchas with Roblox
	hierarchy changed events, looking at the implementation in the Core Schema
	will be helpful.
]]

local HoverEscapeDetector = {}
HoverEscapeDetector.__index = HoverEscapeDetector

function HoverEscapeDetector.new(draggerContext, hoveredItem, onEscaped)
	return setmetatable({
		_draggerContext = draggerContext,
	}, HoverEscapeDetector)
end

function HoverEscapeDetector:destroy() end

return HoverEscapeDetector
