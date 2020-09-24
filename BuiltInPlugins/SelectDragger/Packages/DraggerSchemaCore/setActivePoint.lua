return function(draggerContext, selectionInfo)
	if not selectionInfo:isEmpty() then
		local cframe, offset = selectionInfo:getBoundingBox()
		draggerContext:setInsertPoint(cframe * offset)
	end
end