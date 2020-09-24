return function(draggerContext, currentSelection, dragInfo, isDoubleClick)
	-- dragInfo will be nil when we didn't start a potential freeform drag
	if dragInfo.clickedFaceInstance then
		return {dragInfo.clickedFaceInstance}
	end
end