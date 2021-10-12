local TransformHandlesImplementation = {}
TransformHandlesImplementation.__index = TransformHandlesImplementation

function TransformHandlesImplementation.new(draggerContext)
	return setmetatable({
		_draggerContext = draggerContext,
		_updatePlaneFn = draggerContext.updatePlaneFn,
	}, TransformHandlesImplementation)
end

function TransformHandlesImplementation:beginDrag(selection, initialSelectionInfo)
	assert(#selection == 1, "Expected selection to have length 1.")
	self.initCFrame = selection[1].planeCFrame
end

function TransformHandlesImplementation:updateDrag(globalTransform)
	self._updatePlaneFn(globalTransform * self.initCFrame)
	return globalTransform
end

function TransformHandlesImplementation:endDrag()
end

function TransformHandlesImplementation:render(currentBasisCFrame)
	return nil
end

return TransformHandlesImplementation
