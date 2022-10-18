local Workspace = game:GetService("Workspace")

local Plugin = script.Parent.Parent.Parent
local Packages = Plugin.Packages
local DraggerFramework = Packages.DraggerFramework

local Roact = require(Packages.Roact)

local DragHelper = require(DraggerFramework.Utility.DragHelper)
local Colors = require(DraggerFramework.Utility.Colors)
local MoveHandleView = require(DraggerFramework.Components.MoveHandleView)

local setWorldPivot = require(Plugin.Src.Utility.setWorldPivot)
local computeSnapPointsForInstance = require(Plugin.Src.Utility.computeSnapPointsForInstance)
local SnapPoints = require(Plugin.Src.Components.SnapPoints)
local DraggedPivot = require(DraggerFramework.Components.DraggedPivot)
local classifyInstancePivot = require(Plugin.Src.Utility.classifyInstancePivot)

local ZERO_VECTOR = Vector3.new()

local MoveHandleDefinitions = {
	MinusZ = {
		Offset = CFrame.fromMatrix(ZERO_VECTOR, Vector3.new(1, 0, 0), Vector3.new(0, 1, 0)),
		Color = Colors.Z_AXIS,
	},
	PlusZ = {
		Offset = CFrame.fromMatrix(ZERO_VECTOR, Vector3.new(1, 0, 0), Vector3.new(0, -1, 0)),
		Color = Colors.Z_AXIS,
	},
	MinusY = {
		Offset = CFrame.fromMatrix(ZERO_VECTOR, Vector3.new(0, 0, 1), Vector3.new(1, 0, 0)),
		Color = Colors.Y_AXIS,
	},
	PlusY = {
		Offset = CFrame.fromMatrix(ZERO_VECTOR, Vector3.new(0, 0, 1), Vector3.new(-1, 0, 0)),
		Color = Colors.Y_AXIS,
	},
	MinusX = {
		Offset = CFrame.fromMatrix(ZERO_VECTOR, Vector3.new(0, 1, 0), Vector3.new(0, 0, 1)),
		Color = Colors.X_AXIS,
	},
	PlusX = {
		Offset = CFrame.fromMatrix(ZERO_VECTOR, Vector3.new(0, 1, 0), Vector3.new(0, 0, -1)),
		Color = Colors.X_AXIS,
	},
}

local FreeformDragger = {}
FreeformDragger.__index = FreeformDragger

function FreeformDragger.new(draggerContext, draggerToolModel, dragInfo)
	local self = setmetatable({
		_draggerContext = draggerContext,
		_draggerToolModel = draggerToolModel,
		_dragInfo = dragInfo,
		_snapPoints = {},

		_originalPivot = dragInfo.ClickedSelectable:GetPivot(),
		_tiltRotate = CFrame.new(),
	}, FreeformDragger)
	-- Use the clicked object as the initial snap, so that even if the mouse
	-- is not actually hovering over any of the geometry of the selectable,
	-- we will still get to snap to its bounds.
	self._snapPoints = computeSnapPointsForInstance(dragInfo.ClickedSelectable)
	self._pivotOwner = dragInfo.ClickedSelectable
	self._originalPivotSnapPoints = self._snapPoints
	self:update()
	return self
end

function FreeformDragger:_selectedIsActive()
	if self._draggerContext:shouldShowActiveInstanceHighlight() then
		local activeInstance = self._draggerToolModel:getSelectionWrapper():getActiveSelectable()
		return self._pivotOwner == activeInstance
	else
		return false
	end
end

function FreeformDragger:render()
	-- When no drag target, there's nothing to render
	if self._lastDragTarget == nil then
		return
	end

	local adornments = {}

	for id, handleDefinition in pairs(MoveHandleDefinitions) do
		local handleBaseCFrame = self._lastDragTarget.mainCFrame * handleDefinition.Offset
		adornments[id] = Roact.createElement(MoveHandleView, {
			Axis = handleBaseCFrame,
			Color = handleDefinition.Color,
			Outset = 0.5,
			Scale = self._draggerContext:getHandleScale(handleBaseCFrame.Position),
			AlwaysOnTop = true,
			Thin = true,
		})
	end

	adornments.DraggedPivot = Roact.createElement(DraggedPivot, {
		DraggerContext = self._draggerContext,
		CFrame = self._lastDragTarget.mainCFrame,
		IsActive = self:_selectedIsActive(),
	})

	if self._draggerContext:shouldSnapPivotToGeometry() and self._snapPoints then
		adornments.SnapPoints = Roact.createElement(SnapPoints, {
			Focus = self._lastDragTarget.mainCFrame.Position,
			SnapPoints = self._snapPoints,
			DraggerContext = self._draggerContext,
		})
	end

	return Roact.createFragment(adornments)
end

function FreeformDragger:rotate(axis)
	local mainCFrame = self._originalPivot
	local lastTargetMatrix
	if self._lastDragTarget then
		lastTargetMatrix = self._lastDragTarget.targetMatrix
	end

	local shouldAlignDraggedObjects = true
	self._tiltRotate = DragHelper.updateTiltRotate(
		self._draggerToolModel._draggerContext:getCameraCFrame(),
		self._draggerToolModel._draggerContext:getMouseRay(),
		{},
		mainCFrame,
		lastTargetMatrix,
		self._tiltRotate,
		axis,
		shouldAlignDraggedObjects
	)
end

function FreeformDragger:_updateNoSnap()
	local lastTargetMatrix = nil
	if self._lastDragTarget then
		lastTargetMatrix = self._lastDragTarget.targetMatrix
	end

	local function snapFunction(distance)
		return self._draggerContext:snapToGridSize(distance)
	end

	local shouldAlignDraggedObjects = true
	local dragTarget = DragHelper.getDragTarget(
		self._draggerToolModel._draggerContext:getMouseRay(),
		snapFunction,
		ZERO_VECTOR,
		{},
		self._originalPivot,
		ZERO_VECTOR,
		ZERO_VECTOR,
		ZERO_VECTOR,
		self._tiltRotate,
		lastTargetMatrix,
		shouldAlignDraggedObjects
	)

	if dragTarget then
		self._lastDragTarget = dragTarget
		setWorldPivot(self._dragInfo.ClickedSelectable, dragTarget.mainCFrame)
	end
end

function FreeformDragger:_recomputeSnapPoints()
	local ray = self._draggerContext:getMouseRay()

	local draggerSchema = self._draggerToolModel:getSchema()
	local selection = self._draggerToolModel:getSelectionWrapper():get()
	-- Find the instance under the mouse to use as the snapping target.
	-- If the instance is a descendant of a Model the Model is returned,
	-- unless alt/option is held in which case the instance under the mouse
	-- is returned.
	-- Pass selectSubPartShouldFavorSelection as true to ensure that when
	-- dragging an instance's pivot, it is possible to snap to the instance
	-- even when it is covered by another object in the scene by holding
	-- alt/option.
	local selectSubPartShouldFavorSelection = true
	local useBoundsOf =
		draggerSchema.getMouseTarget(self._draggerContext, ray, selection, selectSubPartShouldFavorSelection)

	if useBoundsOf then
		if useBoundsOf == self._pivotOwner then
			self._snapPoints = self._originalPivotSnapPoints
		elseif useBoundsOf ~= Workspace.Terrain then
			self._snapPoints = computeSnapPointsForInstance(useBoundsOf)
		end
	end
end

function FreeformDragger:_snapToSnapPoints()
	-- not _snapPoints will be the case when we drag onto a Tool or Constraint.
	if not self._snapPoints then
		return
	end

	local mouseLocation = self._draggerContext:getMouseLocation()

	local closestSnap = nil
	local closestDistance = math.huge
	for _, snapPoint in ipairs(self._snapPoints) do
		local screenPosition, onScreen = self._draggerContext:worldToViewportPoint(snapPoint.Position)
		if onScreen then
			local screenLocation = Vector2.new(screenPosition.X, screenPosition.Y)
			local distance = (screenLocation - mouseLocation).Magnitude
			if distance < closestDistance then
				closestDistance = distance
				closestSnap = snapPoint
			end
		end
	end

	local target = closestSnap or self._originalPivot
	self._lastDragTarget = {
		mainCFrame = target,
	}
	setWorldPivot(self._dragInfo.ClickedSelectable, target)
end

function FreeformDragger:_updateSnap()
	self:_recomputeSnapPoints()
	self:_snapToSnapPoints()
end

function FreeformDragger:update()
	if self._draggerContext:shouldSnapPivotToGeometry() then
		self:_updateSnap()
	else
		self:_updateNoSnap()
	end
end

function FreeformDragger:destroy()
	self._draggerContext:getAnalytics():sendEvent("setPivot", {
		gridSize = self._draggerContext:getGridSize(),
		rotateIncrement = self._draggerContext:getRotateIncrement(),
		handleId = self._dragInfo.HandleId,
		pivotType = classifyInstancePivot(self._dragInfo.ClickedSelectable),
	})
end

return FreeformDragger
