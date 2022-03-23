--!strict
--[[
	A controller than handles curves manipulation events in the Curve Editor.
	Accepts input from the Canvas itself and keyframes within it, and
	connects these events to thunks and drag logic.

	Properties:
		EndTick: End tick of the timeline range (TODO: Pass HorizontalScroll/HorizontalZoom instead)
		Playhead: Position (in ticks) of the scrubber
		Position: Position of this component
		ShowAsSeconds: Whether timestamps should be displayed as seconds:frame, or frame
		ShowEvents: Whether the events bar should be displayed
		Size: Size of this component
		StartTick: Beginning tick of the timeline range (TODO: Pass HorizontalScroll/HorizontalZoom instead)
		TrackPadding: Padding used around the Canvas (and filled by the the vertical ruler on the right side)
		VerticalScroll: Vertical scroll offset
		VerticalZoom: Vertical zoom factor
		ZIndex: Display index of this component
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Cryo = require(Plugin.Packages.Cryo)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local KeyboardListener = Framework.UI.KeyboardListener
local DragTarget = Framework.UI.DragListener
local THEME_REFACTOR = Framework.Util.RefactorFlags.THEME_REFACTOR

local AnimationData = require(Plugin.Src.Util.AnimationData)
local Constants = require(Plugin.Src.Util.Constants)
local DragContext = require(Plugin.Src.Util.DragContext)
local Input = require(Plugin.Src.Util.Input)
local isEmpty = require(Plugin.Src.Util.isEmpty)
local KeyframeUtils = require(Plugin.Src.Util.KeyframeUtils)
local StringUtils = require(Plugin.Src.Util.StringUtils)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)

local Pause = require(Plugin.Src.Actions.Pause)
local SetRightClickContextInfo = require(Plugin.Src.Actions.SetRightClickContextInfo)
local SetSelectedEvents = require(Plugin.Src.Actions.SetSelectedEvents)
local SetSelectedKeyframes = require(Plugin.Src.Actions.SetSelectedKeyframes)

local CurveCanvas = require(Plugin.Src.Components.Curves.CurveCanvas)
local KeyframeActions = require(Plugin.Src.Components.Curves.KeyframeActions)
local TangentActions =require(Plugin.Src.Components.Curves.TangentActions)
local EventsController = require(Plugin.Src.Components.EventsController)
local Scale = require(Plugin.Src.Components.Curves.Scale)
local ScaleControls = require(Plugin.Src.Components.ScaleControls.ScaleControls)
local SelectionBox = require(Plugin.Src.Components.SelectionBox)
local TextEntryPrompt = require(Plugin.Src.Components.TextEntryPrompt)

local AddWaypoint = require(Plugin.Src.Thunks.History.AddWaypoint)
local DeleteSelectedKeyframes = require(Plugin.Src.Thunks.Selection.DeleteSelectedKeyframes)
local DeselectKeyframe = require(Plugin.Src.Thunks.Selection.DeselectKeyframe)
local GenerateCurve = require(Plugin.Src.Thunks.Selection.GenerateCurve)
local MoveSelectedKeyframes = require(Plugin.Src.Thunks.Selection.MoveSelectedKeyframes)
local ScaleSelectedKeyframes = require(Plugin.Src.Thunks.Selection.ScaleSelectedKeyframes)
local SelectKeyframeRange = require(Plugin.Src.Thunks.Selection.SelectKeyframeRange)
local SetKeyframeTangent = require(Plugin.Src.Thunks.SetKeyframeTangent)
local SetSelectedKeyframeData = require(Plugin.Src.Thunks.Selection.SetSelectedKeyframeData)

local CurveEditorController = Roact.Component:extend("CurveEditorController")

export type Props = {
	-- State/Context
	Active: boolean,
	Analytics: any,
	AnimationData: any,
	FrameRate: number,
	Localization: any,
	SelectedKeyframes: any,
	SelectedTracks: any,
	SnapMode: string,
	Stylizer: any,
	Theme: any,

	-- Actions/Thunks
	AddWaypoint: () -> (),
	DeleteSelectedKeyframes: (any) -> (),
	DeselectAllKeyframes: () -> (),
	DeselectKeyframe: (string, string, number) -> (),
	GenerateCurve: (Enum.KeyInterpolationMode, Enum.KeyInterpolationMode) -> (),
	Pause: () -> (),
	ScaleSelectedKeyframes: (number, number, any) -> (),
	SelectKeyframeRange: (string, {string}, number, number, boolean) -> (),
	SetKeyframeTangent: (string, {string}, number, string, number) -> (),
	SetSelectedKeyframes: (any) -> (),
	SetSelectedKeyframeData: (any) -> (),

	-- Properties
	EndTick: number,
	Playhead: number,
	Position: UDim2?,
	ShowAsSeconds: boolean,
	ShowEvents: boolean,
	Size: UDim2?,
	StartTick: number,
	TrackPadding: number,
	VerticalScroll: number,
	VerticalZoom: number,
	ZIndex: number?,
}

type State = {
	AbsolutePosition: Vector2,
	AbsoluteSize: Vector2,
	CanvasSize: Vector2,
	ChangingDuration: boolean,
	Dragging: boolean,
	DraggingScale: boolean,
	DraggingSelection: boolean,
	DragTick: number,
	HasDragWaypoint: boolean,
	ShowKeyframeMenu: boolean,
	ShowTangentMenu: boolean,
}

function CurveEditorController:init()
	self.state = {
		AbsolutePosition = Vector2.new(),
		AbsoluteSize = Vector2.new(),
		CanvasSize = Vector2.new(),
		ChangingDuration = false,
		Dragging = false,
		DraggingScale = false,
		DraggingSelection = false,
		DragTick = false,
		HasDragWaypoint = false,
		ShowKeyframeMenu = false,
		ShotTangentMenu = false,
	}

	self.isMounted = false
	self.dragContext = nil
	self.isMultiSelecting = false
	self.dragMode = nil
	self.mouseDown = false
	self.mouseDownInCanvas = false
	self.tracks = {}

	self.selectDragStart, self.updateSelectDragStart = Roact.createBinding(nil)
	self.selectDragEnd, self.updateSelectDragEnd = Roact.createBinding(nil)

	if self.props.AnimationData then
		self:updateTracks(self.props)
	end

	self.recalculateExtents = function(rbx: any): ()
		self:setState({
			AbsoluteSize = rbx.AbsoluteSize,
			CanvasSize = rbx.AbsoluteSize - Vector2.new(self.props.TrackPadding, 0),
			AbsolutePosition = rbx.AbsolutePosition,
		})
	end

	self.onClearTangentsSelected = function(): ()
		local newData = {
			LeftSlope = Cryo.None,
			RightSlope = Cryo.None,
		}
		self.props.SetSelectedKeyframeData(newData)
	end

	self.setChangingDuration = function(changing: boolean?): ()
		self:setState({
			ChangingDuration = changing or false,
		})
	end

	self.onChangeDuration = function(): ()
		spawn(function()
			self.setChangingDuration(true)
		end)
	end

	self.showKeyframeMenu = function(): ()
		self.props.Pause()
		self:setState({
			ShowKeyframeMenu = true,
			ShowTangentMenu = false,
		})
	end

	self.hideKeyframeMenu = function(): ()
		self:setState({
			ShowKeyframeMenu = false,
		})
	end

	self.showTangentMenu = function(): ()
		self.props.Pause()
		self:setState({
			ShowKeyframeMenu = false,
			ShowTangentMenu = true,
		})
	end

	self.hideTangentMenu = function(): ()
		self:setState({
			ShowTangentMenu = false,
		})
	end

	self.onInterpolationSelected = function(interpolationMode: Enum.KeyInterpolationMode): ()
		local newData = {
			InterpolationMode = interpolationMode,
		}
		self.props.SetSelectedKeyframeData(newData)
	end

	self.toCurveSpace = function(position: Vector2): Vector2
		local props = self.props

		local minValue, maxValue = self.minValue, self.maxValue
		local scroll, zoom = props.VerticalScroll, props.VerticalZoom

		zoom = math.min(zoom, 0.99)
		local zoomFactor = 1 / (1 - zoom)
		local x, y = position.X, position.Y
		x = x - self.state.AbsolutePosition.X - (self.props.TrackPadding / 2)
		y = y - self.state.AbsolutePosition.Y

		x = props.StartTick + x * (props.EndTick - props.StartTick) / self.state.CanvasSize.X
		y = maxValue - ((maxValue - minValue) * ((scroll * zoom) + (y - (self.state.CanvasSize.Y * Constants.CURVE_CANVAS_PADDING)) / (self.state.CanvasSize.Y * (1 - 2 * Constants.CURVE_CANVAS_PADDING) * zoomFactor)))
		return Vector2.new(x, y)
	end

	self.setSelectedKeyframeDuration = function(textInput: string): ()
		self.setChangingDuration()
		local newLength = StringUtils.parseTime(textInput, self.props.FrameRate)
		if newLength ~= nil then
			local earliest, latest = AnimationData.getSelectionBounds(self.props.AnimationData, self.props.SelectedKeyframes)
			local currentLength = latest - earliest
			local scale = newLength / currentLength
			self.props.ScaleSelectedKeyframes(earliest, scale)
		end
	end

	self.addDragWaypoint = function(): ()
		if not self.state.HasDragWaypoint then
			self.props.AddWaypoint()
			self:setState({
				HasDragWaypoint = true
			})
		end
	end

	self.onScaleHandleDragStarted = function(tck: number): ()
		local selectedKeyframes = self.props.SelectedKeyframes
		local animationData = self.props.AnimationData
		self.dragContext = DragContext.new(animationData, selectedKeyframes, tck, nil)
		self:setState({
			DraggingScale = true,
			DragTick = tck,
			HasDragWaypoint = false
		})
	end

	self.onScaleHandleDragMoved = function(input: any)
		local position = self.toCurveSpace(input.Position)
		local tck = KeyframeUtils.getNearestTick(position.X)

		if self.props.SnapMode ~= Constants.SNAP_MODES.None then
			tck = KeyframeUtils.getNearestFrame(tck, self.props.FrameRate)
		end

		if self.state.DragTick ~= tck and self.dragContext then
			self.addDragWaypoint()
			self.dragContext:scaleKeyframes(tck, self.props.StartTick)
			self.props.ScaleSelectedKeyframes(self.dragContext.pivotTick, self.dragContext.scale, self.dragContext)
			self:setState({
				DragTick = tck
			})
		end
	end

	self.onScaleHandleDragEnded = function(): ()
		self.dragContext = nil
		self:setState({
			DraggingScale = false,
			DragTick = Roact.None,
			HasDragWaypoint = false,
		})
	end

	self.onSelectDragStarted = function(input: any): ()
		if not self.state.ShowKeyframeMenu and not self.state.ShotTangentMenu then
			self.updateSelectDragStart(input.Position)
			self.updateSelectDragEnd(input.Position)
			self:setState({
				DraggingSelection = true,
			})
		end
	end

	self.onSetTangent = function(instanceName: string, path: {string}, tck: number, side: string, slope: number): ()
		self.props.SetKeyframeTangent(instanceName, path, tck, side, slope or Cryo.None)
	end

	self.onSelectDragMoved = function(input: any): ()
		local props = self.props
		local position = input.Position
		self.updateSelectDragEnd(position)
		local dragStart = self.selectDragStart:getValue()

		-- Find min and max times/values of the selected area. Note that Y is flipped, as a higher Y position means a lower value.
		local minPos = self.toCurveSpace(Vector2.new(math.min(position.X, dragStart.X), math.max(position.Y, dragStart.Y)))
		local maxPos = self.toCurveSpace(Vector2.new(math.max(position.X, dragStart.X), math.min(position.Y, dragStart.Y)))

		type Component = {
			Selection: {[number]: boolean}?,
			Components: {[string]: Component}?
		}
		local selection: {[string]: {[string]: Component}} = {}

		for _, track in ipairs(self.tracks) do
			local instance = track.Instance
			for tck, data in pairs(track.Data) do
				local value = data.Value
				if tck >= minPos.X and tck <= maxPos.X and value >= minPos.Y and value <= maxPos.Y then
					if not selection[instance] then
						selection[instance] = {}
					end

					local currentComponentArray: {[string]: Component}? = selection[instance]
					local currentComponent: Component? = nil

					for _, pathPart in ipairs(track.Path) do
						if currentComponent then
							currentComponent.Components = currentComponent.Components or {}
							currentComponentArray = currentComponent.Components
						end

						if currentComponentArray then
							currentComponentArray[pathPart] = currentComponentArray[pathPart] or {}
							currentComponent = currentComponentArray[pathPart]
						end
					end

					if currentComponent then
						if currentComponent.Selection then
							currentComponent.Selection[tck] = true
						else
							currentComponent.Selection = {[tck] = true}
						end
					end
				end
			end
		end

		props.SetSelectedKeyframes(selection)
	end

	self.onSelectDragEnded = function(): ()
		self:setState({
			DraggingSelection = Roact.None,
		})
		self.updateSelectDragStart(nil)
		self.updateSelectDragEnd(nil)
	end

	self.onKeyframeDragStarted = function(tck: number, value: number): ()
		local selectedKeyframes = self.props.SelectedKeyframes
		local animationData = self.props.AnimationData

		self.dragContext = DragContext.new(animationData, selectedKeyframes, tck, value)

		self:setState({
			Dragging = true,
			DragTick = tck,
			HasDragWaypoint = false,
		})
	end

	self.onTangentDragStarted = function(instanceName: string, path: {string}, tck: number, side: string): ()
		local animationData = self.props.AnimationData

		self.dragContext = DragContext.newTangentContext(animationData, instanceName, path, tck, side)

		self:setState({
			Dragging = true,
			DragTick = tck,
			HasDragWaypoint = false,
		})
	end

	self.onDragMoved = function(input: any): ()
		local dragContext = self.dragContext

		if not dragContext then
			return
		end

		local curvePos = self.toCurveSpace(input.Position)
		local tck, value = curvePos.X, curvePos.y

		if dragContext.dragMode == Constants.DRAG_MODE.Keyframe then
			tck = KeyframeUtils.getNearestTick(tck)
			if self.props.SnapMode ~= Constants.SNAP_MODES.None then
				tck = KeyframeUtils.getNearestFrame(tck, self.props.FrameRate)
			end

			if tck ~= dragContext.newTick or value ~= dragContext.newValue then
				self.addDragWaypoint()
				dragContext:moveKeyframes(tck, value)
				self.props.MoveSelectedKeyframes(self.dragContext.pivotTick, self.dragContext.newTick, self.dragContext.pivotValue, self.dragContext.newValue, self.dragContext)
				self:setState({
					DragTick = tck
				})
			end
		elseif dragContext.dragMode == Constants.DRAG_MODE.Tangent then
			if (dragContext.side == Constants.SLOPES.Left and tck < dragContext.tck) or
				(dragContext.side == Constants.SLOPES.Right and tck > dragContext.tck) then
				local slope = (value - dragContext.value) / (tck - dragContext.tck)
				self.addDragWaypoint()
				self.props.SetKeyframeTangent(dragContext.instance, dragContext.path, dragContext.tck, dragContext.side, slope)
			end
		end
	end

	self.onDragEnded = function(): ()
		self.mouseDown = false
		self.dragContext = nil
		self:setState({
			Dragging = false,
			DragTick = Roact.None,
			HasDragWaypoint = false,
		})
	end

	self.handleKeyframeRightClick = function(instanceName: string, path: {string}, tck: number): ()
		if isEmpty(self.props.SelectedKeyframes) then
			self.props.SelectKeyframeRange(instanceName, path, tck, tck, false)
		end
		self.showKeyframeMenu()
	end

	self.handleKeyframeInputBegan = function(instanceName: string, path: {string}, tck: number, selected: boolean, input: any): ()
		-- Select keyframe if not selected
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			self.mouseDown = true

			if selected then
				-- Deselect keyframe if it is clicked again when multi-selecting
				if self.isMultiSelecting then
					self.props.DeselectKeyframe(instanceName, path, tck)
				end
			else
				self.props.SelectKeyframeRange(instanceName, path, tck, tck, self.isMultiSelecting)
			end
		end
	end

	self.handleKeyframeInputEnded = function(tck: number, value: number, selected: boolean, input: any): ()
		-- Start dragging if the mouse drags outside the keyframe
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			if selected and self.mouseDown then
				self.onKeyframeDragStarted(tck, value)
				self.onDragMoved(input)
				self.mouseDown = false
			end
		end

		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			self.mouseDown = false
		end
	end

	self.handleTangentRightClick = function(instanceName: string, path: {string}, tck: number, side: string): ()
		self.props.SetRightClickContextInfo({
			InstanceName = instanceName,
			Path = path,
			Tick = tck,
			Side = side
		})
		self.showTangentMenu()
	end

	self.handleTangentInputBegan = function(input: any): ()
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			self.mouseDown = true
		end
	end

	self.handleTangentInputEnded = function(instanceName: string, path: {string}, tck: number, side: string, input: any): ()
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			if self.mouseDown then
				self.onTangentDragStarted(instanceName, path, tck, side)
				self.onDragMoved(input)
				self.mouseDown = false
			end
		end

		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			self.mouseDown = false
		end
	end
end

function CurveEditorController:updateCanvasExtents(): ()
	-- Recalculate the min and max values of all the tracks being displayed
	self.minValue = nil
	self.maxValue = nil

	for _, track in pairs(self.tracks) do
		TrackUtils.traverseTracks(nil, track, function(component, _, _): ()
			if component.Type ~= Constants.TRACK_TYPES.Quaternion then
				for _, keyframe in pairs(component.Data) do
					self.minValue = self.minValue and math.min(self.minValue, keyframe.Value) or keyframe.Value
					self.maxValue = self.maxValue and math.max(self.maxValue, keyframe.Value) or keyframe.Value
				end
			end
		end, true)
	end

	if not self.minValue then
		self.minValue = -1.0
		self.maxValue = 1.0
	end

	if self.maxValue - self.minValue < Constants.CURVE_CANVAS_MIN_RANGE then
		local midValue = (self.maxValue + self.minValue) / 2
		self.maxValue = midValue + Constants.CURVE_CANVAS_MIN_RANGE / 2
		self.minValue = midValue - Constants.CURVE_CANVAS_MIN_RANGE / 2
	end
end

function CurveEditorController:updateTracks(nextProps: Props): ()
	-- Fill tracks with the selected tracks data from animationData.
	-- This is only done when either the selectionTracks change, or the data in the selected tracks changes.

	self.tracks = {}
	if nextProps.SelectedTracks and nextProps.AnimationData and nextProps.AnimationData.Instances then
		local addedTracks = {}

		for _, selectedTrack in pairs(nextProps.SelectedTracks) do
			local track = AnimationData.getTrack(nextProps.AnimationData, "Root", selectedTrack)
			TrackUtils.traverseTracks(nil, track, function(t, _, path)
				local fullPath = Cryo.List.join(selectedTrack, path)
				local fullPathName = table.concat(fullPath, ".")
				if t.Type ~= Constants.TRACK_TYPES.Quaternion and not addedTracks[fullPathName] then
					table.insert(self.tracks, Cryo.Dictionary.join(t, {Path = fullPath, Instance = "Root"}))
					addedTracks[fullPathName] = true
				end
			end, true)
		end
	end

	self:updateCanvasExtents()
end

function CurveEditorController:willUpdate(nextProps: Props): ()
	local props = self.props

	if nextProps.AnimationData ~= props.AnimationData or nextProps.SelectedTracks ~= props.SelectedTracks then
		self:updateTracks(nextProps)
	end
end

function CurveEditorController:didMount(): ()
	self.isMounted = true
end

function CurveEditorController:willUnmount(): ()
	self.isMounted = false
end

function CurveEditorController:hasSelectedKeyframes(): (boolean)
	local selection = self.dragContext and self.dragContext.selectedKeyframe or self.props.SelectedKeyframes
	return selection ~= nil and not isEmpty(selection)
end

function CurveEditorController:multipleFramesSelected(): (boolean)
	-- Use Preview reference data and selection, if available
	local data = self.dragContext and self.dragContext.animationData or self.props.AnimationData
	local selection = self.dragContext and self.dragContext.selectedKeyframes or self.props.SelectedKeyframes

	local earliest, latest = AnimationData.getSelectionBounds(data, selection)
	return selection and earliest ~= latest
end

function CurveEditorController:handleCanvasInputBegan(input: any, keysHeld: boolean): ()
	if input.UserInputType == Enum.UserInputType.Keyboard then
		if Input.isMultiSelectKey(input.KeyCode) then
			-- Start multi selecting on ctrl hold
			self.isMultiSelecting = true
		elseif Input.isDeleteKey(input.KeyCode) then
			self.props.DeleteSelectedKeyframes(self.props.Analytics)
		end
	elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
		self.props.DeselectAllKeyframes()
		self.mouseDownInCanvas = true
		self.onSelectDragStarted(input)
	end
end

function CurveEditorController:handleCanvasInputEnded(input: any): ()
	-- Stop multi selecting on ctrl release
	if input.UserInputType == Enum.UserInputType.Keyboard then
		if Input.isMultiSelectKey(input.KeyCode) then
			self.isMultiSelecting = false
		end

	elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
		self.mouseDownInCanvas = false
	elseif input.UserInputType == Enum.UserInputType.MouseButton2 then
		-- local path
		-- local track, trackIndex, trackType, rotationType
		-- local isChannelAnimation = self.props.IsChannelAnimation

		-- if isChannelAnimation then
		-- 	trackIndex, path, trackType, rotationType = self.getTrackInfoFromPosition(input.Position)
		-- 	track = self.tracks[trackIndex]
		-- else
		-- 	trackIndex = self.getTrackFromPosition(input.Position)
		-- 	track = self.tracks[trackIndex]
		-- 	if track then
		-- 		path = {track.Name}
		-- 		trackType = track.Type
		-- 		rotationType = TrackUtils.getRotationType(track)
		-- 	end
		-- end

		-- self.props.SetRightClickContextInfo({
		-- 	Tick = self.getTickFromPosition(input.Position, true),
		-- 	Path = path,
		-- 	TrackType = trackType,
		-- 	RotationType = rotationType,
		-- 	InstanceName = track and track.Instance or nil,
		-- })
		self.showKeyframeMenu()
	end
end

function CurveEditorController:render(): (any)
	local props = self.props
	local state = self.state
	local theme = THEME_REFACTOR and props.Stylizer.PluginTheme or self.props.Theme:get("PluginTheme")

	local animationData = props.AnimationData
	local isMounted = self.isMounted
	local absoluteSize = state.AbsoluteSize
	local canvasSize = state.CanvasSize
	local absolutePosition = state.AbsolutePosition
	local startTick = props.StartTick
	local endTick = props.EndTick
	local trackPadding = props.TrackPadding
	local showEvents = props.ShowEvents
	local active = props.Active
	local selectedKeyframes = props.SelectedKeyframes
	local showKeyframeMenu = state.ShowKeyframeMenu
	local showTangentMenu = state.ShowTangentMenu
	local changingDuration = state.ChangingDuration
	local multipleSelected = self:hasSelectedKeyframes() and self:multipleFramesSelected()
	local localization = props.Localization
	local frameRate = props.FrameRate
	local showAsSeconds = props.ShowAsSeconds
	local dragging = state.Dragging
	local draggingScale = state.DraggingScale
	local tracks = self.tracks
	local minValue = self.minValue
	local maxValue = self.maxValue

	local draggingSelection = state.DraggingSelection

	local namedKeyframes = animationData and animationData.Events
		and animationData.Events.NamedKeyframes or {}

	local currentDuration
	if changingDuration then
		local earliest, latest = AnimationData.getSelectionBounds(self.props.AnimationData, self.props.SelectedKeyframes)
		currentDuration = (latest - earliest) * frameRate / Constants.TICK_FREQUENCY
	end

	return Roact.createElement("Frame", {
		Size = props.Size,
		Position = props.Position,
		BackgroundTransparency = 1,
		ZIndex = props.ZIndex,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		Events = showEvents and Roact.createElement(EventsController, {
			AbsolutePosition = absolutePosition - Vector2.new(0, Constants.TRACK_HEIGHT),
			AbsoluteSize = Vector2.new(absoluteSize.X, Constants.TRACK_HEIGHT),
			AnimationData = animationData,
			StartTick = startTick,
			EndTick = endTick,
			TrackPadding = trackPadding,
		}),

		CanvasContainer = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, showEvents and -Constants.TRACK_HEIGHT or 0),
			BackgroundTransparency = 1,
			LayoutOrder = 1,
			[Roact.Change.AbsoluteSize] = self.recalculateExtents,
			[Roact.Event.InputBegan] = function(_, input)
				if input.UserInputType ~= Enum.UserInputType.Keyboard then
					self:handleCanvasInputBegan(input)
				end
			end,
			[Roact.Event.InputEnded] = function(_, input)
				if input.UserInputType ~= Enum.UserInputType.Keyboard then
					self:handleCanvasInputEnded(input)
				end
			end,
		}, {
			KeyboardListener = Roact.createElement(KeyboardListener, {
				OnKeyPressed = function(input, keysHeld)
					self:handleCanvasInputBegan(input, keysHeld)
				end,
				OnKeyReleased = function(input)
					self:handleCanvasInputEnded(input)
				end,
			}),
			KeyframeActions = active and Roact.createElement(KeyframeActions, {
				ShowMenu = showKeyframeMenu,
				MultipleSelected = multipleSelected,
				OnMenuOpened = self.hideKeyframeMenu,
				OnClearTangentsSelected = self.onClearTangentsSelected,
				OnGenerateCurve = self.props.GenerateCurve,
				OnChangeDuration = self.onChangeDuration,
				OnInterpolationSelected = self.onInterpolationSelected,
			}) or nil,
			TangentActions = active and Roact.createElement(TangentActions, {
				ShowMenu = showTangentMenu,
				OnMenuOpened = self.hideTangentMenu,
				OnSetTangent = self.onSetTangent,
			}) or nil,
			VerticalScale = Roact.createElement(Scale, {
				Size = UDim2.new(0, props.TrackPadding / 2, 1, 0),
				Width = props.TrackPadding / 2,
				ParentSize = canvasSize,
				Position = UDim2.new(0, 0, 0, 0),
				TickWidthScale = 0.7,
				SmallTickWidthScale = 0.3,
				MinValue = minValue,
				MaxValue = maxValue,
				VerticalScroll = props.VerticalScroll,
				VerticalZoom = props.VerticalZoom,
				ZIndex = 3,
			}),
			-- We want to wait for the component to be mounted before rendering the CurveCanvas. If we don't, the first
			-- frame (used to determine the component size/position) will cause the XAxis to be drawn at an incorrect
			-- position and flicker.
			CurveCanvas = isMounted and Roact.createElement(CurveCanvas, {
				Size = UDim2.new(1, -props.TrackPadding, 1, 0),
				Position = UDim2.new(0, props.TrackPadding / 2, 0, 0),
				AbsoluteSize = canvasSize,
				StartTick = startTick,
				EndTick = endTick,
				MinValue = minValue,
				MaxValue = maxValue,
				Tracks = tracks,
				VerticalScroll = props.VerticalScroll,
				VerticalZoom = props.VerticalZoom,
				SelectedKeyframes = selectedKeyframes,
				NamedKeyframes = namedKeyframes,
				Playhead = props.Playhead,
				ZIndex = 1,

				OnKeyRightClick = self.handleKeyframeRightClick,
				OnKeyInputBegan = self.handleKeyframeInputBegan,
				OnKeyInputEnded = self.handleKeyframeInputEnded,
				OnTangentRightClick = self.handleTangentRightClick,
				OnTangentInputBegan = self.handleTangentInputBegan,
				OnTangentInputEnded = self.handleTangentInputEnded,
			}) or nil,

			RightMask = Roact.createElement("Frame", {
				AnchorPoint = Vector2.new(0, 0),
				Size = UDim2.new(0, props.TrackPadding / 2 + Constants.SCROLL_BAR_SIZE - 1, 1, Constants.SCROLL_BAR_SIZE),
				Position = UDim2.new(1, -props.TrackPadding / 2, 0, 0),
				BackgroundColor3 = theme.backgroundColor,
				BorderColor3 = theme.borderColor,
				BorderSizePixel = 1,
				ZIndex = 3,
			}),

			ScaleControls = multipleSelected and not draggingSelection and Roact.createElement(ScaleControls, {
				SelectedKeyframes = selectedKeyframes,
				StartTick = startTick,
				EndTick = endTick,
				UseFullHeight = true,
				TrackPadding = trackPadding,
				Dragging = draggingScale or dragging,
				ShowAsSeconds = showAsSeconds,
				FrameRate = frameRate,
				DopeSheetWidth = canvasSize.X,
				ZIndex = 2,
				ShowSelectionArea = true,
				IsChannelAnimation = true,
				OnScaleHandleDragStart = self.onScaleHandleDragStarted,
				OnScaleHandleDragEnd = self.onScaleHandleDragEnded,
				OnScaleHandleDragMoved = self.onScaleHandleDragMoved,
			}),

			DragTarget = dragging and Roact.createElement(DragTarget, {
				OnDragMoved = self.onDragMoved,
				OnDragEnded = self.onDragEnded,
			}),

			MultiSelectBox = draggingSelection and Roact.createElement(SelectionBox, {
				OnDragMoved = self.onSelectDragMoved,
				OnDragEnded = self.onSelectDragEnded,
				SelectionStart = self.selectDragStart,
				SelectionEnd = self.selectDragEnd,
				SourceExtents = Rect.new(absolutePosition, absolutePosition + absoluteSize)
			}),

			ChangeDurationPrompt = currentDuration and Roact.createElement(TextEntryPrompt, {
				PromptText = localization:getText("Title", "ChangeDuration"),
				InputText = localization:getText("Title", "NewDuration"),
				NoticeText = localization:getText("Title", "CurrentDuration_Migrated", {currentDuration = currentDuration}),
				Text = currentDuration,
				Buttons = {
					{Key = false, Text = localization:getText("Dialog", "Cancel")},
					{Key = true, Text = localization:getText("Dialog", "Save"), Style = "Primary"},
				},
				OnTextSubmitted = self.setSelectedKeyframeDuration,
				OnClose = self.setChangingDuration,
			}),
		})
	})
end

CurveEditorController = withContext({
	Localization = ContextServices.Localization,
	Analytics = ContextServices.Analytics,
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
})(CurveEditorController)

local function mapStateToProps(state): ({[string]: any})
	local status = state.Status

	local stateToProps = {
		AnimationData = state.AnimationData,
		Active = status.Active,
		FrameRate = status.FrameRate,
		SelectedKeyframes = status.SelectedKeyframes,
		SelectedTracks = status.SelectedTracks,
		SnapMode = status.SnapMode,
	}

	return stateToProps
end

local function mapDispatchToProps(dispatch): ({[string]: any})
	local dispatchToProps = {
		AddWaypoint = function(): ()
			dispatch(AddWaypoint())
		end,

		DeleteSelectedKeyframes = function(analytics: any): ()
			dispatch(AddWaypoint())
			dispatch(DeleteSelectedKeyframes(analytics))
			dispatch(SetRightClickContextInfo({}))
		end,

		DeselectAllKeyframes = function(): ()
			dispatch(SetSelectedKeyframes{})
			dispatch(SetSelectedEvents({}))
		end,

		DeselectKeyframe = function(instanceName: string, trackName: string, tck: number): ()
			dispatch(AddWaypoint())
			dispatch(DeselectKeyframe(instanceName, trackName, tck))
			dispatch(SetRightClickContextInfo({}))
		end,

		GenerateCurve = function(easingStyle: Enum.PoseEasingStyle, easingDirection: Enum.PoseEasingDirection): ()
			dispatch(AddWaypoint())
			dispatch(GenerateCurve(easingStyle, easingDirection))
		end,

		MoveSelectedKeyframes = function(pivotTick: number, newTick: number, pivotValue: number, newValue: number, dragContext: any): ()
			dispatch(MoveSelectedKeyframes(pivotTick, newTick, pivotValue, newValue, dragContext))
		end,

		Pause = function(): ()
			dispatch(Pause())
		end,

		ScaleSelectedKeyframes = function(pivotTick: number, scale: number, dragContext: any): ()
			dispatch(ScaleSelectedKeyframes(pivotTick, scale, dragContext))
		end,

		SelectKeyframeRange = function(instanceName: string, componentPath: {string}, minTick: number, maxTick: number, multiSelect: boolean): ()
			dispatch(SetSelectedEvents({}))
			dispatch(SelectKeyframeRange(instanceName, componentPath, minTick, maxTick, multiSelect))
		end,

		SetKeyframeTangent = function(instanceName: string, path: {string}, tck: number, side: string, slope: number): ()
			dispatch(SetKeyframeTangent(instanceName, path, tck, side, slope))
		end,

		SetRightClickContextInfo = function(info: any): ()
			dispatch(SetRightClickContextInfo(info))
		end,

		SetSelectedKeyframes = function(selection: any): ()
			dispatch(SetSelectedKeyframes(selection))
		end,

		SetSelectedKeyframeData = function(newData: any): ()
			dispatch(AddWaypoint())
			dispatch(SetSelectedKeyframeData(newData))
		end,
	}

	return dispatchToProps
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(CurveEditorController)
