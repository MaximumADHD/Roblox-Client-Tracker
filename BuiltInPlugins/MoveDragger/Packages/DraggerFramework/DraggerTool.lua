--[[
	TODO: provide a high level description of DraggerTool and its properties.
]]

-- Services
local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")
local StudioService = game:GetService("StudioService")

local Framework = script.Parent
local Library = Framework.Parent.Parent
local plugin = Library.Parent
local Roact = require(Library.Packages.Roact)

-- Flags
local getFFlagMinCursorChange = require(Framework.Flags.getFFlagMinCursorChange)
local getFFlagBatchBoundsChanged = require(Framework.Flags.getFFlagBatchBoundsChanged)
local getFFlagHandleCanceledToolboxDrag = require(Framework.Flags.getFFlagHandleCanceledToolboxDrag)
local getFFlagHandleFlakeyMouseEvents = require(Framework.Flags.getFFlagHandleFlakeyMouseEvents)

-- Components
local SelectionDot = require(Framework.Components.SelectionDot)

-- Utilities
local Math = require(Framework.Utility.Math)
local SelectionWrapper = require(Framework.Utility.SelectionWrapper)
local ViewChangeDetector = require(Framework.Utility.ViewChangeDetector)
local BoundsChangedTracker = require(Framework.Utility.BoundsChangedTracker)
local Analytics = require(Framework.Utility.Analytics)
local DerivedWorldState = require(Framework.Implementation.DerivedWorldState)
local HoverTracker = require(Framework.Implementation.HoverTracker)

-- States
local DraggerStateType = require(Framework.Implementation.DraggerStateType)
local DraggerStates = Framework.Implementation.DraggerStates
local DraggerState = {
	[DraggerStateType.Ready] = require(DraggerStates.Ready),
	[DraggerStateType.PendingDraggingParts] = require(DraggerStates.PendingDraggingParts),
	[DraggerStateType.DraggingHandle] = require(DraggerStates.DraggingHandle),
	[DraggerStateType.DraggingParts] = require(DraggerStates.DraggingParts),
	[DraggerStateType.DragSelecting] = require(DraggerStates.DragSelecting),
}

-- Constants
local DRAGGER_UPDATE_BIND_NAME = "DraggerToolViewUpdate"

local DraggerTool = Roact.PureComponent:extend("DraggerTool")

DraggerTool.defaultProps = {
	AllowDragSelect = true,
	AllowFreeformDrag = true,
	ShowSelectionDot = false,
	UseCollisionsTransparency = true,
}

local function areJointsEnabled()
    return Library.Parent:GetJoinMode() ~= Enum.JointCreationMode.None
end

local function isAltKeyDown()
	return UserInputService:IsKeyDown(Enum.KeyCode.LeftAlt) or UserInputService:IsKeyDown(Enum.KeyCode.RightAlt)
end
local function isCtrlKeyDown()
	return UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) or UserInputService:IsKeyDown(Enum.KeyCode.RightControl)
end
local function isShiftKeyDown()
	return UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) or UserInputService:IsKeyDown(Enum.KeyCode.RightShift)
end

function DraggerTool:init()
	local initialState = DraggerState[DraggerStateType.Ready].new()
	self:setState({
		mainState = DraggerStateType.Ready,
		stateObject = initialState,
	})

	self._isMounted = false
	self._isMouseDown = false

	if getFFlagMinCursorChange() then
		self._mouseCursor = ""
		self.props.Mouse.Icon = ""
	end

	self._derivedWorldState = DerivedWorldState.new()

	if getFFlagBatchBoundsChanged() then
		-- We defer handling part bounds changes to the render step, as the
		-- changes that are happening to the selection may be happening to many
		-- objects in the selection. Without deferring we could end up with
		-- N^2 behavior if the whole selection is being updated (N part bounds
		-- changes x each bounds change requires looking at all N parts in
		-- the selection to calculate the new bounds)
		self._selectionBoundsAreDirty = false
		self._boundsChangedTracker = BoundsChangedTracker.new(function(part)
			self._selectionBoundsAreDirty = true
		end)
	else
		self._boundsChangedTracker = BoundsChangedTracker.new(function(part)
			self:_processPartBoundsChanged(part)
		end)
	end

	self:_updateSelectionInfo()

	initialState:enter(self)

	-- We also have to fire off an initial update, since the only update we do
	-- is in willUpdate, which isn't called during mounting.
	if self.props.ToolImplementation and self.props.ToolImplementation.update then
		self.props.ToolImplementation:update(self.state, self._derivedWorldState)
	end
end

function DraggerTool:didMount()
	self._isMounted = true
	local mouse = self.props.Mouse

	self._mouseDownConnection = mouse.Button1Down:Connect(function()
		self:_processMouseDown()
	end)
	self._mouseUpConnection = mouse.Button1Up:Connect(function()
		self:_processMouseUp()
	end)
	self._keyDownConnection = UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
		if input.UserInputType == Enum.UserInputType.Keyboard then
			self:_processKeyDown(input.KeyCode)
		end
	end)

	SelectionWrapper:init()
	self._boundsChangedTracker:install()

	self._selectionChangedConnection = SelectionWrapper.SelectionChangedByStudio:Connect(function()
		self:_processSelectionChanged()
	end)

	self._dragEnterConnection = mouse.DragEnter:Connect(function(instances)
		if #instances > 0 then
			self:_beginToolboxInitiatedFreeformSelectionDrag()
		end
	end)

	local viewChange = ViewChangeDetector.new(mouse)
	local lastUseLocalSpace = StudioService.UseLocalSpace
	RunService:BindToRenderStep(DRAGGER_UPDATE_BIND_NAME, Enum.RenderPriority.First.Value, function()
		if not self._isMounted then
			return
		end

		local shouldUpdateView = false
		local shouldUpdateSelection = false

		if viewChange:poll() then
			shouldUpdateView = true
		end

		if getFFlagBatchBoundsChanged() then
			if self._selectionBoundsAreDirty then
				self._selectionBoundsAreDirty = false
				shouldUpdateSelection = true
			end
		end

		if StudioService.UseLocalSpace ~= lastUseLocalSpace then
			-- Can't use a changed event for this, since Changed doesn't fire
			-- for changes to UseLocalSpace.
			shouldUpdateSelection = true
		end

		if RunService:IsRunning() then
			-- Must do a view update every frame in run mode to catch stuff
			-- moving under our mouse.
			shouldUpdateView = true

			-- If there's a physically simulated part in the selection then we
			-- have to update the whole selection every frame.
			local isDragging =
				self.state.mainState == DraggerStateType.DraggingHandle or
				self.state.mainState == DraggerStateType.DraggingParts
			if not isDragging then
				if self._derivedWorldState:doesSelectionHavePhysics() then
					shouldUpdateSelection = true
				end
			end
		end

		if shouldUpdateSelection then
			self:_processSelectionChanged()
		end
		if shouldUpdateView then
			self:_processViewChanged()
		end

		lastUseLocalSpace = StudioService.UseLocalSpace
	end)

	self:_analyticsSessionBegin()
end

function DraggerTool:willUnmount()
	self._isMounted = false

	if self._isMouseDown then
		self:_processMouseUp()
	end

	self._mouseDownConnection:Disconnect()
	self._mouseDownConnection = nil

	self._mouseUpConnection:Disconnect()
	self._mouseUpConnection = nil

	self._keyDownConnection:Disconnect()
	self._keyDownConnection = nil

	self._dragEnterConnection:Disconnect()
	self._dragEnterConnection = nil

	self._selectionChangedConnection:Disconnect()
	self._selectionChangedConnection = nil
	SelectionWrapper:destroy()
	self._boundsChangedTracker:uninstall()

	RunService:UnbindFromRenderStep(DRAGGER_UPDATE_BIND_NAME)

	self:_analyticsSendSession()
end

function DraggerTool:willUpdate(nextProps, nextState)
	if nextState.mainState ~= self.state.mainState then
		self.state.stateObject:leave(self)
		nextState.stateObject:enter(self)
	end

	if nextState.mainState == DraggerStateType.Ready or nextState.mainState == DraggerStateType.DraggingHandle then
		if nextProps.ToolImplementation and nextProps.ToolImplementation.update then
			nextProps.ToolImplementation:update(nextState, self._derivedWorldState)
		end
	end
end

function DraggerTool:render()
	local selection = SelectionWrapper:Get()

	local coreGuiContent = {}

	-- State specific rendering code
	coreGuiContent.StateSpecificUI = self.state.stateObject:render(self)

	-- All states: Render selection dot.
	local showSelectionDot = self.props.ShowSelectionDot and #selection > 0
	if showSelectionDot then
		local boundingBox = Math.regionFromParts(selection)
		coreGuiContent.SelectionDot = Roact.createElement(SelectionDot, {
			BackgroundColor3 = self.props.SelectionDotColor,
			Position = boundingBox.CFrame.Position,
			Size = self.props.SelectionDotSize,
		})
	end

	return Roact.createElement(Roact.Portal, {
		target = CoreGui
	}, coreGuiContent)
end

--[[
	Called by the DraggerTool main states to set the mouse cursor.

	* To not interfere with other parts of studio which set the mouse cursor,
	  we have to only set the cursor when we think it should change. This is the
	  abstraction layer that guarantees this.
]]
function DraggerTool:setMouseCursor(cursor)
	if self._mouseCursor ~= cursor then
		self._mouseCursor = cursor
		self.props.Mouse.Icon = cursor
	end
end

--[[
	Called by the main DraggerTool code, and the code in individual DraggerTool
	main states in order to transition to a new state.

	* otherState is the additional Roact component state to set other than the
	  mainState during the state transition.

	* The variable arguments are passed as arguments to the constructor of the
	  new state object which will be constructed and transitioned to.
]]
function DraggerTool:transitionToState(otherState, draggerStateType, ...)
	if not self._isMounted then
		return
	end

	otherState.mainState = draggerStateType
	otherState.stateObject = DraggerState[draggerStateType].new(self, ...)
	self:setState(otherState)
end

function DraggerTool:_scheduleRender()
	if self._isMounted then
		self:setState({}) -- Force a rerender
	end
end

function DraggerTool:_processSelectionChanged()
	self:_updateSelectionInfo()
	self.state.stateObject:processSelectionChanged(self)
end

function DraggerTool:_processKeyDown(keyCode)
	self.state.stateObject:processKeyDown(self, keyCode)
end

function DraggerTool:_processMouseDown()
	if getFFlagHandleFlakeyMouseEvents() then
		if self._isMouseDown then
			-- Not ideal code. There are just too many situations where the engine
			-- passes us disbalanced mouseup / mousedown events for us to reliably
			-- handle all of them, so as an escape hatch, handle a mouse up if we
			-- get a mouse down without having gotten the preceeding mouse up.
			self:_processMouseUp()
		end
	else
		assert(not self._isMouseDown)
	end
	self._isMouseDown = true
	self.state.stateObject:processMouseDown(self)
end

function DraggerTool:_processMouseUp()
	if not self._isMouseDown then
		-- There are various circumstances where the mouse can be down without
		-- us having started an associated drag. The engine has a habit of
		-- sending mismatched mouse up/down events in various rare edge cases.
		return
	end
	self._isMouseDown = false
	self.state.stateObject:processMouseUp(self)
end

--[[
	Called when the camera or mouse position changes, i.e., the world position
	currently under the mouse cursor has changed.
]]
function DraggerTool:_processViewChanged()
	self._derivedWorldState:updateView()
	self.state.stateObject:processViewChanged(self)

	-- Derived world state may have changed as a result of the view update, so
	-- we need to manually trigger a re-render here.
	self:_scheduleRender()
end

--[[
	Called when the user sets the size or position of one of the parts we have
	selected, thus requiring an update to the bounding box.
]]
function DraggerTool:_processPartBoundsChanged(part)
	-- Unfortunately there's no simple way to incrementally update the bounding
	-- box selection, so we just recalculate it from scratch here by triggering
	-- a selection changed.
	self:_processSelectionChanged()
end

function DraggerTool:_updateSelectionInfo()
	self._derivedWorldState:updateSelectionInfo()
	local allAttachments = self._derivedWorldState:getAllSelectedAttachments()
	self._boundsChangedTracker:setAttachments(allAttachments)
	self._boundsChangedTracker:setParts(self._derivedWorldState:getObjectsToTransform())

	self:_scheduleRender()
end

function DraggerTool:_beginToolboxInitiatedFreeformSelectionDrag()
	if getFFlagHandleCanceledToolboxDrag() then
		-- We didn't get an associated mouse down, so we have to set the mouse
		-- down tracking variable here.
		self._isMouseDown = true
	end
	self:transitionToState({
		tiltRotate = CFrame.new(),
	}, DraggerStateType.DraggingParts, {
		mouseLocation = UserInputService:GetMouseLocation(),
		basisPoint = Vector3.new(), -- Just drag from the center of the object
		clickPoint = Vector3.new(),
	})
end

function DraggerTool:_analyticsSessionBegin()
	self._selectedAtTime = tick()
	self._sessionAnalytics = {
		freeformDrags = 0,
		handleDrags = 0,
		clickSelects = 0,
		dragSelects = 0,
		dragTilts = 0,
		dragRotates = 0,
		toolName = self.props.AnalyticsName,
	}
	Analytics:sendEvent("toolSelected", {
		toolName = self.props.AnalyticsName,
	})
	Analytics:reportCounter("studioLua"..self.props.AnalyticsName.."DraggerSelected")
end

function DraggerTool:_analyticsSendSession()
	local totalTime = tick() - self._selectedAtTime
	self._sessionAnalytics.duration = totalTime
	Analytics:sendEvent("toolSession", self._sessionAnalytics)
end

function DraggerTool:_analyticsSendClick(clickedInstance, didChangeSelection)
	Analytics:sendEvent("clickedObject", {
		altPressed = isAltKeyDown(),
		ctrlPressed = isCtrlKeyDown(),
		shiftPressed = isShiftKeyDown(),
		clickedAttachment = clickedInstance and clickedInstance:IsA("Attachment"),
		clickedConstraint = clickedInstance and
			(clickedInstance:IsA("Constraint") or clickedInstance:IsA("WeldConstraint")),
		didAlterSelection = didChangeSelection,
	})
	if didChangeSelection then
		self._sessionAnalytics.clickSelects = self._sessionAnalytics.clickSelects + 1
	end
end

function DraggerTool:_analyticsRecordFreeformDragBegin(timeToStartDrag)
	self._sessionAnalytics.freeformDrags = self._sessionAnalytics.freeformDrags + 1
	self._dragAnalytics = {
		dragTilts = 0,
		dragRotates = 0,
		partCount = #self._derivedWorldState:getObjectsToTransform(),
		timeToStartDrag = timeToStartDrag,
	}
	self._dragStartLocation = nil
	Analytics:reportStats("studioLuaDraggerDragTime", timeToStartDrag)
end

function DraggerTool:_analyticsRecordFreeformDragUpdate(dragTarget)
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
			(Workspace.CurrentCamera.CFrame.Position - dragTarget.mainCFrame.Position).Magnitude
	else
		self._dragAnalytics.dragTargetType = "Failed"
	end
end

function DraggerTool:_analyticsSendFreeformDragged()
	self._dragAnalytics.gridSize = StudioService.GridSize
	self._dragAnalytics.toolName = self.props.AnalyticsName
	self._dragAnalytics.joinSurfaces = areJointsEnabled()
	self._dragAnalytics.useConstraints = StudioService.DraggerSolveConstraints
	Analytics:sendEvent("freeformDragged", self._dragAnalytics)
end

function DraggerTool:_analyticsSendHandleDragged()
	Analytics:sendEvent("handleDragged", {
		toolName = self.props.AnalyticsName,
		useLocalSpace = StudioService.UseLocalSpace,
		joinSurfaces = areJointsEnabled(),
		useConstraints = StudioService.DraggerSolveConstraints,
		haveCollisions = plugin.CollisionEnabled,
	})
end

function DraggerTool:_analyticsSendBoxSelect()
	Analytics:sendEvent("boxSelected", {
		toolName = self.props.AnalyticsName,
		objectCount = #SelectionWrapper:Get(),
	})
end

function DraggerTool:_analyticsSendFaceInstanceSelected()
	Analytics:sendEvent("faceInstanceSelected", {
		toolName = self.props.AnalyticsName,
	})
end

return DraggerTool
