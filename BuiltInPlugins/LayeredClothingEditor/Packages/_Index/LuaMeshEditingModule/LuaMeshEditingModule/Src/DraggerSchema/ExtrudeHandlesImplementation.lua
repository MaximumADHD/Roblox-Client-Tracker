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

-- Should the tool act as an actual scale tool (scaling around the basis
-- CFrame), or scale by moving the edge of the bounding box?
function ExtrudeHandlesImplementation:shouldScaleFromCenter(selection, selectionInfo, normalId)
	-- this should never be set to false
	return true
end

function ExtrudeHandlesImplementation:axesToScale(selectionInfo, normalId)
	if self._draggerContext:isShiftKeyDown() then
		return {X = true, Y = true, Z = true}
	end
	local axes = {{X = true}, {Y = true}, {Z = true}}
	return axes[normalId]
end

function ExtrudeHandlesImplementation:beginScale(selection, initialSelectionInfo, normalId)
	local basis, center, size = initialSelectionInfo:getBoundingBox()
	self._baseBoundingBoxSize = size
	self._baseBoundingBox = basis + center
	self._vertexEditingTool = self._draggerContext.vertexEditingTool
end

function ExtrudeHandlesImplementation:getMinMaxSizes(selectionInfo, axesToScale, bounds)
	return Vector3.zero, Vector3.one * math.huge
end
-- localOffset should be ignored here since shouldScaleFromCenter is always true
function ExtrudeHandlesImplementation:updateScale(localDeltaSize, localOffset)
	assert(localOffset == Vector3.new(0, 0, 0), "localOffset should be (0,0,0).")
	assert(self:shouldScaleFromCenter(), "shouldScaleFromCenter should always return true.")
	local newBounds = self._baseBoundingBoxSize + localDeltaSize
	local scaleX = if self._baseBoundingBoxSize.X ~= 0 then (newBounds.X / self._baseBoundingBoxSize.X) else newBounds.X
	local scaleY = if self._baseBoundingBoxSize.Y ~= 0 then (newBounds.Y / self._baseBoundingBoxSize.Y) else newBounds.Y
	local scaleZ = if self._baseBoundingBoxSize.Z ~= 0 then (newBounds.Z / self._baseBoundingBoxSize.Z) else newBounds.Z
	local scale = Vector3.new(scaleX, scaleY, scaleZ)

	self._vertexEditingTool:scaleSelected(self._baseBoundingBox, scale)

	return localDeltaSize, localOffset
end

function ExtrudeHandlesImplementation:endScale()
	self._baseBoundingBoxSize = nil
	self._baseBoundingBox = nil

	self._vertexEditingTool:addWaypoint()
end

function ExtrudeHandlesImplementation:render(localDeltaSize, localOffset)
	return nil
end

return ExtrudeHandlesImplementation