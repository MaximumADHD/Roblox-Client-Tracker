local Plugin = script.Parent.Parent.Parent

local DraggerFramework = Plugin.Packages.DraggerFramework

local Roact = require(Plugin.Packages.Roact)
local Colors = require(Plugin.Packages.DraggerFramework.Utility.Colors)
local MoveHandleView = require(Plugin.Packages.DraggerFramework.Components.MoveHandleView)

local setWorldPivot = require(Plugin.Src.Utility.setWorldPivot)
local computeSnapPointsForInstance = require(Plugin.Src.Utility.computeSnapPointsForInstance)
local SnapPoints = require(Plugin.Src.Components.SnapPoints)
local DraggedPivot = require(DraggerFramework.Components.DraggedPivot)
local classifyInstancePivot = require(Plugin.Src.Utility.classifyInstancePivot)

local MoveHandlesForDisplay = {
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

local RotateHandlesImplementation = {}
RotateHandlesImplementation.__index = RotateHandlesImplementation

function RotateHandlesImplementation.new(draggerContext, analyticsName)
	return setmetatable({
		_draggerContext = draggerContext,
		_analyticsName = analyticsName,
	}, RotateHandlesImplementation)
end

-- Return 0 if dividing by zero
local function divideOrZero(a, b)
	if b == 0 then
		return 0
	else
		return a / b
	end
end

local function vectorDivideOrZero(a, b)
	return Vector3.new(divideOrZero(a.X, b.X), divideOrZero(a.Y, b.Y), divideOrZero(a.Z, b.Z))
end

function RotateHandlesImplementation:_getRelativeLocationInBoundingBox()
	local boundsCFrame, boundsSize
	if self._primaryObject:IsA("BasePart") then
		boundsCFrame = self._primaryObject.CFrame
		boundsSize = self._primaryObject.Size
	elseif self._primaryObject:IsA("Model") then
		boundsCFrame, boundsSize = self._primaryObject:GetBoundingBox()
	else
		error("Bad primary object type `" .. self._primaryObject.ClassName .. "`")
	end

	local pivotInBounds = boundsCFrame:ToObjectSpace(self._initialPivot)
	local position = pivotInBounds.Position
	local rotation = pivotInBounds - position
	return vectorDivideOrZero(position, boundsSize), rotation
end

function RotateHandlesImplementation:_selectedIsActive()
	if self._draggerContext:shouldShowActiveInstanceHighlight() then
		return self._selection[#self._selection] == self._primaryObject
	else
		return false
	end
end

function RotateHandlesImplementation:beginDrag(selection, initialSelectionInfo)
	self._selection = selection
	self._initialPivot = initialSelectionInfo:getBoundingBox()
	self._lastPivot = self._initialPivot
	self._primaryObject = initialSelectionInfo:getPrimaryObject()
	self._snapPoints = computeSnapPointsForInstance(self._primaryObject)
	self._initialRelativePosition, self._initialRelativeRotation = 
		self:_getRelativeLocationInBoundingBox()
end

function RotateHandlesImplementation:updateDrag(globalTransform)
	-- Note: _primaryObject may be nil in the case where we delete an object in
	-- the middle of dragging a handle.
	if not self._primaryObject then
		return globalTransform
	end

	local newPivot = (globalTransform * self._initialPivot):Orthonormalize()
	setWorldPivot(self._primaryObject, newPivot)

	-- Note on the _initialRelativePosition.Magnitude check:
	-- If the pivot is right near the center, just leave it where it is, so
	-- that it doesn't visibly shift slightly as we rotate (which is really
	-- the correct behavior if it's following the center of the bounding
	-- box, but that doesn't look good)
	if self._draggerContext:shouldSnapPivotToGeometry() and self._primaryObject:IsA("Model") and self._initialRelativePosition.Magnitude > 0.05 then
		local boundsCFrame, boundsSize = self._primaryObject:GetBoundingBox()
		local modifiedPivot = boundsCFrame:ToWorldSpace(
			self._initialRelativeRotation + self._initialRelativePosition * boundsSize)
		setWorldPivot(self._primaryObject, modifiedPivot:Orthonormalize())
		self._lastPivot = modifiedPivot
	else
		self._lastPivot = newPivot
	end

	self._snapPoints = computeSnapPointsForInstance(self._primaryObject)
	return globalTransform
end

function RotateHandlesImplementation:endDrag()
	if self._primaryObject then
		self._draggerContext:getAnalytics():sendEvent("setPivot", {
			gridSize = self._draggerContext:getGridSize(),
			rotateIncrement = self._draggerContext:getRotateIncrement(),
			toolName = self._analyticsName,
			handleId = "Rotate",
			pivotType = classifyInstancePivot(self._primaryObject),
		})
	end
end

function RotateHandlesImplementation:getSnapPoints()
	if self._draggerContext:shouldSnapPivotToGeometry() then
		return self._snapPoints
	else
		return nil
	end
end

function RotateHandlesImplementation:render(globalTransform)
	local elements = {}

	local currentPivot = self._lastPivot

	local scale = self._draggerContext:getHandleScale(currentPivot.Position)
	for handleId, definition in pairs(MoveHandlesForDisplay) do
		elements[handleId] = Roact.createElement(MoveHandleView, {
			Axis = currentPivot * definition.Offset,
			Color = definition.Color,
			Outset = 0.5,
			Thin = true,
			Scale = scale,
			AlwaysOnTop = true,
		})
	end

	if self._draggerContext:shouldSnapPivotToGeometry() then
		elements.SnapPoints = Roact.createElement(SnapPoints, {
			Focus = currentPivot.Position,
			SnapPoints = self._snapPoints,
			DraggerContext = self._draggerContext,
		})
		elements.DraggedPivot = Roact.createElement(DraggedPivot, {
			DraggerContext = self._draggerContext,
			CFrame = self._lastPivot,
			IsActive = self:_selectedIsActive(),
		})
	end

	return Roact.createFragment(elements)
end

return RotateHandlesImplementation