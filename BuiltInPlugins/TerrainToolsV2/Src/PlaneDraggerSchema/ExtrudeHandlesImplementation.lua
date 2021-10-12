local ExtrudeHandlesImplementation = {}
ExtrudeHandlesImplementation.__index = ExtrudeHandlesImplementation

function ExtrudeHandlesImplementation.new(draggerContext)
	return setmetatable({
		_draggerContext = draggerContext,
	}, ExtrudeHandlesImplementation)
end

function ExtrudeHandlesImplementation:getBoundingBox(selection, selectionInfo)
	return selectionInfo:getBoundingBox()
end

function ExtrudeHandlesImplementation:shouldScaleFromCenter(selection, selectionInfo, normalId)
	return self._draggerContext:isCtrlKeyDown()
end

function ExtrudeHandlesImplementation:shouldKeepAspectRatio(selection, selectionInfo, normalId)
	return self._draggerContext:isShiftKeyDown()
end

function ExtrudeHandlesImplementation:getMinimumSize(selection, selectionInfo, normalId)
	return Vector3.new(0, 0, 0)
end

function ExtrudeHandlesImplementation:beginScale(selection, initialSelectionInfo, normalId)
	local cframe, offset, size = self:getBoundingBox(selection, initialSelectionInfo)
	self._originalBoundingBoxCFrame = cframe * CFrame.new(offset)
	self._originalBoundingBoxSize = size

	-- Save original item / selectable positions here:
end

-- Scale / offset the selection relative to where it was when beginScale was
-- called.
function ExtrudeHandlesImplementation:updateScale(deltaSize, localOffset)
	local currentBoundingBoxCFrame = self._originalBoundingBoxCFrame * CFrame.new(localOffset)
	local currentBoundingBoxSize = self._originalBoundingBoxSize + deltaSize
	local scaleVector = currentBoundingBoxSize / self._originalBoundingBoxSize

	return deltaSize, localOffset
end

function ExtrudeHandlesImplementation:endScale() end

function ExtrudeHandlesImplementation:render(deltaSize, localOffset) end

return ExtrudeHandlesImplementation
