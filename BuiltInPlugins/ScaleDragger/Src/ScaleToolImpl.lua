--[[
	Scale tool implementation. Responsible for handle state and handle views.
]]

-- Services
local ChangeHistoryService = game:GetService("ChangeHistoryService")

-- Libraries
local Plugin = script.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

-- Dragger Framework
local DraggerFramework = Plugin.Packages.DraggerFramework
local Colors = require(DraggerFramework.Utility.Colors)
local Math = require(DraggerFramework.Utility.Math)
local JointMaker = require(DraggerFramework.Utility.JointMaker)
local getBoundingBoxScale = require(DraggerFramework.Utility.getBoundingBoxScale)

local StandaloneSelectionBox = require(DraggerFramework.Components.StandaloneSelectionBox)

local getFFlagDraggerResizeLimit = require(DraggerFramework.Flags.getFFlagDraggerResizeLimit)

local ScaleHandleView = require(Plugin.Src.ScaleHandleView)

local getFFlagScaleDraggerPartBias = require(DraggerFramework.Flags.getFFlagScaleDraggerPartBias)

local ScaleToolImpl = {}
ScaleToolImpl.__index = ScaleToolImpl

local NormalId = {
	X_AXIS = 1,
	Y_AXIS = 2,
	Z_AXIS = 3,
}

local function directionVector(normalId)
	if normalId == NormalId.X_AXIS then
		return Vector3.new(1, 0, 0)
	elseif normalId == NormalId.Y_AXIS then
		return Vector3.new(0, 1, 0)
	elseif normalId == NormalId.Z_AXIS then
		return Vector3.new(0, 0, 1)
	end
	error("Unexpected normalId: " .. tostring(normalId))
	return Vector3.new()
end

local function getFraction(lastSizeDelta, thisSizeDelta)
	local maxLast = math.max(
		math.abs(lastSizeDelta.X),
		math.abs(lastSizeDelta.Y),
		math.abs(lastSizeDelta.Z))
	local maxThis = math.max(
		math.abs(thisSizeDelta.X),
		math.abs(thisSizeDelta.Y),
		math.abs(thisSizeDelta.Z))
	return maxLast / maxThis
end

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

function ScaleToolImpl.new(draggerContext)
	local self = {}
	self._handles = {}
	self._jointMaker = JointMaker.new()
	self._draggerContext = draggerContext
	return setmetatable(self, ScaleToolImpl)
end

function ScaleToolImpl:update(draggerToolState, derivedWorldState)
	if not self._draggingHandleId then
		-- Don't clobber these fields while we're dragging because we're
		-- updating the bounding box in a smart way given how we're moving the
		-- parts.

		self._partsToResize, self._attachmentsToMove =
			derivedWorldState:getObjectsToTransform()

		-- When we only have one part selected, we're in extrude scaling mode,
		-- which can only be done in local space.
		local shouldForceLocal = (#self._partsToResize == 1)
		local cframe, offset, size = derivedWorldState:getBoundingBox(shouldForceLocal)
		self._boundingBox = {
			Size = size,
			CFrame = cframe * CFrame.new(offset),
		}

		self._originalCFrameMap = derivedWorldState:getOriginalCFrameMap()
	end
	self:_updateHandles()
end

if getFFlagScaleDraggerPartBias() then
	function ScaleToolImpl:shouldBiasTowardsObjects()
		return true
	end
end

function ScaleToolImpl:hitTest(mouseRay, ignoreExtraThreshold)
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
	elseif getFFlagScaleDraggerPartBias() and ignoreExtraThreshold then
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

function ScaleToolImpl:render(hoveredHandleId)
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

		if self._draggerContext:shouldJoinSurfaces() and self._jointPairs then
			local scale = getBoundingBoxScale(self._draggerContext, self._boundingBox.CFrame, self._boundingBox.Size)
			children.JointDisplay = self._jointPairs:renderJoints(scale)
		end
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
	if #self._partsToResize > 1 then
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

function ScaleToolImpl:_recordItemsToFixup(parts)
	self._fixupAttachments = {}
	self._fixupOffsets = {}
	self._fixupScales = {}
	for _, part in ipairs(parts) do
		for _, ch in ipairs(part:GetDescendants()) do
			if ch:IsA("Attachment") then
				self._fixupAttachments[ch] = ch.Position
			elseif ch:IsA("DataModelMesh") then
				self._fixupOffsets[ch] = ch.Offset
				if ch.ClassName == "FileMesh" or
					(ch:IsA("SpecialMesh") and ch.MeshType == Enum.MeshType.FileMesh) then
					self._fixupScales[ch] = ch.Scale
				end
			end
		end
	end
end

function ScaleToolImpl:_applyFixup(scaledBy)
	for ch, position in pairs(self._fixupAttachments) do
		ch.Position = position * scaledBy
	end
	for ch, offset in pairs(self._fixupOffsets) do
		ch.Offset = offset * scaledBy
	end
	for ch, scale in pairs(self._fixupScales) do
		ch.Scale = scale * scaledBy
	end
end

function ScaleToolImpl:mouseDown(mouseRay, handleId)
	self._draggingHandleId = handleId

	if self._handles[handleId] then
		self._handleCFrame = self._handles[handleId].HandleCFrame
		self._originalBoundingBoxCFrame = self._boundingBox.CFrame
		self._originalBoundingBoxSize = self._boundingBox.Size

		local hasDistance, distance = self:_getDistanceAlongAxis(mouseRay)
		assert(hasDistance)
		self._startDistance = distance

		self._originalSizeMap = {}
		for _, part in ipairs(self._partsToResize) do
			self._originalSizeMap[part] = part.Size
		end

		self._lastDeltaSize = Vector3.new(0, 0, 0)
		self._lastGoodScale = Vector3.new(1, 1, 1)
		self._jointMaker:pickUpParts(self._partsToResize)
		self._jointMaker:anchorParts()
		self._jointMaker:breakJointsToOutsiders()
		self._jointMaker:disconnectInternalJoints()

		self:_recordItemsToFixup(self._partsToResize)

		self:_calculateMinimumSize(self._handles[handleId].NormalId)
	end
end

function ScaleToolImpl:mouseDrag(mouseRay)
	assert(self._draggingHandleId, "Missing dragging handle ID.")

	if not self._handles[self._draggingHandleId] then
		return
	end

	local function shouldKeepAspectRatio(part)
		if self._draggerContext:isShiftKeyDown() then
			return true
		end
		if part:IsA("Part") and part.Shape == Enum.PartType.Ball then
			return true
		end
		if part:IsA("UnionOperation") or part:IsA("NegateOperation") then
			return true
		end
		return false
	end

	local hasDistance, distance = self:_getDistanceAlongAxis(mouseRay)
	if not hasDistance then
		return
	end

	local delta = snapToGrid(distance - self._startDistance, self._draggerContext:getGridSize())
	local handleProps = self._handles[self._draggingHandleId]
	local normalId = handleProps.NormalId
	local axis = handleProps.Axis

	local resizeFromCenter = self._draggerContext:isCtrlKeyDown()
	if resizeFromCenter then
		delta = delta * 2
	end

	if #self._partsToResize == 1 then
		local part = self._partsToResize[1]
		local keepAspectRatio = shouldKeepAspectRatio(part)
		self:_resizePart(part, normalId, axis, delta, keepAspectRatio, resizeFromCenter)
	else
		self:_resizeParts(normalId, axis, delta, resizeFromCenter)
	end

	-- Fixup stuff like meshes / constraint lengths
	self:_applyFixup(self._lastGoodScale)
	self._jointMaker:fixupConstraintLengths()

	if self._draggerContext:shouldJoinSurfaces() then
		self._jointPairs = self._jointMaker:computeJointPairs()
	end
end

function ScaleToolImpl:mouseUp(mouseRay)
	if self._handles[self._draggingHandleId] then
		self._originalSizeMap = {}

		if self._jointPairs then
			self._jointPairs:createJoints()
			self._jointPairs = nil
		end
		-- reconnectInternalJointsWithScale is only relevant for multi-part scale,
		-- which has to be uniform on all axis, so we can just use .X here.
		self._jointMaker:reconnectInternalJointsWithScale(self._lastGoodScale.X)
		self._jointMaker:restoreAnchored()
		self._jointMaker:putDownParts()
	end

	self._draggingHandleId = nil

	ChangeHistoryService:SetWaypoint("Scale Parts")
end

--[[
	Find the smallest extents size that assures that all parts are larger
	than the minimum allowed part size.

	Resizing Cases:
	Suppose you have a part 5.5 studs long and a grid snap of 2
	 * You should be able to resize it down to 1.5 (5.5 % 2)
	Suppose you have a part 4 studs long and a grid snap of 2
	 * You should be able to resize it down to 2
	 * You should NOT be able to resize it down to 0 or MIN_PART_SIZE
	   It should stop resizing at 2.
	Suppose you have a part 2.02 studs long and grid snap of 2
	 * You should NOT be able to resize it down to 0.02 (<MIN_PART_SIZE)

	The modulo covers resizing down to smaller than the initial size in
	gridSize increments.
	The ==0 -> use gridSize covers not trying to resize down to zero from an
	even multiple of gridSize.
	The hardMinSize:Max covers the resizing down to less than MIN_PART_SIZE
	but still greater than zero edge case.
]]
function ScaleToolImpl:_calculateMinimumSize(normalId)
	local MIN_PART_SIZE = 0.05
	if #self._partsToResize == 1 then
		local gridSizeValue = self._draggerContext:getGridSize()
		local partSize = self._partsToResize[1].Size
		if getFFlagDraggerResizeLimit() then
			local xmod = partSize.X % gridSizeValue
			local ymod = partSize.Y % gridSizeValue
			local zmod = partSize.Z % gridSizeValue
			local modSize = Vector3.new(
				xmod > 0 and xmod or gridSizeValue,
				ymod > 0 and ymod or gridSizeValue,
				zmod > 0 and zmod or gridSizeValue)

			local hardMinSize = Vector3.new(MIN_PART_SIZE, MIN_PART_SIZE, MIN_PART_SIZE)
			self._minimumSize = hardMinSize:Max(modSize)
		else
			local hardMinSize = Vector3.new(MIN_PART_SIZE, MIN_PART_SIZE, MIN_PART_SIZE)
			local gridSize = Vector3.new(gridSizeValue, gridSizeValue, gridSizeValue)
			local desiredMinSize = gridSize:Min(partSize)
			self._minimumSize = desiredMinSize:Max(hardMinSize)
		end
	else
		local smallest = math.huge
		for _, part in ipairs(self._partsToResize) do
			local size = self._originalSizeMap[part]
			local minLength = math.min(size.X, size.Y, size.Z)
			if minLength < smallest then
				smallest = minLength
				local sizeRatio = minLength / MIN_PART_SIZE
				self._minimumSize = self._originalBoundingBoxSize / sizeRatio
			end
		end

		-- Make sure that the resized normal of the part is at least as
		-- large as the grid size.
		local minSizeComponents =
			{self._minimumSize.X, self._minimumSize.Y, self._minimumSize.Z}
		local sizeRatio = minSizeComponents[normalId] / self._draggerContext:getGridSize()
		if sizeRatio < 1 then
			self._minimumSize = self._minimumSize / sizeRatio
		end

		-- Finally, we CAN still resize down to less than the grid size if
		-- we started out smaller than the grid size.
		self._minimumSize = self._minimumSize:Min(self._originalBoundingBoxSize)
	end
end

function ScaleToolImpl:_getDistanceAlongAxis(mouseRay)
	local axis = self._handleCFrame.LookVector
	return Math.intersectRayRay(self._originalBoundingBoxCFrame.Position, axis, mouseRay.Origin, mouseRay.Direction.Unit)
end

local function computeDeltaSize(originalSize, delta, normalId, keepAspectRatio)
	local sizeComponents = { originalSize.X, originalSize.Y, originalSize.Z }
	local xyz = { 0, 0, 0 }
	xyz[normalId] = delta
	if keepAspectRatio then
		local ratio = delta / sizeComponents[normalId]
		xyz[nextNormalId(normalId)] = sizeComponents[nextNormalId(normalId)] * ratio
		xyz[nextNormalId(nextNormalId(normalId))] = sizeComponents[nextNormalId(nextNormalId(normalId))] * ratio
	end
	return Vector3.new(unpack(xyz))
end

--[[
	Finds the maximum value resizeFunction can be called with (called with a
	fraction between initialFraction and targetFraction) without any of the
	_jointMaker's parts colliding with other parts.
	If includeInitiallyTouching is false then collisions with parts it was
	colliding with to begin with are ignored.
]]
function ScaleToolImpl:_binarySearchForGoodPartSize(
	resizeFunction, initialFraction, targetFraction, includeInitiallyTouching)
	-- Early out, can we resize right to the target?
	resizeFunction(targetFraction)
	local lastIterationHadCollision = self._jointMaker:isColliding(includeInitiallyTouching)
	if not lastIterationHadCollision then
		return
	end

	local collides = 0
	local min = initialFraction
	local max = targetFraction
	for _ = 1, 32 do
		local mid = 0.5 * (min + max)
		resizeFunction(mid)
		lastIterationHadCollision = self._jointMaker:isColliding(includeInitiallyTouching)
		if lastIterationHadCollision then
			collides = collides + 1
			max = mid
		else
			min = mid
		end
	end

	-- Ensure we stop in a non-colliding state
	if lastIterationHadCollision then
		resizeFunction(min)
	end

	return min
end

--[[
	Resize a single part.
]]
function ScaleToolImpl:_resizePart(part, normalId, axis, delta, keepAspectRatio, resizeFromCenter)
	local originalCFrame = self._originalCFrameMap[part]
	local originalSize = self._originalSizeMap[part]

	-- Determine size delta for the part
	local deltaSize = computeDeltaSize(originalSize, delta, normalId, keepAspectRatio)

	local desiredSize = originalSize + deltaSize
	local newSize = desiredSize:Max(self._minimumSize)
	if keepAspectRatio and not newSize:FuzzyEq(desiredSize) then
		return
	end

	-- Now get the actual size delta
	deltaSize = newSize - originalSize
	local deltaPosition = Vector3.new()

	if not resizeFromCenter then
		local direction = directionVector(normalId)
		local rotation = originalCFrame - originalCFrame.Position
		local deltaSizeWorld = rotation * (keepAspectRatio and deltaSize * direction or deltaSize)
		local sign = axis:Dot(direction)
		deltaPosition = (deltaSizeWorld * 0.5 * sign)
	end

	local function doResize(frac)
		self._lastDeltaSize = deltaSize * frac
		part.Size = originalSize + deltaSize * frac
		part.CFrame = originalCFrame + deltaPosition * frac
	end

	if self._draggerContext:areCollisionsEnabled() then
		if not deltaSize:FuzzyEq(Vector3.new()) then
			local initialFraction = getFraction(self._lastDeltaSize, deltaSize)
			local targetFraction = 1.0
			local includeInitiallyTouching = true
			self:_binarySearchForGoodPartSize(doResize,
				initialFraction,
				targetFraction,
				includeInitiallyTouching)
		end
	else
		doResize(1.0)
	end

	self._boundingBox.CFrame = part.CFrame
	self._boundingBox.Size = part.Size
	self._lastGoodScale = part.Size / originalSize
end

--[[
	Resize multiple parts.
]]
function ScaleToolImpl:_resizeParts(normalId, axis, delta, resizeFromCenter)
	local originalCFrame = self._originalBoundingBoxCFrame
	local originalSize = self._originalBoundingBoxSize
	local center = originalCFrame.Position
	local rotation = originalCFrame - center
	assert(originalSize.Magnitude > 0)

	-- Determine size delta for the bounding box. Always maintain aspect ratio
	-- when resizing multiple parts.
	local deltaSize = computeDeltaSize(originalSize, delta, normalId, true)

	local newSize = originalSize + deltaSize
	if newSize.X < self._minimumSize.X or newSize.Y < self._minimumSize.Y or newSize.Z < self._minimumSize.Z then
		newSize = self._minimumSize
	end
	local newDeltaSize = newSize - originalSize
	local newScale = newSize.Magnitude / originalSize.Magnitude

	local centerOffset = Vector3.new()
	if not resizeFromCenter then
		local direction = directionVector(normalId)
		local deltaSizeWorld = rotation * (newDeltaSize * direction)
		local sign = axis:Dot(direction)
		centerOffset = (deltaSizeWorld * 0.5 * sign)
	end

	-- Precalculate the offsets to apply while scaling
	local totalOffsetForPartMap = {}
	for _, part in ipairs(self._partsToResize) do
		local originalPartCFrame = self._originalCFrameMap[part]
		local originalPartPosition = originalPartCFrame.Position
		local offsetFromCenter = originalPartPosition - center
		totalOffsetForPartMap[part] = centerOffset + offsetFromCenter * (newScale - 1)
	end

	local lastFrac = 1
	local function doResize(frac)
		lastFrac = frac
		local scale = 1 + frac * (newScale - 1)
		self._lastGoodScale = Vector3.new(scale, scale, scale)
		for part, totalOffset in pairs(totalOffsetForPartMap) do
			part.CFrame = self._originalCFrameMap[part] + totalOffset * frac
			part.Size = self._originalSizeMap[part] * self._lastGoodScale
		end
	end

	local isUnitScale = math.abs(newScale - 1) < 0.00001
	if self._draggerContext:areCollisionsEnabled() and not isUnitScale then
		local includeInitiallyTouching = true
		local initialFraction = (self._lastGoodScale.X - 1) / (newScale - 1)
		local targetFraction = 1.0
		self:_binarySearchForGoodPartSize(doResize,
			initialFraction,
			targetFraction,
			includeInitiallyTouching)
	else
		doResize(1.0)
	end

	-- Update bounding box
	self._boundingBox.CFrame = originalCFrame + lastFrac * centerOffset
	self._boundingBox.Size = originalSize * self._lastGoodScale
end

function ScaleToolImpl:_updateHandles()
	if not self._partsToResize then
		return
	end

	if #self._partsToResize == 0 then
		self._handles = {}
	else
		for handleId, handleDefinition in pairs(ScaleHandleDefinitions) do
			-- Offset the handle's base position by the size of the bounding
			-- box on that handle's axis.
			local offset = handleDefinition.Offset
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

return ScaleToolImpl
