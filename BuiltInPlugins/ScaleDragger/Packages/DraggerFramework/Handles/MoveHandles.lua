
-- Libraries
local DraggerFramework = script.Parent.Parent
local Plugin = DraggerFramework.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Math = require(DraggerFramework.Utility.Math)
local Colors = require(DraggerFramework.Utility.Colors)
local StandaloneSelectionBox = require(DraggerFramework.Components.StandaloneSelectionBox)

local MoveHandleView = require(DraggerFramework.Components.MoveHandleView)

local getFFlagHideMoveDraggerWarning = require(DraggerFramework.Flags.getFFlagHideMoveDraggerWarning)
local EngineFeatureEditPivot = require(DraggerFramework.Flags.getEngineFeatureEditPivot)()

local ALWAYS_ON_TOP = true

local MoveHandles = {}
MoveHandles.__index = MoveHandles

local MoveHandleDefinitions = {
	MinusZ = {
		Offset = CFrame.fromMatrix(Vector3.new(), Vector3.new(1, 0, 0), Vector3.new(0, 1, 0)),
		Color = Colors.Z_AXIS,
	},
	PlusZ = {
		Offset = CFrame.fromMatrix(Vector3.new(), Vector3.new(1, 0, 0), Vector3.new(0, -1, 0)),
		Color = Colors.Z_AXIS,
	},
	MinusY = {
		Offset = CFrame.fromMatrix(Vector3.new(), Vector3.new(0, 0, 1), Vector3.new(1, 0, 0)),
		Color = Colors.Y_AXIS,
	},
	PlusY = {
		Offset = CFrame.fromMatrix(Vector3.new(), Vector3.new(0, 0, 1), Vector3.new(-1, 0, 0)),
		Color = Colors.Y_AXIS,
	},
	MinusX = {
		Offset = CFrame.fromMatrix(Vector3.new(), Vector3.new(0, 1, 0), Vector3.new(0, 0, 1)),
		Color = Colors.X_AXIS,
	},
	PlusX = {
		Offset = CFrame.fromMatrix(Vector3.new(), Vector3.new(0, 1, 0), Vector3.new(0, 0, -1)),
		Color = Colors.X_AXIS,
	},
}

local function snapToGridSize(distance, gridSize)
	return math.floor(distance / gridSize + 0.5) * gridSize
end

function MoveHandles.new(draggerContext, props, implementation)
	local self = {}
	self._handles = {}
	self._props = props or {}
	self._draggerContext = draggerContext
	self._implementation = implementation
	return setmetatable(self, MoveHandles)
end

function MoveHandles:update(draggerToolModel, selectionInfo)
	if not self._draggingHandleId then
		-- Don't clobber these fields while we're dragging because we're
		-- updating the bounding box in a smart way given how we're moving the
		-- parts.
		local cframe, offset, size = selectionInfo:getBoundingBox()
		self._basisOffset = CFrame.new(-offset) -- negative since relative to bounding box
		self._boundingBox = {
			Size = size,
			CFrame = cframe * CFrame.new(offset),
		}
		self._schema = draggerToolModel:getSchema()
		self._selectionWrapper = draggerToolModel:getSelectionWrapper()
		self._selectionInfo = selectionInfo
	end
	self:_updateHandles()
end

function MoveHandles:shouldBiasTowardsObjects()
	return false
end

function MoveHandles:hitTest(mouseRay, ignoreExtraThreshold)
	local closestHandleId, closestHandleDistance = nil, math.huge
	for handleId, handleProps in pairs(self._handles) do
		local distance = MoveHandleView.hitTest(handleProps, mouseRay)
		if distance and distance < closestHandleDistance then
			closestHandleDistance = distance
			closestHandleId = handleId
		end
	end
	return closestHandleId, closestHandleDistance, ALWAYS_ON_TOP
end

function MoveHandles:render(hoveredHandleId)
	local children = {}

	if self._draggingHandleId and self._handles[self._draggingHandleId] then
		local handleProps = self._handles[self._draggingHandleId]
		children[self._draggingHandleId] = Roact.createElement(MoveHandleView, {
			Axis = handleProps.Axis,
			AxisOffset = (not EngineFeatureEditPivot) and handleProps.AxisOffset or nil,
			Outset = handleProps.Outset,
			Color = handleProps.Color,
			Scale = handleProps.Scale,
			AlwaysOnTop = ALWAYS_ON_TOP,
			Hovered = false,
		})
		for otherHandleId, otherHandleProps in pairs(self._handles) do
			if otherHandleId ~= self._draggingHandleId then
				children[otherHandleId] = Roact.createElement(MoveHandleView, {
					Axis = otherHandleProps.Axis,
					AxisOffset = (not EngineFeatureEditPivot) and otherHandleProps.AxisOffset or nil,
					Outset = handleProps.Outset,
					Color = Colors.makeDimmed(otherHandleProps.Color),
					Scale = otherHandleProps.Scale,
					AlwaysOnTop = ALWAYS_ON_TOP,
					Thin = true,
				})
			end
		end

		children.ImplementationRendered =
			self._implementation:render(self._boundingBox.CFrame * self._basisOffset)
	else
		for handleId, handleProps in pairs(self._handles) do
			local color = handleProps.Color
			local hovered = (handleId == hoveredHandleId)
			if not hovered then
				color = Colors.makeDimmed(color)
			end
			children[handleId] = Roact.createElement(MoveHandleView, {
				Axis = handleProps.Axis,
				AxisOffset = (not EngineFeatureEditPivot) and handleProps.AxisOffset or nil,
				Outset = handleProps.Outset,
				Color = color,
				Scale = handleProps.Scale,
				AlwaysOnTop = ALWAYS_ON_TOP,
				Hovered = hovered,
			})
		end
	end

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

function MoveHandles:mouseDown(mouseRay, handleId)
	self._draggingHandleId = handleId
	self._draggingOriginalBoundingBoxCFrame = self._boundingBox.CFrame

	-- Calculate fraction of the way along the handle to "stick" the cursor to
	if self._handles[handleId] then
		self:_setupMoveAtCurrentBoundingBox(mouseRay)

		local handleProps = self._handles[handleId]
		local handleOffset, handleLength
		local offsetDueToBoundingBox
		if EngineFeatureEditPivot then
			handleOffset, handleLength =
				MoveHandleView.getHandleDimensionForScale(handleProps.Scale, self._props.Outset)
			offsetDueToBoundingBox = -handleProps.OffsetInHandleSpace.Z
		else
			handleOffset, handleLength =
				MoveHandleView.getHandleDimensionForScale(handleProps.Scale)
			offsetDueToBoundingBox = handleProps.AxisOffset
		end
		self._draggingHandleFrac =
			(self._startDistance - handleOffset - offsetDueToBoundingBox) / handleLength
	end

	self._implementation:beginDrag(self._selectionWrapper:get(), self._selectionInfo)
end

function MoveHandles:_setupMoveAtCurrentBoundingBox(mouseRay)
	local offset = MoveHandleDefinitions[self._draggingHandleId].Offset
	local axis = (self._boundingBox.CFrame * offset).LookVector
	self._axis = axis

	local hasDistance, distance = self:_getDistanceAlongAxis(mouseRay)
	-- In order to hitTest true in the first place it has to not be parallel
	-- and thus have a distance here.
	assert(hasDistance)
	self._startDistance = distance
end

function MoveHandles:_setMidMoveBoundingBox(newBoundingBoxCFrame)
	self._boundingBox.CFrame = newBoundingBoxCFrame
end

function MoveHandles:_getDistanceAlongAxis(mouseRay)
	if EngineFeatureEditPivot then
		return Math.intersectRayRay(
			(self._draggingOriginalBoundingBoxCFrame * self._basisOffset).Position, self._axis,
			mouseRay.Origin, mouseRay.Direction.Unit)
	else
		return Math.intersectRayRay(
			self._draggingOriginalBoundingBoxCFrame.Position, self._axis,
			mouseRay.Origin, mouseRay.Direction.Unit)
	end
end

--[[
	We want to keep the mouse cursor snapped to a point a constant fraction of
	the way down the handle length over the whole duration of a move. This is
	non-trivial, as the distance along the handle depends on the scale of the
	handle, but the scale of the handle depends on how far it has been moved
	relative to the camera.

	We must solve a non-linear equation satisfying the constraint:
		fraction of distance along handle at new location
		equals
		fraction of distance along handle at start location

	Do this using a binary search over the potential solution space.
]]
function MoveHandles:_solveForAdjustedDistance(unadjustedDistance)
	local offsetDueToBoundingBox
	local offsetInHandleSpace
	if EngineFeatureEditPivot then
		offsetInHandleSpace = self._handles[self._draggingHandleId].OffsetInHandleSpace
	else
		offsetDueToBoundingBox = self._handles[self._draggingHandleId].AxisOffset
	end
	local handleRotation = MoveHandleDefinitions[self._draggingHandleId].Offset

	local function getScaleForDistance(distance)
		local boundingBoxAtDistance =
			self._draggingOriginalBoundingBoxCFrame +
			self._axis * (distance - self._startDistance)
		local baseCFrameAtDistance =
			EngineFeatureEditPivot and
			(boundingBoxAtDistance * handleRotation * offsetInHandleSpace) or
			(boundingBoxAtDistance * handleRotation *
			CFrame.new(0, 0, -offsetDueToBoundingBox))
		return self._draggerContext:getHandleScale(baseCFrameAtDistance.Position)
	end

	local function getHandleFracForDistance(distance)
		local scale = getScaleForDistance(distance)
		local handleOffset, handleLength
		if EngineFeatureEditPivot then
			handleOffset, handleLength =
				MoveHandleView.getHandleDimensionForScale(scale, self._props.Outset)
		else
			handleOffset, handleLength = MoveHandleView.getHandleDimensionForScale(scale)
		end
		local intoDist = unadjustedDistance - distance + self._startDistance
		if EngineFeatureEditPivot then
			return (intoDist - handleOffset + offsetInHandleSpace.Z) / handleLength
		else
			return (intoDist - handleOffset - offsetDueToBoundingBox) / handleLength
		end
	end

	local function getHandleLengthForDistance(distance)
		local _, handleLength
		if EngineFeatureEditPivot then
			_, handleLength = MoveHandleView.getHandleDimensionForScale(
				getScaleForDistance(distance), self._props.Outset)
		else
			_, handleLength = MoveHandleView.getHandleDimensionForScale(getScaleForDistance(distance))
		end
		return handleLength
	end

	-- Establish the bounds on the binary search for a good distance. Using
	-- max(originalLength, newLength) is a bit of a hack.
	-- abs(originalLength - newLength) is the more mathematically appropriate
	-- expression for how much unadjustedDistance might be off by, but it's too
	-- "sharp", and slightly misses including the solution we're looking for
	-- sometimes. Using the larger interval with max works too, it's just doing
	-- slightly more work than it should really have to.
	local originalHandleLength = getHandleLengthForDistance(0)
	local currentHandleLength = getHandleLengthForDistance(unadjustedDistance)
	local handleSizeDifference = math.max(originalHandleLength, currentHandleLength)
	local minPossibleDistance = unadjustedDistance - handleSizeDifference
	local maxPossibleDistance = unadjustedDistance + handleSizeDifference
	local fracAtMin = getHandleFracForDistance(minPossibleDistance)
	local fracAtMax = getHandleFracForDistance(maxPossibleDistance)

	-- Do the binary search
	local iterationCount = 0
	while math.abs(minPossibleDistance - maxPossibleDistance) > 0.0001 and iterationCount < 32 do
		local mid = 0.5 * (minPossibleDistance + maxPossibleDistance)
		local fracAtMid = getHandleFracForDistance(mid)
		if (self._draggingHandleFrac - fracAtMid) * (fracAtMax - fracAtMin) > 0 then
			minPossibleDistance = mid
			fracAtMin = fracAtMid
		else
			maxPossibleDistance = mid
			fracAtMax = fracAtMid
		end
	end

	if not getFFlagHideMoveDraggerWarning() then
		if math.abs(fracAtMin - self._draggingHandleFrac) > 0.001 then
			-- TODO: If you see this, I still got something wrong in this solution,
			-- remove before shipping.
			warn("Failed to solve for movement amount! Wanted:", self._draggingHandleFrac,
				"Got:", fracAtMin)
		end
	end

	return minPossibleDistance
end

function MoveHandles:mouseDrag(mouseRay)
	local hasDistance, distance = self:_getDistanceAlongAxis(mouseRay)
	if not hasDistance then
		return
	end

	if not self._handles[self._draggingHandleId] then
		return
	end

	local delta = self:_solveForAdjustedDistance(distance) - self._startDistance

	-- Apply snapping unconditionally because free axis movement in studio is
	-- implemented as snapping with grid size = 0.001.
	local snappedDelta = snapToGridSize(delta, self._draggerContext:getGridSize())

	-- Let the implementation figure out what global transform can actually be
	-- applied (because there may be collisions / constraints involved)
	local actualGlobalTransform =
		self._implementation:updateDrag(CFrame.new(self._axis * snappedDelta))
	assert(actualGlobalTransform ~= nil, "Did not return a transform from updateDrag.")

	-- Set the new resulting CFrame
	self:_setMidMoveBoundingBox(
		actualGlobalTransform * self._draggingOriginalBoundingBoxCFrame)
end

function MoveHandles:mouseUp(mouseRay)
	self._draggingHandleId = nil
	self._implementation:endDrag()
	self._schema.addUndoWaypoint(self._draggerContext, "Axis Move Selection")
end

function MoveHandles:_updateHandles()
	if self._selectionInfo:isEmpty() then
		self._handles = {}
	else
		for handleId, handleDef in pairs(MoveHandleDefinitions) do
			if EngineFeatureEditPivot then
				local inverseHandleCFrame = handleDef.Offset:Inverse()
				local localSize = inverseHandleCFrame:VectorToWorldSpace(self._boundingBox.Size)
				local offsetDueToBoundingBox = 0.5 * math.abs(localSize.Z)
				local offsetDueToBasisOffset = inverseHandleCFrame:VectorToWorldSpace(self._basisOffset.Position)
				local offsetInHandleSpace =
					CFrame.new(offsetDueToBasisOffset.X, offsetDueToBasisOffset.Y, -offsetDueToBoundingBox)
				local handleBaseCFrame =
					self._boundingBox.CFrame * handleDef.Offset * offsetInHandleSpace
				self._handles[handleId] = {
					OffsetInHandleSpace = offsetInHandleSpace,
					Outset = self._props.Outset,
					Axis = handleBaseCFrame,
					Color = handleDef.Color,
					Scale = self._draggerContext:getHandleScale(handleBaseCFrame.Position),
					AlwaysOnTop = ALWAYS_ON_TOP,
				}
			else
				-- Offset the handle's base position by the size of the bounding
				-- box on that handle's axis.
				local localSize = handleDef.Offset:Inverse():VectorToWorldSpace(self._boundingBox.Size)
				local offsetDueToBoundingBox = 0.5 * math.abs(localSize.Z)
				local handleBaseCFrame =
					self._boundingBox.CFrame *
					handleDef.Offset *
					CFrame.new(0, 0, -offsetDueToBoundingBox)
				self._handles[handleId] = {
					AxisOffset = offsetDueToBoundingBox,
					Axis = handleBaseCFrame,
					Color = handleDef.Color,
					Scale = self._draggerContext:getHandleScale(handleBaseCFrame.Position),
					AlwaysOnTop = ALWAYS_ON_TOP,
				}
			end
		end
	end
end


return MoveHandles