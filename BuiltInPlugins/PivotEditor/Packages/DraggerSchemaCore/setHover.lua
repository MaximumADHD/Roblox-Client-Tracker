-- For the core manipulators, just set the Studio Service hovered instance to
-- the instance which the mouse was directly hovered over (hoverItem).
return function(draggerContext, hoverSelectable, hoverItem)
	draggerContext:setHoverInstance(hoverItem)
end