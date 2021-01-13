--[[
	A controller than handles display and manipulation of events.
	Accepts input from the Events track and events within it, and
	connects these events to thunks and drag logic.

	Props:
		int StartFrame = beginning frame of timeline range
		int EndFrame = end frame of timeline range
		Vector2 AbsolutePosition = The absolute position of the track.
		Vector2 AbsoluteSize = The absolute size of the track.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = require(Plugin.Packages.Framework)
local DragTarget = Framework.UI.DragListener
local ContextServices = Framework.ContextServices
local KeyboardListener = Framework.UI.KeyboardListener

local Constants = require(Plugin.Src.Util.Constants)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)
local Input = require(Plugin.Src.Util.Input)
local DoubleClickDetector = require(Plugin.Src.Util.DoubleClickDetector)

local Preview = require(Plugin.Src.Util.Preview)
local EventTrack = require(Plugin.Src.Components.EventTrack)
local SelectionBox = require(Plugin.Src.Components.SelectionBox)
local EventActions = require(Plugin.Src.Components.EventActions)

local AddWaypoint = require(Plugin.Src.Thunks.History.AddWaypoint)
local SetEvents = require(Plugin.Src.Thunks.Events.SetEvents)
local SelectEvent = require(Plugin.Src.Thunks.Events.SelectEvent)
local DeselectEvent = require(Plugin.Src.Thunks.Events.DeselectEvent)
local DeleteSelectedEvents = require(Plugin.Src.Thunks.Events.DeleteSelectedEvents)
local MoveSelectedEvents = require(Plugin.Src.Thunks.Events.MoveSelectedEvents)
local SetRightClickContextInfo = require(Plugin.Src.Actions.SetRightClickContextInfo)
local SetEventEditingFrame = require(Plugin.Src.Actions.SetEventEditingFrame)

local SetSelectedEvents = require(Plugin.Src.Actions.SetSelectedEvents)
local SetSelectedKeyframes = require(Plugin.Src.Actions.SetSelectedKeyframes)
local SetIsPlaying = require(Plugin.Src.Actions.SetIsPlaying)

local EditEventsDialog = require(Plugin.Src.Components.EditEventsDialog.EditEventsDialog)

local FFlagAnimEditorFixBackspaceOnMac = require(Plugin.LuaFlags.GetFFlagAnimEditorFixBackspaceOnMac)

local EventsController = Roact.PureComponent:extend("EventsController")

function EventsController:init()
	self.state = {
		dragging = false,
		draggingSelection = nil,
		dragFrame = nil,

		showContextMenu = false,
		eventEditingFrame = nil,
	}

	self.selectDragStart, self.updateSelectDragStart = Roact.createBinding(nil)
	self.selectDragEnd, self.updateSelectDragEnd = Roact.createBinding(nil)

	self.Preview = nil
	self.isMultiSelecting = false
	self.mouseDownOnEvent = false
	self.mouseDownInTimeline = false
	self.doubleClickDetector = DoubleClickDetector.new()

	self.getFrameFromPosition = function(position)
		return TrackUtils.getKeyframeFromPosition(
			position,
			self.props.StartFrame,
			self.props.EndFrame,
			self.props.AbsolutePosition.X + (Constants.TRACK_PADDING / 2),
			self.props.AbsoluteSize.X - Constants.TRACK_PADDING
		)
	end

	self.onEventDragStarted = function(frame)
		local selectedEvents = self.props.SelectedEvents
		local animationData = self.props.AnimationData
		self.Preview = Preview.newEvents(animationData, selectedEvents, frame)
		self:setState({
			dragging = true,
			dragFrame = frame,
		})
	end

	self.onEventDragMoved = function(input)
		local frame = self.getFrameFromPosition(input.Position)
		if self.state.dragFrame ~= frame then
			if self.Preview then
				self.Preview:moveEvents(self.props.AnimationData, self.props.SelectedEvents, frame)
				self:setState({
					dragFrame = frame
				})
			end
		end
	end

	self.onEventDragEnded = function()
		local pivotFrame = self.Preview.pivotFrame
		local newFrame = self.Preview.newFrame
		self.props.MoveSelectedEvents(pivotFrame, newFrame)
		self:setState({
			dragging = false,
			dragFrame = Roact.None,
		})
		self.Preview = nil
	end

	self.onSelectDragStarted = function(input)
		if not self.state.showContextMenu then
			self.updateSelectDragStart(Vector2.new(input.Position.X, Constants.TRACK_HEIGHT))
			self.updateSelectDragEnd(Vector2.new(input.Position.X, Constants.TRACK_HEIGHT))
			self:setState({
				draggingSelection = true,
			})
		end
	end

	self.onSelectDragMoved = function(input)
		self.props.DeselectAllEvents()
		local position = input.Position
		local dragStart = self.selectDragStart:getValue()
		local minPos = Vector2.new(math.min(position.X, dragStart.X), 0)
		local maxPos = Vector2.new(math.max(position.X, dragStart.X), 0)
		-- Determine padding for selection
		local startFrame = self.props.StartFrame
		local endFrame = self.props.EndFrame
		local trackWidth = self.props.AbsoluteSize.X - Constants.TRACK_PADDING
		local timelineScale = trackWidth / (endFrame - startFrame)
		local selectionPadding = Vector2.new(timelineScale / 2, 0)
		-- Find extents of selection
		local minFrame = self.getFrameFromPosition(minPos + selectionPadding)
		local maxFrame = self.getFrameFromPosition(maxPos - selectionPadding)
		for _, frame in ipairs(self.props.AnimationData.Events.Keyframes) do
			if frame >= minFrame and frame <= maxFrame then
				self.props.SelectEvent(frame, true)
			end
		end
		self.updateSelectDragEnd(Vector2.new(position.X, Constants.TRACK_HEIGHT * 2))
	end

	self.onSelectDragEnded = function()
		self:setState({
			draggingSelection = Roact.None,
		})
		self.updateSelectDragStart(nil)
		self.updateSelectDragEnd(nil)
	end

	self.showMenu = function()
		self.props.SetIsPlaying(false)
		self:setState({
			showContextMenu = true,
		})
	end

	self.hideMenu = function()
		self:setState({
			showContextMenu = false,
		})
	end

	self.setEventEditingFrame = function(frame)
		self:setState({
			eventEditingFrame = frame or Roact.None,
		})
	end

	self.setEventsHandler = function(newEvents)
		if self.props.Analytics then
			return self.props.SetEvents(newEvents, self.props.Analytics)
		end
	end
end

function EventsController:handleTimelineInputBegan(input, keysHeld)
	if input.UserInputType == Enum.UserInputType.Keyboard then
		if Input.isMultiSelectKey(input.KeyCode) then
			-- Start multi selecting on ctrl hold
			self.isMultiSelecting = true
		elseif FFlagAnimEditorFixBackspaceOnMac() and Input.isDeleteKey(input.KeyCode) then
			self.props.DeleteSelectedEvents()
		end
	elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
		self.props.DeselectAllEvents()
		self.mouseDownInTimeline = true
		self.onSelectDragStarted(input)
	end
end

function EventsController:handleTimelineInputEnded(input, keysHeld)
	if input.UserInputType == Enum.UserInputType.Keyboard then
		if Input.isMultiSelectKey(input.KeyCode) then
			self.isMultiSelecting = false
		end
	elseif input.UserInputType == Enum.UserInputType.MouseButton2 then
		local frame = self.getFrameFromPosition(input.Position)
		self.props.SetRightClickContextInfo({
			Frame = frame,
		})
		self.props.SelectEvent(frame, false)
		self.showMenu()
	elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
		local frame = self.getFrameFromPosition(input.Position)
		if self.doubleClickDetector:isDoubleClick() then
			self.props.DeselectAllEvents()
			self.props.SelectEvent(frame, false)
			self.props.SetEventEditingFrame(self.getFrameFromPosition(input.Position))
		end
	end
end

function EventsController:handleEventRightClick(frame)
	self.props.SelectEvent(frame, false)
	self.props.SetRightClickContextInfo({
		OnEvent = true,
		Frame = frame,
	})
	self.showMenu()
end

function EventsController:handleEventInputBegan(frame, selected, input)
	-- Select event if not selected
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		self.mouseDownOnEvent = true

		if selected then
			-- Deselect event if it is clicked again when multi-selecting
			if self.isMultiSelecting then
				self.props.DeselectEvent(frame)
			end
		else
			self.props.SelectEvent(frame, self.isMultiSelecting)
		end
	end
end

function EventsController:handleEventInputEnded(frame, selected, input)
	-- Start dragging if the mouse drags outside the event
	if input.UserInputType == Enum.UserInputType.MouseMovement then
		if selected and self.mouseDownOnEvent then
			self.onEventDragStarted(frame)
			self.mouseDownOnEvent = false
		end
	end
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		self.mouseDownOnEvent = false

		-- Double click to edit an event
		if selected and self.doubleClickDetector:isDoubleClick() then
			self.props.DeselectAllEvents()
			self.props.SelectEvent(frame, false)
			self.props.SetEventEditingFrame(frame)
		end
	end
end

--[[
	This sucks, but we have to do it! Rodux won't let us yield
	when RoactRodux gets a changed event from the store updating.
	Unfortunately, creating a PluginGui is a YieldFunction, so
	we have to defer the update to a later time so that Rodux has
	time to update before the yield occurs.
]]
function EventsController:didUpdate()
	local nextProps = self.props
	local prevState = self.state

	if nextProps.EventEditingFrame ~= prevState.eventEditingFrame then
		if nextProps.EventEditingFrame ~= nil then
			-- Have to wait because we are creating a PluginGui dialog
			spawn(function()
				self.setEventEditingFrame(nextProps.EventEditingFrame)
			end)
		else
			-- Don't have to wait if we are deleting the dialog
			self.setEventEditingFrame(nextProps.EventEditingFrame)
		end
	end
end

function EventsController:render()
	local props = self.props
	local state = self.state
	local active = props.Active
	local absolutePosition = props.AbsolutePosition
	local absoluteSize = props.AbsoluteSize
	local animationData = props.AnimationData
	local startFrame = props.StartFrame
	local endFrame = props.EndFrame
	local dragging = state.dragging
	local draggingSelection = state.draggingSelection
	local showContextMenu = state.showContextMenu
	local editingFrame = state.eventEditingFrame

	return Roact.createElement("Frame", {
		LayoutOrder = 0,
		Size = UDim2.new(1, 0, 0, Constants.TRACK_HEIGHT),
		BackgroundTransparency = 1,

		[Roact.Event.InputBegan] = function(_, input)
			if input.UserInputType ~= Enum.UserInputType.Keyboard then
				self:handleTimelineInputBegan(input)
			end
		end,

		[Roact.Event.InputEnded] = function(_, input)
			if input.UserInputType ~= Enum.UserInputType.Keyboard then
				self:handleTimelineInputEnded(input)
			end
		end,
	}, {
		Track = Roact.createElement(EventTrack, {
			Events = animationData.Events,
			SelectedEvents = props.SelectedEvents,
			PreviewEvents = self.Preview and self.Preview.previewEvents,
			EditingFrame = editingFrame,
			Size = UDim2.new(1, 0, 0, Constants.TRACK_HEIGHT),
			Width = absoluteSize.X - Constants.TRACK_PADDING,
			StartFrame = startFrame,
			EndFrame = endFrame,
			ShowBackground = true,
			ZIndex = 1,

			OnEventRightClick = function(frame)
				self:handleEventRightClick(frame)
			end,

			OnEventInputBegan = function(frame, selected, input)
				self:handleEventInputBegan(frame, selected, input)
			end,

			OnEventInputEnded = function(frame, selected, input)
				self:handleEventInputEnded(frame, selected, input)
			end,
		}),

		KeyboardListener = Roact.createElement(KeyboardListener, {
			OnKeyPressed = function(input, keysHeld)
				self:handleTimelineInputBegan(input, keysHeld)
			end,
			OnKeyReleased = function(input)
				self:handleTimelineInputEnded(input)
			end,
		}),

		DragTarget = dragging and Roact.createElement(DragTarget, {
			OnDragMoved = self.onEventDragMoved,
			OnDragEnded = self.onEventDragEnded,
		}),

		MultiSelectBox = draggingSelection and Roact.createElement(SelectionBox, {
			OnDragMoved = self.onSelectDragMoved,
			OnDragEnded = self.onSelectDragEnded,
			SelectionStart = self.selectDragStart,
			SelectionEnd = self.selectDragEnd,
			SourceExtents = Rect.new(absolutePosition, absolutePosition + absoluteSize)
		}),

		EventActions = active and animationData and Roact.createElement(EventActions, {
			ShowMenu = showContextMenu,
			OnMenuOpened = self.hideMenu,
			OnEditEvents = props.SetEventEditingFrame,
		}),

		EditEventsDialog = animationData and editingFrame and Roact.createElement(EditEventsDialog, {
			Events = animationData.Events,
			Frame = editingFrame,
			OnSaved = self.setEventsHandler,
			OnClose = props.SetEventEditingFrame,
		}),
	})
end

local function mapStateToProps(state, props)
	return {
		Active = state.Status.Active,
		SelectedEvents = state.Status.SelectedEvents,
		EventEditingFrame = state.Status.EventEditingFrame,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		SetEvents = function(newEvents, analytics)
			dispatch(AddWaypoint())
			dispatch(SetEvents(newEvents, analytics))
		end,

		SelectEvent = function(frame, multiSelect)
			dispatch(SetSelectedKeyframes({}))
			dispatch(SelectEvent(frame, multiSelect))
		end,

		DeselectEvent = function(frame)
			dispatch(DeselectEvent(frame))
		end,

		DeleteSelectedEvents = function()
			dispatch(AddWaypoint())
			dispatch(DeleteSelectedEvents())
			dispatch(SetRightClickContextInfo({}))
		end,

		MoveSelectedEvents = function(pivot, newFrame)
			dispatch(AddWaypoint())
			dispatch(MoveSelectedEvents(pivot, newFrame))
		end,

		DeselectAllEvents = function()
			dispatch(SetSelectedKeyframes({}))
			dispatch(SetSelectedEvents({}))
		end,

		SetRightClickContextInfo = function(info)
			dispatch(SetRightClickContextInfo(info))
		end,

		SetEventEditingFrame = function(frame)
			dispatch(SetEventEditingFrame(frame))
		end,

		SetIsPlaying = function(isPlaying)
			dispatch(SetIsPlaying(isPlaying))
		end,
	}
end

EventsController = RoactRodux.connect(mapStateToProps,
	mapDispatchToProps)(EventsController)

return EventsController