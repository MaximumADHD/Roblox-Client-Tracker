local TransformHandlesImplementation = {}
TransformHandlesImplementation.__index = TransformHandlesImplementation

function TransformHandlesImplementation.new(draggerContext)
	return setmetatable({
		_draggerContext = draggerContext,
	}, TransformHandlesImplementation)
end

function TransformHandlesImplementation:_resetAxisAngleData()
	self._totalAngle = 0
	self._previousAngle = nil
	self._axis = nil
	self._previousAxis = nil
	self._sign = 1
end

-- Breaking a CFrame down into axis, angle gives back an angle between [0, 180]
-- and flips the axis once the angle goes outside that range. In order to properly
-- weigh the rotation later, we need to calculate the total angle since the beginning
-- of the drag.
function TransformHandlesImplementation:_updateAxisAngleData(globalTransform)
	local axis, angle = globalTransform:ToAxisAngle()
	if angle ~= 0 and not self._axis then
		self._axis = axis
	end

	if self._previousAngle then
		local axisFlipped = false
		-- check if the axis flipped during this drag frame
		if self._previousAxis and not self._previousAxis:Dot(axis) < 0 then
			axisFlipped = true
		end
		self._sign = if not self._axis:Dot(axis) < 0 then -1 else 1

		if axisFlipped then
			if math.deg(angle) >= 90 then
				-- The axis flipped after the angle passed 180 degrees.
				-- Total angular distance traveled since previous drag frame was (180 - previous angle) + (180 - current angle)
				self._totalAngle -= self._sign * (2 * math.pi - self._previousAngle - angle)
			else
				-- The axis flipped after the angle passed 0 degrees.
				self._totalAngle += self._sign * (self._previousAngle + angle)
			end
		else
			self._totalAngle += self._sign * (angle - self._previousAngle)
		end
	else
		self.totalAngle = angle
	end

	if self._axis then
		self._previousAngle = angle
		self._previousAxis = axis
	end
end

--[[
	Start dragging the items in initialSelectionInfo.
]]
function TransformHandlesImplementation:beginDrag(selection, initialSelectionInfo)
	local basis, center = initialSelectionInfo:getBoundingBox()
	self._baseBoundingBoxCenter = basis.p + center
	self._vertexEditingTool = self._draggerContext.vertexEditingTool

	self:_resetAxisAngleData()
end

--[[
	Try to move the selection passed to beginDrag by a global transform relative
	to where it started, that is for each point p in the selection:
	  p' = globalTransform * p
	Then return that global transform that was actually applied.
]]
function TransformHandlesImplementation:updateDrag(globalTransform)
	self:_updateAxisAngleData(globalTransform)
	self._vertexEditingTool:transformSelected(
		globalTransform,
		self._baseBoundingBoxCenter,
		self._axis,
		self._totalAngle)
end

--[[
	Finish dragging the items.
]]
function TransformHandlesImplementation:endDrag()
	self._vertexEditingTool = nil
	self._baseBoundingBoxCenter = nil
	self:_resetAxisAngleData()

	self._vertexEditingTool:addWaypoint()
end

--[[
	Renders any snapping, joint, etc widgets that should show up while dragging.
	Returns: A Roact element.
]]
function TransformHandlesImplementation:render(currentBasisCFrame)
	return nil
end

return TransformHandlesImplementation