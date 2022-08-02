--[[
	A controller than handles keyframe manipulation events in the Dope Sheet.
	Accepts input from the Dope Sheet itself and keyframes within it, and
	connects these events to thunks and drag logic.

	Props:
		int StartTick = beginning tick of timeline range
		int EndTick = end tick of timeline range
		int TrackPadding = amount of total padding
		int TopTrackIndex = index of the track that should be displayed at the top of the Dope Sheet
		bool ShowEvents = Whether to show the AnimationEvents track.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Cryo = require(Plugin.Packages.Cryo)
local deepCopy = require(Plugin.Src.Util.deepCopy)
local AnimationData = require(Plugin.Src.Util.AnimationData)

local Framework = require(Plugin.Packages.Framework)
local DragTarget = Framework.UI.DragListener
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local KeyboardListener = Framework.UI.KeyboardListener

local DragContext = require(Plugin.Src.Util.DragContext)

local Input = require(Plugin.Src.Util.Input)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)
local isEmpty = require(Plugin.Src.Util.isEmpty)
local Constants = require(Plugin.Src.Util.Constants)
local StringUtils = require(Plugin.Src.Util.StringUtils)
local KeyframeUtils = require(Plugin.Src.Util.KeyframeUtils)
local PathUtils = require(Plugin.Src.Util.PathUtils)

local DopeSheet = require(Plugin.Src.Components.DopeSheet)
local TrackColors = require(Plugin.Src.Components.TrackList.TrackColors)
local EventsController = require(Plugin.Src.Components.EventsController)
local SelectionBox = require(Plugin.Src.Components.SelectionBox)
local TimelineActions = require(Plugin.Src.Components.TimelineActions)
local ScaleControls = require(Plugin.Src.Components.ScaleControls.ScaleControls)
local TextEntryPrompt = require(Plugin.Src.Components.TextEntryPrompt)
local NoticeToast = require(Plugin.Src.Components.Toast.NoticeToast)

local AddWaypoint = require(Plugin.Src.Thunks.History.AddWaypoint)
local SelectKeyframe = require(Plugin.Src.Thunks.Selection.SelectKeyframe)
local SelectKeyframeRange = require(Plugin.Src.Thunks.Selection.SelectKeyframeRange)
local DeselectKeyframe = require(Plugin.Src.Thunks.Selection.DeselectKeyframe)
local SelectKeyframesAtTick = require(Plugin.Src.Thunks.Selection.SelectKeyframesAtTick)
local DeselectKeyframesAtTick = require(Plugin.Src.Thunks.Selection.DeselectKeyframesAtTick)
local MoveSelectedKeyframes = require(Plugin.Src.Thunks.Selection.MoveSelectedKeyframes)
local ScaleSelectedKeyframes = require(Plugin.Src.Thunks.Selection.ScaleSelectedKeyframes)
local SetSelectedKeyframeData = require(Plugin.Src.Thunks.Selection.SetSelectedKeyframeData)
local DeleteSelectedKeyframes = require(Plugin.Src.Thunks.Selection.DeleteSelectedKeyframes)
local GenerateCurve = require(Plugin.Src.Thunks.Selection.GenerateCurve)
local SetRightClickContextInfo = require(Plugin.Src.Actions.SetRightClickContextInfo)
local RenameKeyframe = require(Plugin.Src.Thunks.RenameKeyframe)
local QuantizeKeyframes = require(Plugin.Src.Thunks.QuantizeKeyframes)

local SetSelectedKeyframes = require(Plugin.Src.Actions.SetSelectedKeyframes)
local SetSelectedEvents = require(Plugin.Src.Actions.SetSelectedEvents)
local Pause = require(Plugin.Src.Actions.Pause)

local SetNotification = require(Plugin.Src.Actions.SetNotification)

local GetFFlagFacialAnimationSupport = require(Plugin.LuaFlags.GetFFlagFacialAnimationSupport)
local GetFFlagChannelAnimations = require(Plugin.LuaFlags.GetFFlagChannelAnimations)
local GetFFlagCurveEditor = require(Plugin.LuaFlags.GetFFlagCurveEditor)
local GetFFlagFixButtonStyle = require(Plugin.LuaFlags.GetFFlagFixButtonStyle)
local GetFFlagCurveEditorFreeZoom = require(Plugin.LuaFlags.GetFFlagCurveEditorFreeZoom)

local DopeSheetController = Roact.Component:extend("DopeSheetController")

function DopeSheetController:init()
	self.state = {
		AbsoluteSize = Vector2.new(),
		AbsolutePosition = Vector2.new(),
		dragging = false,
		draggingScale = false,
		draggingSelection = false,
		dragTick = nil,
		showContextMenu = false,
		renamingKeyframe = nil,
		changingDuration = nil,
		hasDragWaypoint = false,	-- True if a waypoint has already been created for
									-- the current drag operation (move/scale)
	}

	self.DragContext = nil
	self.isMultiSelecting = false
	self.mouseDownOnKeyframe = false
	self.mouseDownInTimeline = false
	self.tracks = {}

	self.selectDragStart, self.updateSelectDragStart = Roact.createBinding(nil)
	self.selectDragEnd, self.updateSelectDragEnd = Roact.createBinding(nil)
	self.lastMinTick = nil
	self.lastMinTrack = nil
	self.lastMaxTick = nil
	self.lastMaxTrack = nil

	self.getTickFromPosition = function(position, useSnap)
		local tck = TrackUtils.getKeyframeFromPosition(
			position,
			self.props.StartTick,
			self.props.EndTick,
			self.state.AbsolutePosition.X + (self.props.TrackPadding / 2),
			self.state.AbsoluteSize.X - self.props.TrackPadding
		)

		if useSnap and self.props.SnapMode ~= Constants.SNAP_MODES.None then
			tck = KeyframeUtils.getNearestFrame(tck, self.props.FrameRate)
		end

		return tck
	end

	self.getTrackFromPosition = function(position)
		local topTrackIndex = self.props.TopTrackIndex
		local yPos = position.Y - self.state.AbsolutePosition.Y
		local isChannelAnimation = self.props.IsChannelAnimation

		if GetFFlagChannelAnimations() and isChannelAnimation then
			local trackIndex, path = TrackUtils.getTrackInfoFromPosition(self.tracks, topTrackIndex, yPos)
			return trackIndex + PathUtils.getPathValue(PathUtils.getRelativePath(path))
		else
			return TrackUtils.getTrackFromPosition(self.tracks, topTrackIndex, yPos)
		end
	end

	self.getTrackInfoFromPosition = function(position)
		local topTrackIndex = self.props.TopTrackIndex
		local yPos = position.Y - self.state.AbsolutePosition.Y

		return TrackUtils.getTrackInfoFromPosition(self.tracks, topTrackIndex, yPos)
	end

	self.addDragWaypoint = function()
		if not self.state.hasDragWaypoint then
			self.props.AddWaypoint()
			self:setState({
				hasDragWaypoint = true
			})
		end
	end

	self.onScaleHandleDragStarted = function(tck)
		local selectedKeyframes = self.props.SelectedKeyframes
		local animationData = self.props.AnimationData
		self.DragContext = DragContext.new(animationData, selectedKeyframes, tck)
		self:setState({
			draggingScale = true,
			dragTick = tck,
			hasDragWaypoint = false
		})
	end

	self.onKeyframeDragStarted = function(tck)
		local selectedKeyframes = self.props.SelectedKeyframes
		local animationData = self.props.AnimationData
		self.DragContext = DragContext.new(animationData, selectedKeyframes, tck)
		self:setState({
			dragging = true,
			dragTick = tck,
			hasDragWaypoint = false,
		})
	end

	self.onScaleHandleDragMoved = function(input)
		local tck = self.getTickFromPosition(input.Position, true)

		if self.state.dragTick ~= tck and self.DragContext then
			self.addDragWaypoint()
			self.DragContext:scaleKeyframes(tck, self.props.StartTick)
			self.props.ScaleSelectedKeyframes(self.DragContext.pivotTick, self.DragContext.scale, self.DragContext)
			self:setState({
				dragTick = tck
			})
		end
	end

	self.onKeyframeDragMoved = function(input)
		local tck = self.getTickFromPosition(input.Position, true)
		if self.state.dragTick ~= tck and self.DragContext then
			self.addDragWaypoint()
			self.DragContext:moveKeyframes(tck)
			self.props.MoveSelectedKeyframes(self.DragContext.pivotTick, self.DragContext.newTick, self.DragContext)
			self:setState({
				dragTick = tck
			})
		end
	end

	self.onKeyframeDragEnded = function()
		self.DragContext = nil
		self:setState({
			dragging = false,
			dragTick = Roact.None,
			hasDragWaypoint = false,
		})
	end

	self.onScaleHandleDragEnded = function()
		self.DragContext = nil
		self:setState({
			draggingScale = false,
			dragTick = Roact.None,
			hasDragWaypoint = false,
		})
	end

	self.onSelectDragStarted = function(input)
		if not self.state.showContextMenu then
			self.updateSelectDragStart(input.Position)
			self.updateSelectDragEnd(input.Position)
			self:setState({
				draggingSelection = true,
			})
		end
	end

	self.onSelectDragMoved = function(input)
		local props = self.props
		local position = input.Position
		self.updateSelectDragEnd(position)
		local dragStart = self.selectDragStart:getValue()
		local selectedKeyframes = props.SelectedKeyframes
		local isChannelAnimation = props.IsChannelAnimation

		local minPos = Vector2.new(math.min(position.X, dragStart.X), math.min(position.Y, dragStart.Y))
		local maxPos = Vector2.new(math.max(position.X, dragStart.X), math.max(position.Y, dragStart.Y))
		-- Determine padding for selection
		local startTick = props.StartTick
		local endTick = props.EndTick

		local trackWidth = self.state.AbsoluteSize.X - props.TrackPadding
		local timelineScale = trackWidth / (endTick - startTick)
		local selectionPadding = Vector2.new(timelineScale / 2, Constants.TRACK_HEIGHT / 2)

		-- Find extents of selection
		local minTick = self.getTickFromPosition(minPos + selectionPadding, false)
		local minTrack = self.getTrackFromPosition(minPos + selectionPadding)
		local maxTick = self.getTickFromPosition(maxPos - selectionPadding, false)
		local maxTrack = self.getTrackFromPosition(maxPos - selectionPadding)

		local lastMinTick = self.lastMinTick or minTick
		local lastMinTrack = self.lastMinTrack or minTrack
		local lastMaxTick = self.lastMaxTick or maxTick
		local lastMaxTrack = self.lastMaxTrack or maxTrack

		if not isEmpty(selectedKeyframes)
			and (minTick > lastMinTick or minTrack > lastMinTrack
			or maxTick < lastMaxTick or maxTrack < lastMaxTrack) then
			props.DeselectAllKeyframes()
		end

		for trackIndex, track in ipairs(self.tracks) do
			if GetFFlagChannelAnimations() and isChannelAnimation then
				local visitedPaths = {}

				-- Find all the tracks (and their components) that are within the selection range
				TrackUtils.traverseTracks(track.Name, track, function(selectedTrack, _, path)
					local pathValue = PathUtils.getPathValue(PathUtils.getRelativePath(path))
					local selectedTrackIndex = trackIndex + pathValue
					if visitedPaths[pathValue] or selectedTrackIndex < minTrack or selectedTrackIndex > maxTrack then
						return
					end
					visitedPaths[pathValue] = true
					props.SelectKeyframeRange(track.Instance, path, minTick, maxTick, true)
				end)
			else
				if trackIndex >= minTrack and trackIndex <= maxTrack then
					if GetFFlagChannelAnimations() then
						props.SelectKeyframeRange(track.Instance, {track.Name}, minTick, maxTick, true)
					elseif track.Keyframes then
						TrackUtils.traverseKeyframeRange(track.Keyframes, minTick, maxTick, function(tck)
							props.SelectKeyframe(track.Instance, track.Name, tck, true)
						end)
					end
				end
			end
		end

		-- If top-level summary keyframes are part of the selection, select all keyframes beneath.
		if minTrack == 0 then
			local summaryKeyframes = TrackUtils.getSummaryKeyframes(self.tracks, minTick, maxTick)
			if #summaryKeyframes > 0 then
				TrackUtils.traverseKeyframeRange(summaryKeyframes, minTick, maxTick, function(tck)
					props.SelectKeyframesAtTick(tck, true)
				end)
			end
		end

		self.lastMinTick = minTick
		self.lastMinTrack = minTrack
		self.lastMaxTick = maxTick
		self.lastMaxTrack = maxTrack
	end

	self.onSelectDragEnded = function()
		self:setState({
			draggingSelection = Roact.None,
		})
		self.updateSelectDragStart(nil)
		self.updateSelectDragEnd(nil)
		self.lastMinTick = nil
		self.lastMinTrack = nil
		self.lastMaxTick = nil
		self.lastMaxTrack = nil
	end

	self.recalculateExtents = function(rbx)
		self:setState({
			AbsoluteSize = rbx.AbsoluteSize,
			AbsolutePosition = rbx.AbsolutePosition,
		})
	end

	self.onEasingItemSelected = function(enumName, item)
		local newData = {
			[enumName] = item,
		}
		self.props.SetSelectedKeyframeData(newData)
	end

	self.onClearTangentsSelected = function(enumName, item)
		local newData = {
			LeftSlope = Cryo.None,
			RightSlope = Cryo.None,
		}
		self.props.SetSelectedKeyframeData(newData)
	end

	self.showMenu = function()
		self.props.Pause()
		self:setState({
			showContextMenu = true,
		})
	end

	self.hideMenu = function()
		self:setState({
			showContextMenu = false,
		})
	end

	self.setRenamingKeyframe = function(tck)
		self:setState({
			renamingKeyframe = tck or Roact.None,
		})
	end

	self.setChangingDuration = function(changing)
		self:setState({
			changingDuration = changing or Roact.None,
		})
	end

	self.setSelectedKeyframeDuration = function(textInput)
		self.setChangingDuration()
		local newLength = StringUtils.parseTime(textInput, self.props.FrameRate)
		if newLength ~= nil then
			local earliest, latest = AnimationData.getSelectionBounds(self.props.AnimationData, self.props.SelectedKeyframes)
			local currentLength = latest - earliest
			local scale = newLength / currentLength
			self.props.ScaleSelectedKeyframes(earliest, scale)
		end
	end
end

function DopeSheetController:hasSelectedKeyframes()
	local selection = self.DragContext and self.DragContext.selectedKeyframe or self.props.SelectedKeyframes
	return selection ~= nil and not isEmpty(selection)
end

function DopeSheetController:multipleFramesSelected()
	-- Use Preview reference data and selection, if available
	local data = self.DragContext and self.DragContext.animationData or self.props.AnimationData
	local selection = self.DragContext and self.DragContext.selectedKeyframes or self.props.SelectedKeyframes

	local earliest, latest = AnimationData.getSelectionBounds(data, selection)
	return selection and earliest ~= latest
end

function DopeSheetController:handleTimelineInputBegan(input, keysHeld)
	if input.UserInputType == Enum.UserInputType.Keyboard then
		if Input.isMultiSelectKey(input.KeyCode) then
			-- Start multi selecting on ctrl hold
			self.isMultiSelecting = true
		elseif Input.isDeleteKey(input.KeyCode) then
			self.props.DeleteSelectedKeyframes(self.props.Analytics)
		end
	elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
		self.props.DeselectAllKeyframes()
		self.mouseDownInTimeline = true
		self.onSelectDragStarted(input)
	end
end

function DopeSheetController:handleTimelineInputEnded(input)
	-- Stop multi selecting on ctrl release
	if input.UserInputType == Enum.UserInputType.Keyboard then
		if Input.isMultiSelectKey(input.KeyCode) then
			self.isMultiSelecting = false
		end

	elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
		self.mouseDownInTimeline = false

	elseif input.UserInputType == Enum.UserInputType.MouseButton2 then
		if GetFFlagChannelAnimations() then
			local path
			local track, trackIndex, trackType, rotationType
			local isChannelAnimation = self.props.IsChannelAnimation

			if isChannelAnimation then
				trackIndex, path, trackType, rotationType = self.getTrackInfoFromPosition(input.Position)
				track = self.tracks[trackIndex]
			else
				trackIndex = self.getTrackFromPosition(input.Position)
				track = self.tracks[trackIndex]
				if track then
					path = {track.Name}
					trackType = track.Type
					rotationType = TrackUtils.getRotationType(track)
				end
			end

			self.props.SetRightClickContextInfo({
				Tick = self.getTickFromPosition(input.Position, true),
				Path = path,
				TrackType = trackType,
				RotationType = rotationType,
				InstanceName = track and track.Instance or nil,
			})
		else
			local track = self.tracks[self.getTrackFromPosition(input.Position)]
			self.props.SetRightClickContextInfo({
				Tick = self.getTickFromPosition(input.Position, true),
				TrackName = track and track.Name or nil,
				TrackType = GetFFlagFacialAnimationSupport() and (track and track.Type) or nil,
				InstanceName = track and track.Instance or nil,
			})
		end
		self.showMenu()
	end
end

function DopeSheetController:handleKeyframeRightClick(instance, path, tck, selected)
	local rightClickInfo = {
		Tick = tck,
		OnKeyframe = true,
	}
	if isEmpty(self.props.SelectedKeyframes) then
		if instance == nil then
			-- User selected a summary keyframe
			self.props.SelectKeyframesAtTick(tck)
		else
			if GetFFlagChannelAnimations() then
				self.props.SelectKeyframeRange(instance, path, tck, tck, false)
			else
				self.props.SelectKeyframe(instance, path, tck, false)
			end
		end
	end
	if instance == nil then
		rightClickInfo.SummaryKeyframe = tck
	end
	self.props.SetRightClickContextInfo(rightClickInfo)
	self.showMenu()
end

function DopeSheetController:handleKeyframeInputBegan(instance, path, tck, selected, input)
	-- Select keyframe if not selected
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		self.mouseDownOnKeyframe = true

		if selected then
			-- Deselect keyframe if it is clicked again when multi-selecting
			if self.isMultiSelecting then
				if instance then
					self.props.DeselectKeyframe(instance, path, tck)
				else
					self.props.DeselectKeyframesAtTick(tck, self.isMultiSelecting)
				end
			end
		else
			if instance then
				if GetFFlagChannelAnimations() then
					self.props.SelectKeyframeRange(instance, path, tck, tck, self.isMultiSelecting)
				else
					self.props.SelectKeyframe(instance, path, tck, self.isMultiSelecting)
				end
			else
				self.props.SelectKeyframesAtTick(tck, self.isMultiSelecting)
			end
		end
	end
end

function DopeSheetController:handleKeyframeInputEnded(tck, selected, input)
	-- Start dragging if the mouse drags outside the keyframe
	if input.UserInputType == Enum.UserInputType.MouseMovement then
		if selected and self.mouseDownOnKeyframe then
			self.onKeyframeDragStarted(tck)
			self.onKeyframeDragMoved(input)
			self.mouseDownOnKeyframe = false
		end
	end
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		self.mouseDownOnKeyframe = false
	end
end

-- Convert the AnimationData table into an array of tracks.
function DopeSheetController:makeTracks()
	local props = self.props
	local data = props.AnimationData

	local trackEntries = props.Tracks
	local newTrackEntries = {}

	-- Traverse both the track and the trackEntry hierarchies, merging the track data into
	-- the trackEntry.
	local function mergeTrackIntoTrackEntry(entry, track)
		entry.Keyframes = track.Keyframes
		entry.Data = track.Data
		entry.IsCurveTrack = track.IsCurveTrack
		entry.EulerAnglesOrder = track.EulerAnglesOrder

		for trackComponentName, trackComponent in pairs(track.Components or {}) do
			if entry.Components then
				local entryComponent = entry.Components[trackComponentName]
				if entryComponent then
					mergeTrackIntoTrackEntry(entryComponent, trackComponent)
				end
			end
		end
	end

	for index, trackEntry in ipairs(trackEntries) do
		if GetFFlagChannelAnimations() then
			newTrackEntries[index] = deepCopy(trackEntry)
		else
			newTrackEntries[index] = Cryo.Dictionary.join(trackEntry)
		end
		if data then
			for _, instance in pairs(data.Instances) do
				for trackName, trackData in pairs(instance.Tracks) do
					if trackEntry.Name == trackName then
						if GetFFlagChannelAnimations() then
							mergeTrackIntoTrackEntry(newTrackEntries[index], trackData)
						else
							newTrackEntries[index].Keyframes = trackData.Keyframes
							newTrackEntries[index].Data = trackData.Data
						end
					end
				end
			end
		end
	end

	return newTrackEntries
end

-- Improve performance by only re-rendering when we need to
function DopeSheetController:shouldUpdate(nextProps, nextState)
	if nextState ~= self.state then
		return true
	end
	for k, _ in pairs(nextProps) do
		if nextProps[k] ~= self.props[k] then
			return true
		end
	end
	return false
end

function DopeSheetController:render()
	local props = self.props
	local state = self.state
	local dragging = state.dragging
	local draggingScale = state.draggingScale
	local draggingSelection = state.draggingSelection
	local absoluteSize = state.AbsoluteSize
	local absolutePosition = state.AbsolutePosition
	local showContextMenu = state.showContextMenu
	local renamingKeyframe = state.renamingKeyframe
	local changingDuration = state.changingDuration
	local active = props.Active
	local animationData = props.AnimationData
	local selectedKeyframes = props.SelectedKeyframes
	local startTick = props.StartTick
	local endTick = props.EndTick
	local trackPadding = props.TrackPadding
	local topTrackIndex = props.TopTrackIndex
	local showEvents = props.ShowEvents
	local localization = self.props.Localization
	local frameRate = self.props.FrameRate
	local showAsSeconds = self.props.ShowAsSeconds
	local isChannelAnimation = self.props.IsChannelAnimation
	local colorsPosition = self.props.ColorsPosition or 0
	local tracks = self.props.Tracks

	local namedKeyframes = animationData and animationData.Events
		and animationData.Events.NamedKeyframes or {}

	local quantizeWarningText = localization:getText("Toast", "QuantizeWarning")

	local loadedAnimName = props.Loaded
	local savedAnimName = props.Saved
	local showClippedWarning = props.ClippedWarning
	local showInvalidIdWarning = props.InvalidIdWarning
	local showLoadToast = not showClippedWarning

	local size = props.Size
	local position = props.Position

	local multipleSelected = self:hasSelectedKeyframes() and self:multipleFramesSelected()
	local currentDuration
	if changingDuration then
		local earliest, latest = AnimationData.getSelectionBounds(self.props.AnimationData, self.props.SelectedKeyframes)
		currentDuration = (latest - earliest) * props.FrameRate / Constants.TICK_FREQUENCY
	end

	self.tracks = self:makeTracks()

	if animationData and animationData.Instances.Root then
		return Roact.createElement("Frame", {
			Size = size,
			Position = position,
			BackgroundTransparency = 1,
			ZIndex = GetFFlagCurveEditor() and props.ZIndex or nil,
			[Roact.Event.InputChanged] = if GetFFlagCurveEditorFreeZoom() then self.props.OnInputChanged else nil,
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

			DopeSheetContainer = Roact.createElement("Frame", {
				Size = showEvents and UDim2.new(1, 0, 1, -Constants.TRACK_HEIGHT) or UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				LayoutOrder = 1,
				ClipsDescendants = true,
				[Roact.Change.AbsoluteSize] = self.recalculateExtents,
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
				KeyboardListener = Roact.createElement(KeyboardListener, {
					OnKeyPressed = function(input, keysHeld)
						self:handleTimelineInputBegan(input, keysHeld)
					end,
					OnKeyReleased = function(input)
						self:handleTimelineInputEnded(input)
					end,
				}),

				DopeSheet = Roact.createElement(DopeSheet, {
					Size = UDim2.new(1, 0, 1, 0),
					ParentSize = absoluteSize,
					Padding = props.TrackPadding,
					StartTick = startTick,
					EndTick = endTick,
					TopTrackIndex = topTrackIndex,
					SelectedKeyframes = props.SelectedKeyframes,
					SelectedEvents = props.SelectedEvents,
					Tracks = self.tracks,
					IsChannelAnimation = isChannelAnimation,
					NamedKeyframes = namedKeyframes,
					TrackHeight = Constants.TRACK_HEIGHT,
					SummaryTrackHeight = Constants.SUMMARY_TRACK_HEIGHT,
					ZIndex = 1,

					OnKeyRightClick = function(instance, path, tck, selected)
						self:handleKeyframeRightClick(instance, path, tck, selected)
					end,

					OnKeyInputBegan = function(instance, path, tck, selected, input)
						self:handleKeyframeInputBegan(instance, path, tck, selected, input)
					end,

					OnKeyInputEnded = function(tck, selected, input)
						self:handleKeyframeInputEnded(tck, selected, input)
					end,
				}),

				DragTarget = dragging and Roact.createElement(DragTarget, {
					OnDragMoved = self.onKeyframeDragMoved,
					OnDragEnded = self.onKeyframeDragEnded,
				}),

				MultiSelectBox = draggingSelection and Roact.createElement(SelectionBox, {
					OnDragMoved = self.onSelectDragMoved,
					OnDragEnded = self.onSelectDragEnded,
					SelectionStart = self.selectDragStart,
					SelectionEnd = self.selectDragEnd,
					SourceExtents = Rect.new(absolutePosition, absolutePosition + absoluteSize)
				}),

				TimelineActions = active and Roact.createElement(TimelineActions, {
					ShowMenu = showContextMenu,
					MultipleSelected = multipleSelected,
					IsChannelAnimation = isChannelAnimation,
					OnMenuOpened = self.hideMenu,
					OnItemSelected = self.onEasingItemSelected,
					OnClearTangentsSelected = self.onClearTangentsSelected,
					OnGenerateCurve = self.props.GenerateCurve,
					OnRenameKeyframe = function(tck)
						-- The prompt was sometimes not displaying when not using spawn
						spawn(function()
							self.setRenamingKeyframe(tck)
						end)
					end,
					OnChangeDuration = function()
						spawn(function()
							self.setChangingDuration(true)
						end)
					end,
				}),

				ScaleControls = multipleSelected and not draggingSelection and Roact.createElement(ScaleControls, {
					SelectedKeyframes = selectedKeyframes,
					StartTick = startTick,
					EndTick = endTick,
					TopTrackIndex = topTrackIndex,
					Tracks = self.tracks,
					TrackPadding = trackPadding,
					Dragging = draggingScale or dragging,
					ShowAsSeconds = showAsSeconds,
					FrameRate = frameRate,
					DopeSheetWidth = absoluteSize.X - props.TrackPadding,
					ZIndex = 2,
					ShowSelectionArea = true,
					IsChannelAnimation = isChannelAnimation,
					OnScaleHandleDragStart = self.onScaleHandleDragStarted,
					OnScaleHandleDragEnd = self.onScaleHandleDragEnded,
					OnScaleHandleDragMoved = self.onScaleHandleDragMoved,
				}),

				RenameKeyframePrompt = renamingKeyframe ~= nil and Roact.createElement(TextEntryPrompt, {
					PromptText = localization:getText("ContextMenu", "RenameKeyframe"),
					InputText = localization:getText("Menu", "RenameKeyframePrompt"),
					Text = namedKeyframes[renamingKeyframe] or Constants.DEFAULT_KEYFRAME_NAME,
					Buttons = {
						{Key = "Delete", Text = localization:getText("Dialog", "Delete"), Style = if GetFFlagFixButtonStyle() then "Round" else nil},
						{Key = false, Text = localization:getText("Dialog", "Cancel"), Style = if GetFFlagFixButtonStyle() then "Round" else nil},
						{Key = true, Text = localization:getText("Dialog", "Save"), Style = if GetFFlagFixButtonStyle() then "RoundPrimary" else "Primary"},
					},
					OnButtonClicked = function(key)
						if key == "Delete" then
							self.setRenamingKeyframe()
							props.RenameKeyframe(renamingKeyframe, Constants.DEFAULT_KEYFRAME_NAME, props.Analytics)
						end
					end,
					OnTextSubmitted = function(text)
						self.setRenamingKeyframe()
						props.RenameKeyframe(renamingKeyframe, text, props.Analytics)
					end,
					OnClose = self.setRenamingKeyframe,
				}),

				ChangeDurationPrompt = currentDuration and Roact.createElement(TextEntryPrompt, {
					PromptText = localization:getText("Title", "ChangeDuration"),
					InputText = localization:getText("Title", "NewDuration"),
					NoticeText = localization:getText("Title", "CurrentDuration_Migrated", {currentDuration = currentDuration}),
					Text = currentDuration,
					Buttons = {
						{Key = false, Text = localization:getText("Dialog", "Cancel"), Style = if GetFFlagFixButtonStyle() then "Round" else nil},
						{Key = true, Text = localization:getText("Dialog", "Save"), Style = if GetFFlagFixButtonStyle() then "RoundPrimary" else "Primary"},
					},
					OnTextSubmitted = self.setSelectedKeyframeDuration,
					OnClose = self.setChangingDuration,
				}),

				ClippedToast = showClippedWarning and Roact.createElement(NoticeToast, {
					Text = localization:getText("Toast", "ClippedWarning"),
					OnClose = props.CloseClippedToast,
				}),

				SavedToast = savedAnimName and Roact.createElement(NoticeToast, {
					Text = localization:getText("Toast", "Saved_Migrated", {savedAnimName = savedAnimName}),
					OnClose = props.CloseSavedToast,
				}),

				LoadedToast = showLoadToast and loadedAnimName and Roact.createElement(NoticeToast, {
					Text = localization:getText("Toast", "Loaded_Migrated", {loadedAnimName = loadedAnimName}),
					OnClose = props.CloseLoadedToast,
				}),

				InvalidId = showInvalidIdWarning and Roact.createElement(NoticeToast, {
					Text = localization:getText("Toast", "InvalidAnimation"),
					OnClose = props.CloseInvalidAnimationToast,
				})
			}),

			IgnoreLayout = GetFFlagCurveEditor() and Roact.createElement("Folder", {}, {
				TrackColors = Roact.createElement(TrackColors, {
					Tracks = tracks,
					TopTrackIndex = topTrackIndex,
					Position = UDim2.new(0, 0, 0, colorsPosition),
					MaxHeight = absoluteSize.Y - colorsPosition,
				})
			 }) or nil,
		})
	else
		return Roact.createElement("Frame", {
			Size = size,
			Position = position,
			BackgroundTransparency = 1,
			[Roact.Change.AbsoluteSize] = self.recalculateExtents,
		})
	end
end

DopeSheetController = withContext({
	Localization = ContextServices.Localization,
	Analytics = ContextServices.Analytics
})(DopeSheetController)

local function mapStateToProps(state, props)
	local status = state.Status

	local stateToProps = {
		Active = status.Active,
		SelectedKeyframes = status.SelectedKeyframes,
		Clipboard = status.Clipboard,
		AnimationData = state.AnimationData,
		QuantizeWarning = state.Notifications.QuantizeWarning,
		Saved = state.Notifications.Saved,
		Loaded = state.Notifications.Loaded,
		ClippedWarning = state.Notifications.ClippedWarning,
		FrameRate = status.FrameRate,
		SnapMode = status.SnapMode,
		InvalidIdWarning = state.Notifications.InvalidAnimation,
		Tracks = if GetFFlagCurveEditor() then status.Tracks else nil,
	}

	return stateToProps
end

local function mapDispatchToProps(dispatch)
	local dispatchToProps = {
		AddWaypoint = function()
			dispatch(AddWaypoint())
		end,

		MoveSelectedKeyframes = function(pivotTick, newTick, dragContext)
			if GetFFlagCurveEditor() then
				dispatch(MoveSelectedKeyframes(pivotTick, newTick, nil, nil, dragContext))
			else
				dispatch(MoveSelectedKeyframes(pivotTick, newTick, dragContext))
			end
		end,

		ScaleSelectedKeyframes = function(pivotTick, scale, dragContext)
			dispatch(ScaleSelectedKeyframes(pivotTick, scale, dragContext))
		end,

		DeselectKeyframe = function(instanceName, trackName, tck)
			dispatch(DeselectKeyframe(instanceName, trackName, tck))
		end,

		SelectKeyframeRange = function(instanceName, componentPath, minTick, maxTick, multiSelect)
			dispatch(SetSelectedEvents({}))
			dispatch(SelectKeyframeRange(instanceName, componentPath, minTick, maxTick, multiSelect))
		end,

		SelectKeyframe = function(instanceName, path, tck, multiSelect)
			dispatch(SetSelectedEvents({}))
			dispatch(SelectKeyframe(instanceName, path, tck, multiSelect))
		end,

		SelectKeyframesAtTick = function(tck, multiSelect)
			dispatch(SetSelectedEvents({}))
			dispatch(SelectKeyframesAtTick(tck, multiSelect))
		end,

		DeselectKeyframesAtTick = function(tck, multiSelect)
			dispatch(DeselectKeyframesAtTick(tck, multiSelect))
		end,

		DeselectAllKeyframes = function()
			dispatch(SetSelectedKeyframes{})
			dispatch(SetSelectedEvents({}))
		end,

		DeleteSelectedKeyframes = function(analytics)
			dispatch(AddWaypoint())
			dispatch(DeleteSelectedKeyframes(analytics))
			dispatch(SetRightClickContextInfo({}))
		end,

		SetRightClickContextInfo = function(info)
			dispatch(SetRightClickContextInfo(info))
		end,

		SetSelectedKeyframeData = function(newData)
			dispatch(AddWaypoint())
			dispatch(SetSelectedKeyframeData(newData))
		end,

		RenameKeyframe = function(tck, name, analytics)
			dispatch(AddWaypoint())
			dispatch(RenameKeyframe(tck, name, analytics))
		end,

		QuantizeKeyframes = function()
			dispatch(AddWaypoint())
			dispatch(QuantizeKeyframes())
		end,

		CloseQuantizeWarning = function()
			dispatch(SetNotification("QuantizeWarning", false))
		end,

		CloseSavedToast = function()
			dispatch(SetNotification("Saved", false))
		end,

		CloseLoadedToast = function()
			dispatch(SetNotification("Loaded", false))
		end,

		Pause = function()
			dispatch(Pause())
		end,

		CloseClippedToast = function()
			dispatch(SetNotification("ClippedWarning", false))
		end,

		CloseInvalidAnimationToast = function()
			dispatch(SetNotification("InvalidAnimation", false))
		end,

		GenerateCurve = function(easingStyle, easingDirection)
			dispatch(AddWaypoint())
			dispatch(GenerateCurve(easingStyle, easingDirection))
		end,
	}

	return dispatchToProps
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(DopeSheetController)
