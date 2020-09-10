
local Workspace = game:GetService("Workspace")

local DraggerFramework = script.Parent.Parent
local Library = DraggerFramework.Parent.Parent
local Roact = require(Library.Packages.Roact)

local SelectionDot = require(DraggerFramework.Components.SelectionDot)
local Math = require(DraggerFramework.Utility.Math)
local BoundsChangedTracker = require(DraggerFramework.Utility.BoundsChangedTracker)
local DerivedWorldState = require(DraggerFramework.Implementation.DerivedWorldState)

local getFFlagLocalSpaceWidget = require(DraggerFramework.Flags.getFFlagLocalSpaceWidget)

local DraggerToolModel = {}
DraggerToolModel.__index = DraggerToolModel

-- States
local DraggerStateType = require(DraggerFramework.Implementation.DraggerStateType)
local DraggerStates = DraggerFramework.Implementation.DraggerStates
local DraggerState = {
	[DraggerStateType.Ready] = require(DraggerStates.Ready),
	[DraggerStateType.DraggingFaceInstance] = require(DraggerStates.DraggingFaceInstance),
	[DraggerStateType.PendingDraggingParts] = require(DraggerStates.PendingDraggingParts),
	[DraggerStateType.DraggingHandle] = require(DraggerStates.DraggingHandle),
	[DraggerStateType.DraggingParts] = require(DraggerStates.DraggingParts),
	[DraggerStateType.DragSelecting] = require(DraggerStates.DragSelecting),
}

local DEFAULT_MODEL_PROPS = {
	AnalyticsName = "Unknown",
	AllowDragSelect = true,
	AllowFreeformDrag = true,
	ShowLocalSpaceIndicator = false,
	ShowSelectionDot = false,
	UseCollisionsTransparency = true,
	WasAutoSelected = false,
}

function DraggerToolModel.new(modelProps, toolImplementation, draggerContext,
		requestRenderCallback, markViewDirtyCallback, markSelectionDirtyCallback)
	local modelPropsOrDefault = {}
	for prop, default in pairs(DEFAULT_MODEL_PROPS) do
		if modelProps[prop] ~= nil then
			modelPropsOrDefault[prop] = modelProps[prop]
		else
			modelPropsOrDefault[prop] = default
		end
	end

	return setmetatable({
		_toolImplementation = toolImplementation,
		_draggerContext = draggerContext,
		_modelProps = modelPropsOrDefault,
		_requestRenderCallback = requestRenderCallback,
		_markViewDirtyCallback = markViewDirtyCallback,
		_markSelectionDirtyCallback = markSelectionDirtyCallback,
	}, DraggerToolModel)
end

--[[
	Called by the DraggerTool main states to set the mouse cursor.

	To not interfere with other parts of studio which set the mouse cursor,
	we have to only set the cursor when we think it should change. This is the
	abstraction layer that guarantees this.
]]
function DraggerToolModel:setMouseCursor(cursor)
	if self._mouseCursor ~= cursor then
		self._mouseCursor = cursor
		self._draggerContext:setMouseIcon(cursor)
	end
end

--[[
	Called by the main DraggerToolModel code, and the code in individual
	DraggerTool main states in order to transition to a new state.

	The variable arguments are passed as arguments to the constructor of the
	new state object which will be constructed and transitioned to.
]]
function DraggerToolModel:transitionToState(draggerStateType, ...)
	self._stateObject:leave()
	self._mainState = draggerStateType
	self._stateObject = DraggerState[draggerStateType].new(self, ...)
	self._stateObject:enter()
	self:_scheduleRender()
end

function DraggerToolModel:render()
	local selection = self._draggerContext:getSelectionWrapper():Get()

	local coreGuiContent = {}

	-- State specific rendering code
	coreGuiContent.StateSpecificUI = self._stateObject:render()

	-- All states: Render selection dot.
	local showSelectionDot = self:shouldShowSelectionDot() and #selection > 0
	if showSelectionDot then
		local boundingBox = Math.regionFromParts(selection)
		coreGuiContent.SelectionDot = Roact.createElement(SelectionDot, {
			BackgroundColor3 = self._modelProps.SelectionDotColor,
			Position = boundingBox.CFrame.Position,
			Size = self._modelProps.SelectionDotSize,
		})
	end

	return Roact.createElement(Roact.Portal, {
		target = self._draggerContext:getGuiParent(),
	}, coreGuiContent)
end

-- Called every frame on render step
function DraggerToolModel:update()
	if self._draggerContext:isSimulating() then
		-- Must do a view update every frame in run mode to catch stuff
		-- moving under our mouse.
		self._markViewDirtyCallback()

		-- If there's a physically simulated part in the selection then we
		-- have to update the whole selection every frame.
		local isDragging =
			self._mainState == DraggerStateType.DraggingHandle or
			self._mainState == DraggerStateType.DraggingParts
		if not isDragging then
			if self._derivedWorldState:doesSelectionHavePhysics() then
				self._markSelectionDirtyCallback()
			end
		end
	end
end

function DraggerToolModel:doesAllowDragSelect()
	return self._modelProps.AllowDragSelect
end

function DraggerToolModel:doesAllowFreeformDrag()
	return self._modelProps.AllowFreeformDrag
end

if getFFlagLocalSpaceWidget() then
	function DraggerToolModel:shouldShowLocalSpaceIndicator()
		return self._modelProps.ShowLocalSpaceIndicator
	end
end

function DraggerToolModel:shouldShowSelectionDot()
	return self._modelProps.ShowSelectionDot
end

function DraggerToolModel:shouldUseCollisionTransparency()
	return self._modelProps.UseCollisionsTransparency
end

function DraggerToolModel:shouldAlignDraggedObjects()
	return self._draggerContext:shouldAlignDraggedObjects()
end

function DraggerToolModel:_processSelected()
	self._mainState = DraggerStateType.Ready
	self._stateObject = DraggerState[DraggerStateType.Ready].new(self)

	self._mouseCursor = ""
	self._draggerContext:setMouseIcon("")

	self._derivedWorldState = DerivedWorldState.new()

	-- We defer handling part bounds changes to the render step, as the
	-- changes that are happening to the selection may be happening to many
	-- objects in the selection. Without deferring we could end up with
	-- N^2 behavior if the whole selection is being updated (N part bounds
	-- changes x each bounds change requires looking at all N parts in
	-- the selection to calculate the new bounds)
	self._boundsChangedTracker = BoundsChangedTracker.new(function(part)
		self._markSelectionDirtyCallback()
	end)
	self._boundsChangedTracker:install()

	local selectionWrapper = self._draggerContext:getSelectionWrapper()
	selectionWrapper:init()
	self._selectionChangedConnection = selectionWrapper.SelectionChangedByStudio:Connect(function()
		self:_processSelectionChanged()
	end)

	self:_updateSelectionInfo()

	self._stateObject:enter()

	self:_analyticsSessionBegin()
end

function DraggerToolModel:_processDeselected()
	if self._isMouseDown then
		self:_processMouseUp()
	end

	self._draggerContext:getSelectionWrapper():destroy()
	self._boundsChangedTracker:uninstall()

	self._selectionChangedConnection:Disconnect()
	self._selectionChangedConnection = nil

	self:_analyticsSendSession()
end

function DraggerToolModel:_processSelectionChanged()
	self:_updateSelectionInfo()
	self._stateObject:processSelectionChanged()
end

function DraggerToolModel:_processKeyDown(keyCode)
	self._stateObject:processKeyDown(keyCode)
end

function DraggerToolModel:_processMouseDown()
	if self._isMouseDown then
		-- Not ideal code. There are just too many situations where the engine
		-- passes us disbalanced mouseup / mousedown events for us to reliably
		-- handle all of them, so as an escape hatch, handle a mouse up if we
		-- get a mouse down without having gotten the preceeding mouse up.
		self:_processMouseUp()
	end
	self._isMouseDown = true
	self._stateObject:processMouseDown()
end

function DraggerToolModel:_processMouseUp()
	if not self._isMouseDown then
		-- There are various circumstances where the mouse can be down without
		-- us having started an associated drag. The engine has a habit of
		-- sending mismatched mouse up/down events in various rare edge cases.
		return
	end
	self._isMouseDown = false
	self._stateObject:processMouseUp()
end

--[[
	Called when the camera or mouse position changes, i.e., the world position
	currently under the mouse cursor has changed.
]]
function DraggerToolModel:_processViewChanged()
	self._stateObject:processViewChanged()

	-- Derived world state may have changed as a result of the view update, so
	-- we need to manually trigger a re-render here.
	self:_scheduleRender()
end

--[[
	Called when the user sets the size or position of one of the parts we have
	selected, thus requiring an update to the bounding box.
]]
function DraggerToolModel:_processPartBoundsChanged(part)
	-- Unfortunately there's no simple way to incrementally update the bounding
	-- box selection, so we just recalculate it from scratch here by triggering
	-- a selection changed.
	self:_processSelectionChanged()
end

function DraggerToolModel:_updateSelectionInfo()
	self._derivedWorldState:updateSelectionInfo(
		self._draggerContext:getSelectionWrapper():Get(),
		self._draggerContext:isSimulating(),
		self._draggerContext:shouldUseLocalSpace())
	local allAttachments = self._derivedWorldState:getAllSelectedAttachments()
	self._boundsChangedTracker:setAttachments(allAttachments)
	self._boundsChangedTracker:setParts(self._derivedWorldState:getObjectsToTransform())

	self:_scheduleRender()
end

function DraggerToolModel:_processToolboxInitiatedFreeformSelectionDrag()
	-- We didn't get an associated mouse down, so we have to set the mouse
	-- down tracking variable here.
	self._isMouseDown = true

	self:transitionToState(DraggerStateType.DraggingParts, {
		mouseLocation = self._draggerContext:getMouseLocation(),
		basisPoint = Vector3.new(), -- Just drag from the center of the object
		clickPoint = Vector3.new(),
	})
end

function DraggerToolModel:_processToolboxInitiatedFaceDrag(instances)
	-- We didn't get an associated mouse down, so we have to set the mouse
	-- down tracking variable here.
	self._isMouseDown = true

	local connectionToBreak
	if instances[1]:IsA("VideoFrame") then
		local videoFrameContainer = Instance.new("SurfaceGui")
		videoFrameContainer.Enabled = true
		videoFrameContainer.Parent = Workspace
		instances[1].Parent = videoFrameContainer

		-- When we the user drags out of the 3D view, the face instance that was
		-- passed to us will be removed. When that happens we need to also
		-- remove the container we made for it here.
		connectionToBreak = videoFrameContainer.ChildRemoved:Connect(function(instance)
			videoFrameContainer:Destroy()
		end)

		self._draggerContext:getSelectionWrapper():Set({ videoFrameContainer })
		self:_updateSelectionInfo()
	end

	self:transitionToState(DraggerStateType.DraggingFaceInstance, connectionToBreak)
end

function DraggerToolModel:_scheduleRender()
	if self._toolImplementation and self._toolImplementation.update then
		self._toolImplementation:update(self, self._derivedWorldState)
	end

	self._requestRenderCallback()
end

function DraggerToolModel:_analyticsSessionBegin()
	self._selectedAtTime = tick()
	self._sessionAnalytics = {
		freeformDrags = 0,
		handleDrags = 0,
		clickSelects = 0,
		dragSelects = 0,
		dragTilts = 0,
		dragRotates = 0,
		toolName = self._modelProps.AnalyticsName,
		wasAutoSelected = self._modelProps.WasAutoSelected,
	}
	self._draggerContext:getAnalytics():sendEvent("toolSelected", {
		toolName = self._modelProps.AnalyticsName,
		wasAutoSelected = self._modelProps.WasAutoSelected,
	})
	if self._modelProps.WasAutoSelected then
		self._draggerContext:getAnalytics():reportCounter("studioLuaDefaultDraggerSelected")
	else
		self._draggerContext:getAnalytics():reportCounter("studioLua" .. self._modelProps.AnalyticsName .. "DraggerSelected")
	end
end

function DraggerToolModel:_analyticsSendSession()
	local totalTime = tick() - self._selectedAtTime
	self._sessionAnalytics.duration = totalTime
	self._draggerContext:getAnalytics():sendEvent("toolSession", self._sessionAnalytics)
end

function DraggerToolModel:_analyticsSendClick(clickedInstance, didAlterSelection)
	self._draggerContext:getAnalytics():sendEvent("clickedObject", {
		toolName = self._modelProps.AnalyticsName,
		wasAutoSelected = self._modelProps.WasAutoSelected,
		altPressed = self._draggerContext:isAltKeyDown(),
		ctrlPressed = self._draggerContext:isCtrlKeyDown(),
		shiftPressed = self._draggerContext:isShiftKeyDown(),
		clickedAttachment = clickedInstance and clickedInstance:IsA("Attachment"),
		clickedConstraint = clickedInstance and clickedInstance:IsA("Constraint"),
		clickedWeldConstraint = clickedInstance and clickedInstance:IsA("WeldConstraint"),
		clickedNoCollisionConstraint = clickedInstance and clickedInstance:IsA("NoCollisionConstraint"),
		didAlterSelection = didAlterSelection,
	})
	if didAlterSelection then
		self._sessionAnalytics.clickSelects = self._sessionAnalytics.clickSelects + 1
	end
end

function DraggerToolModel:_analyticsRecordFreeformDragBegin(timeToStartDrag)
	self._sessionAnalytics.freeformDrags = self._sessionAnalytics.freeformDrags + 1
	local parts, attachments = self._derivedWorldState:getObjectsToTransform()
	self._dragAnalytics = {
		dragTilts = 0,
		dragRotates = 0,
		partCount = #parts,
		attachmentCount = #attachments,
		timeToStartDrag = timeToStartDrag,
	}
	self._dragStartLocation = nil
	self._draggerContext:getAnalytics():reportStats("studioLuaDraggerDragTime", timeToStartDrag)
end

function DraggerToolModel:_analyticsRecordFreeformDragUpdate(dragTarget)
	if dragTarget then
		self._dragAnalytics.dragTargetType = dragTarget.dragTargetType
		if self._dragStartLocation then
			self._dragAnalytics.dragDistance =
				(dragTarget.mainCFrame.Position - self._dragStartLocation).Magnitude
		else
			self._dragAnalytics.dragDistance = 0
			self._dragStartLocation = dragTarget.mainCFrame.Position
		end
		self._dragAnalytics.distanceToCamera =
			(self._draggerContext:getCameraCFrame().Position - dragTarget.mainCFrame.Position).Magnitude
	else
		self._dragAnalytics.dragTargetType = "Failed"
	end
end

function DraggerToolModel:_analyticsSendFreeformDragged()
	self._dragAnalytics.gridSize = self._draggerContext:getGridSize()
	self._dragAnalytics.toolName = self._modelProps.AnalyticsName
	self._dragAnalytics.wasAutoSelected = self._modelProps.WasAutoSelected
	self._dragAnalytics.joinSurfaces = self._draggerContext:shouldJoinSurfaces()
	self._dragAnalytics.useConstraints = self._draggerContext:areConstraintsEnabled()
	self._draggerContext:getAnalytics():sendEvent("freeformDragged", self._dragAnalytics)
end

function DraggerToolModel:_analyticsSendHandleDragged()
	self._draggerContext:getAnalytics():sendEvent("handleDragged", {
		toolName = self._modelProps.AnalyticsName,
		wasAutoSelected = false, -- For consistency with other events
		gridSize = self._draggerContext:getGridSize(),
		rotateIncrement = self._draggerContext:getRotateIncrement(),
		useLocalSpace = self._draggerContext:shouldUseLocalSpace(),
		joinSurfaces = self._draggerContext:shouldJoinSurfaces(),
		useConstraints = self._draggerContext:areConstraintsEnabled(),
		haveCollisions = self._draggerContext:areCollisionsEnabled(),
	})
end

function DraggerToolModel:_analyticsSendBoxSelect()
	self._draggerContext:getAnalytics():sendEvent("boxSelected", {
		toolName = self._modelProps.AnalyticsName,
		wasAutoSelected = self._modelProps.WasAutoSelected,
		objectCount = #self._draggerContext:getSelectionWrapper():Get(),
		altPressed = self._draggerContext:isAltKeyDown(),
		ctrlPressed = self._draggerContext:isCtrlKeyDown(),
		shiftPressed = self._draggerContext:isShiftKeyDown(),
	})
end

function DraggerToolModel:_analyticsSendFaceInstanceSelected(className)
	self._draggerContext:getAnalytics():sendEvent("faceInstanceSelected", {
		toolName = self._modelProps.AnalyticsName,
		wasAutoSelected = self._modelProps.WasAutoSelected,
		className = className,
	})
end

return DraggerToolModel
