--[[
	Scale tool implementation. Responsible for handle state and handle views.
]]

-- Libraries
local DraggerFramework = script.Parent.Parent
local Plugin = DraggerFramework.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

-- Dragger Framework
local Colors = require(DraggerFramework.Utility.Colors)
local Math = require(DraggerFramework.Utility.Math)
local StandaloneSelectionBox = require(DraggerFramework.Components.StandaloneSelectionBox)
local ScaleHandleView = require(DraggerFramework.Components.ScaleHandleView)

local getFFlagRevertCtrlScale = require(DraggerFramework.Flags.getFFlagRevertCtrlScale)
local EngineFeatureEditPivot = require(DraggerFramework.Flags.getEngineFeatureEditPivot)()

local ExtrudeHandle = {}
ExtrudeHandle.__index = ExtrudeHandle

local NormalId = {
	X_AXIS = 1,
	Y_AXIS = 2,
	Z_AXIS = 3,
}

local ScaleHandleDefinitions = {
	MinusX = {
		Offset = CFrame.fromMatrix(Vector3.new(), Vector3.new(0, 1, 0), Vector3.new(0, 0, 1)),
		Color = Colors.X_AXIS,
		NormalId = NormalId.X_AXIS,
	},
	PlusX = {
		Offset = CFrame.fromMatrix(Vector3.new(), Vector3.new(0, 1, 0), Vector3.new(0, 0, -1)),
		Color = Colors.X_AXIS,
		NormalId = NormalId.X_AXIS,
	},
	MinusY = {
		Offset = CFrame.fromMatrix(Vector3.new(), Vector3.new(0, 0, 1), Vector3.new(1, 0, 0)),
		Color = Colors.Y_AXIS,
		NormalId = NormalId.Y_AXIS,
	},
	PlusY = {
		Offset = CFrame.fromMatrix(Vector3.new(), Vector3.new(0, 0, 1), Vector3.new(-1, 0, 0)),
		Color = Colors.Y_AXIS,
		NormalId = NormalId.Y_AXIS,
	},
	MinusZ = {
		Offset = CFrame.fromMatrix(Vector3.new(), Vector3.new(1, 0, 0), Vector3.new(0, 1, 0)),
		Color = Colors.Z_AXIS,
		NormalId = NormalId.Z_AXIS,
	},
	PlusZ = {
		Offset = CFrame.fromMatrix(Vector3.new(), Vector3.new(1, 0, 0), Vector3.new(0, -1, 0)),
		Color = Colors.Z_AXIS,
		NormalId = NormalId.Z_AXIS,
	},
}

local function snapToGrid(distance, gridSize)
	return math.floor(distance / gridSize + 0.5) * gridSize
end

local function nextNormalId(normalId)
	return normalId % 3 + 1
end

function ExtrudeHandle.new(draggerContext, props, implementation)
	local self = {}
	self._handles = {}
	self._props = props or {}
	self._draggerContext = draggerContext
	self._implementation = implementation
	return setmetatable(self, ExtrudeHandle)
end

function ExtrudeHandle:update(draggerToolModel, selectionInfo)
	if not self._draggingHandleId then
		-- Don't clobber these fields while we're dragging because we're
		-- updating the bounding box in a smart way given how we're moving the
		-- parts.

		self._selectionInfo = selectionInfo
		self._schema = draggerToolModel:getSchema()
		self._selectionWrapper = draggerToolModel:getSelectionWrapper()

		local cframe, offset, size = self._implementation:getBoundingBox(
			self._selectionWrapper:get(), self._selectionInfo)
		if EngineFeatureEditPivot then
			self._basisOffset = CFrame.new(-offset) -- negative since relative to bounding box
		end
		self._boundingBox = {
			Size = size,
			CFrame = cframe * CFrame.new(offset),
		}
	end
	self:_updateHandles()
end

function ExtrudeHandle:shouldBiasTowardsObjects()
	return true
end

-- Called when the settings we're using to drag change (when we press/release
-- the key(s) for resize from center / maintain aspect ratio)
function ExtrudeHandle:_refreshDrag()
	self._committedDeltaSize = self._lastDeltaSize
	self._committedOffset = self._lastOffset

	self._originalBoundingBoxSize = self._boundingBox.Size
	self._originalBoundingBoxCFrame = self._boundingBox.CFrame

	-- The edge case where you rotate your camera exactly into alignment with
	-- the axis you started the drag on and then press Ctrl will act a bit weird
	-- here, but that it's almost impossible to hit that edge case (You have to
	-- key-bind a camera alignment command).
	local hasDistance, distance =
		self:_getDistanceAlongAxis(self._draggerContext:getMouseRay())
	self._startDistance = hasDistance and distance or 0
end

function ExtrudeHandle:_getExtrudeMode()
	local keepAspectRatio = self._implementation:shouldKeepAspectRatio(
		self._selectionWrapper:get(), self._selectionInfo, self._normalId)
	local resizeFromCenter = self._implementation:shouldScaleFromCenter(
		self._selectionWrapper:get(), self._selectionInfo, self._normalId)
	return keepAspectRatio, resizeFromCenter
end

-- Returns, whether we did need to refresh the drag
function ExtrudeHandle:_refreshDragIfNeeded()
	local keepAspectRatio, resizeFromCenter = self:_getExtrudeMode()
	if keepAspectRatio ~= self._lastKeepAspectRatio or
		resizeFromCenter ~= self._lastResizeFromCenter then
		if self._handles[self._draggingHandleId] then
			self:_refreshDrag()
		end
		self._lastKeepAspectRatio = keepAspectRatio
		self._lastResizeFromCenter = resizeFromCenter
		return true
	else
		return false
	end
end

function ExtrudeHandle:keyDown(keyCode)
	return self:_refreshDragIfNeeded()
end

function ExtrudeHandle:keyUp(keyCode)
	return self:_refreshDragIfNeeded()
end

function ExtrudeHandle:hitTest(mouseRay, ignoreExtraThreshold)
	local closestHandleId, closestHandleDistance = nil, math.huge
	for handleId, handleProps in pairs(self._handles) do
		local distance = ScaleHandleView.hitTest(handleProps, mouseRay)
		if distance and distance < closestHandleDistance then
			closestHandleDistance = distance
			closestHandleId = handleId
		end
	end
	if closestHandleId then
		return closestHandleId, 0
	elseif ignoreExtraThreshold then
		return nil, 0
	else
		-- Second attempt to find a handle, now using closest distance to the ray
		-- rather than closest hit distance to the camera.
		for handleId, handleProps in pairs(self._handles) do
			local distance = ScaleHandleView.distanceFromHandle(handleProps, mouseRay)
			if distance < closestHandleDistance then
				closestHandleDistance = distance
				closestHandleId = handleId
			end
		end

		-- Only hit a handle if we are actually inside the closest handle's
		-- extra hitTest radius.
		if closestHandleDistance < 0 then
			return closestHandleId, 0
		else
			return nil, 0
		end
	end
end

function ExtrudeHandle:render(hoveredHandleId)
	local children = {}
	if self._draggingHandleId and self._handles[self._draggingHandleId] then
		local handleProps = self._handles[self._draggingHandleId]
		children[self._draggingHandleId] = Roact.createElement(ScaleHandleView, {
			HandleCFrame = handleProps.HandleCFrame,
			Color = handleProps.Color,
			Scale = handleProps.Scale,
		})

		for otherHandleId, otherHandleProps in pairs(self._handles) do
			if otherHandleId ~= self._draggingHandleId then
				children[otherHandleId] = Roact.createElement(ScaleHandleView, {
					HandleCFrame = otherHandleProps.HandleCFrame,
					Color = Colors.makeDimmed(otherHandleProps.Color),
					Scale = otherHandleProps.Scale,
					Thin = true,
				})
			end
		end

		children.ImplementationRendered =
			self._implementation:render(self._lastDeltaSize, self._lastOffset)
	else
		for handleId, handleProps in pairs(self._handles) do
			local color = handleProps.Color
			local hovered = (handleId == hoveredHandleId)
			if not hovered then
				color = Colors.makeDimmed(handleProps.Color)
			end
			children[handleId] = Roact.createElement(ScaleHandleView, {
				HandleCFrame = handleProps.HandleCFrame,
				Color = color,
				Scale = handleProps.Scale,
				Hovered = hovered,
			})
		end
	end

	-- Show selection bounding box when scaling multiple items.
	if self._props.ShowBoundingBox and #self._selectionWrapper:get() > 1 then
		children.SelectionBoundingBox = Roact.createElement(StandaloneSelectionBox, {
			CFrame = self._boundingBox.CFrame,
			Size = self._boundingBox.Size,
			Color = self._draggerContext:getSelectionBoxColor(),
			LineThickness = self._draggerContext:getHoverLineThickness(),
			Container = self._draggerContext:getGuiParent(),
		})
	end

	return Roact.createFragment(children)
end

function ExtrudeHandle:mouseDown(mouseRay, handleId)
	self._draggingHandleId = handleId

	if self._handles[handleId] then
		self._normalId = self._handles[handleId].NormalId
		self._handleCFrame = self._handles[handleId].HandleCFrame
		self._originalBoundingBoxCFrame = self._boundingBox.CFrame
		self._originalBoundingBoxSize = self._boundingBox.Size
		if EngineFeatureEditPivot then
			self._originalBasisOffset = self._basisOffset.Position
			local axis = self._handles[handleId].Axis
			local perpendicularMovement = self._originalBasisOffset
			perpendicularMovement = perpendicularMovement - axis * perpendicularMovement:Dot(axis)
			self._perpendicularMovement = perpendicularMovement
		end

		if getFFlagRevertCtrlScale() then
			self._lastKeepAspectRatio, self._lastResizeFromCenter = self:_getExtrudeMode()
		end

		local hasDistance, distance = self:_getDistanceAlongAxis(mouseRay)
		assert(hasDistance)
		self._startDistance = distance

		if getFFlagRevertCtrlScale() then
			-- When you change extrude modes mid drag, we need to separate the
			-- resize you've done so far from the part you will do in the new mode.
			-- The part you've done so far is the "committed" part.
			self._committedDeltaSize = Vector3.new()
			self._committedOffset = Vector3.new()
		end

		self._lastDeltaSize = Vector3.new()
		self._lastOffset = Vector3.new()
		self._minimumSize = self._implementation:getMinimumSize(
			self._selectionWrapper:get(), self._selectionInfo, self._normalId)

		self._implementation:beginScale(
			self._selectionWrapper:get(),
			self._selectionInfo,
			self._normalId)
	end
end

local function computeDeltaSize(originalSize, delta, normalId, keepAspectRatio)
	local sizeComponents = {originalSize.X, originalSize.Y, originalSize.Z}
	local xyz = {0, 0, 0}
	xyz[normalId] = delta
	if keepAspectRatio then
		local ratio = delta / sizeComponents[normalId]
		xyz[nextNormalId(normalId)] = sizeComponents[nextNormalId(normalId)] * ratio
		xyz[nextNormalId(nextNormalId(normalId))] = sizeComponents[nextNormalId(nextNormalId(normalId))] * ratio
	end
	return Vector3.new(unpack(xyz))
end

local function maxComponent(vector: Vector3)
	return math.max(math.abs(vector.X), math.abs(vector.Y), math.abs(vector.Z))
end

function ExtrudeHandle:mouseDrag(mouseRay)
	assert(self._draggingHandleId, "Missing dragging handle ID.")

	if not self._handles[self._draggingHandleId] then
		return
	end

	if getFFlagRevertCtrlScale() then
		-- The settings used for the drag may have changed.
		-- Return value intentionally ignored, we're already in the process of
		-- updating the drag, so we're doing the drag update anyways regardless
		-- of whether a refresh was needed due to a settings change.
		self:_refreshDragIfNeeded()
	end

	local hasDistance, distance = self:_getDistanceAlongAxis(mouseRay)
	if not hasDistance then
		return
	end

	local delta = snapToGrid(distance - self._startDistance, self._draggerContext:getGridSize())
	local handleProps = self._handles[self._draggingHandleId]
	local normalId = handleProps.NormalId
	local axis = handleProps.Axis

	local keepAspectRatio, resizeFromCenter
	if getFFlagRevertCtrlScale() then
		-- These have been updated by the preceeding _refreshDragIfNeeded call
		keepAspectRatio = self._lastKeepAspectRatio
		resizeFromCenter = self._lastResizeFromCenter
	else
		keepAspectRatio = self._implementation:shouldKeepAspectRatio(
			self._selectionWrapper:get(), self._selectionInfo, self._normalId)
		resizeFromCenter = self._implementation:shouldScaleFromCenter(
			self._selectionWrapper:get(), self._selectionInfo, self._normalId)
	end

	-- TODO: Replace resizeFromCenter with self._lastResizeFromCenter when
	-- removing getFFlagRevertCtrlScale.
	local localOffset
	if resizeFromCenter then
		delta = delta * 2
		localOffset = Vector3.new()
	else
		localOffset = axis * 0.5 * delta
	end

	-- Add the movement thanks to an offset center
	if EngineFeatureEditPivot then
		local sizeComponents = {self._originalBoundingBoxSize.X, self._originalBoundingBoxSize.Y, self._originalBoundingBoxSize.Z}
		local ratio = delta / sizeComponents[normalId]
		localOffset = localOffset - self._perpendicularMovement * ratio
	end

	-- Determine the size change for the selection
	-- TODO: Replace keepAspectRatio with self._lastKeepAspectRatio when
	-- removing getFFlagRevertCtrlScale.
	local originalSize = self._originalBoundingBoxSize
	local deltaSize = computeDeltaSize(originalSize, delta, normalId, keepAspectRatio)

	-- Apply the minimum size
	local targetSize = self._originalBoundingBoxSize + deltaSize
	local modTargetSize = self._minimumSize:Max(targetSize)
	if targetSize ~= modTargetSize then
		if keepAspectRatio then
			-- Can't keep aspect ratio while applying a min size, bail out
			-- TODO: Improve this
			return
		end
		local newDeltaSize = modTargetSize - self._originalBoundingBoxSize
		local denominator = maxComponent(deltaSize)
		local fractionPossible = (denominator > 0) and
			(maxComponent(newDeltaSize) / denominator) or 0
		localOffset = localOffset * fractionPossible
		deltaSize = newDeltaSize
	end

	if getFFlagRevertCtrlScale() then
		local deltaSizeToApply = deltaSize + self._committedDeltaSize
		local localOffsetToApply = localOffset + self._committedOffset

		-- Eliminate floating-point error for edits that don't have any visible impact
		if deltaSizeToApply:FuzzyEq(Vector3.new()) then
			deltaSizeToApply = Vector3.new()
		end
		if localOffsetToApply:FuzzyEq(Vector3.new()) then
			localOffsetToApply = Vector3.new()
		end

		self._lastDeltaSize, self._lastOffset =
			self._implementation:updateScale(deltaSizeToApply, localOffsetToApply)
		self._boundingBox.CFrame = self._originalBoundingBoxCFrame * CFrame.new(self._lastOffset - self._committedOffset)
		self._boundingBox.Size = originalSize + (self._lastDeltaSize - self._committedDeltaSize)
		if EngineFeatureEditPivot then
			self._basisOffset =
				CFrame.new(self._originalBasisOffset / self._originalBoundingBoxSize * self._boundingBox.Size)
		end
	else
		-- Eliminate floating-point error for edits that don't have any visible impact
		if deltaSize:FuzzyEq(Vector3.new()) then
			deltaSize = Vector3.new()
		end

		-- Call on the implementation to perform the scaling
		self._lastDeltaSize, self._lastOffset =
			self._implementation:updateScale(deltaSize, localOffset)
		self._boundingBox.CFrame = self._originalBoundingBoxCFrame * CFrame.new(self._lastOffset)
		self._boundingBox.Size = originalSize + self._lastDeltaSize
	end
end

function ExtrudeHandle:mouseUp(mouseRay)
	if self._handles[self._draggingHandleId] then
		self._implementation:endScale()
	end

	self._draggingHandleId = nil

	self._schema.addUndoWaypoint(self._draggerContext, "Scale Selection")
end

function ExtrudeHandle:_getDistanceAlongAxis(mouseRay)
	local axis = self._handleCFrame.LookVector
	if EngineFeatureEditPivot then
		return Math.intersectRayRay(
			(self._originalBoundingBoxCFrame * CFrame.new(self._originalBasisOffset)).Position, axis,
			mouseRay.Origin, mouseRay.Direction.Unit)
	else
		return Math.intersectRayRay(self._originalBoundingBoxCFrame.Position, axis, mouseRay.Origin, mouseRay.Direction.Unit)
	end
end

function ExtrudeHandle:_updateHandles()
	if self._selectionInfo:isEmpty() or self._boundingBox.Size:FuzzyEq(Vector3.new()) then
		-- Can't scale something with a zero size.
		self._handles = {}
	else
		for handleId, handleDefinition in pairs(ScaleHandleDefinitions) do
			-- Offset the handle's base position by the size of the bounding
			-- box on that handle's axis.
			local offset = handleDefinition.Offset
			if EngineFeatureEditPivot then
				local inverseHandleCFrame = offset:Inverse()
				local localSize = inverseHandleCFrame:VectorToWorldSpace(self._boundingBox.Size)
				local offsetDueToBoundingBox = 0.5 * math.abs(localSize.Z)
				local offsetDueToBasisOffset = inverseHandleCFrame:VectorToWorldSpace(self._basisOffset.Position)
				local handleBaseCFrame =
					self._boundingBox.CFrame *
					offset *
					CFrame.new(offsetDueToBasisOffset.X, offsetDueToBasisOffset.Y, -offsetDueToBoundingBox)
				self._handles[handleId] = {
					Color = handleDefinition.Color,
					Axis = offset.LookVector,
					HandleCFrame = handleBaseCFrame,
					NormalId = handleDefinition.NormalId,
					Scale = self._draggerContext:getHandleScale(handleBaseCFrame.Position),
				}
			else
				local localSize = offset:Inverse():VectorToWorldSpace(self._boundingBox.Size)
				local boundingBoxOffset = 0.5 * math.abs(localSize.Z)
				local handleBaseCFrame = self._boundingBox.CFrame * offset * CFrame.new(0, 0, -boundingBoxOffset)

				self._handles[handleId] = {
					Color = handleDefinition.Color,
					Axis = offset.LookVector,
					HandleCFrame = handleBaseCFrame,
					NormalId = handleDefinition.NormalId,
					Scale = self._draggerContext:getHandleScale(handleBaseCFrame.Position),
				}
			end
		end
	end
end

return ExtrudeHandle
