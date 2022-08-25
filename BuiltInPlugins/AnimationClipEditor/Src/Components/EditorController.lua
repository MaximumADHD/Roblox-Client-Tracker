--[[
	Represents the main Editor frame split into two parts. The TrackEditor which handles the
	DopeSheet, Timeline, and ZoomBar. Then there is the other part that handles the playback
	controls and the track list.

	Properties:
		UDim2 Position = position of the frame
		UDim2 Size = size of the frame
		int ZIndex = The draw index of the frame.
]]
local UserInputService = game:GetService("UserInputService")

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Input = require(Plugin.Src.Util.Input)
local Constants = require(Plugin.Src.Util.Constants)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local SignalsContext = require(Plugin.Src.Context.Signals)

local KeyboardListener = Framework.UI.KeyboardListener
local InactiveCover = require(Plugin.Src.Components.InactiveCover)
local ProgressScreen = require(Plugin.Src.Components.ProgressScreen)
local RecordingModeCover = require(Plugin.Src.Components.RecordingModeCover)

local TrackEditor = require(Plugin.Src.Components.TrackEditor)
local TrackList = require(Plugin.Src.Components.TrackList.TrackList)
local TrackActions = require(Plugin.Src.Components.TrackActions)
local TrackListBorder = require(Plugin.Src.Components.TrackList.TrackListBorder)
local AnimationEventsTrack = require(Plugin.Src.Components.TrackList.AnimationEventsTrack)
local TrackScrollbar = require(Plugin.Src.Components.TrackList.TrackScrollbar)
local StartScreen = require(Plugin.Src.Components.StartScreen)
local FloorGrid = require(Plugin.Src.Components.FloorGrid)
local ChangeFPSPrompt = require(Plugin.Src.Components.ChangeFPSPrompt)
local ChangePlaybackSpeedPrompt = require(Plugin.Src.Components.ChangePlaybackSpeedPrompt)
local RigUtils = require(Plugin.Src.Util.RigUtils)
local PathUtils = require(Plugin.Src.Util.PathUtils)

local SettingsButton = require(Plugin.Src.Components.SettingsButton)

local AddTrack = require(Plugin.Src.Thunks.AddTrack)
local SetTracksExpanded_deprecated = require(Plugin.Src.Actions.SetTracksExpanded)
local SetTracksExpanded = require(Plugin.Src.Thunks.SetTracksExpanded)
local SetSelectedTrackInstances = require(Plugin.Src.Actions.SetSelectedTrackInstances)
local SetSelectedTracks = require(Plugin.Src.Actions.SetSelectedTracks)
local MoveSelectedTrack = require(Plugin.Src.Thunks.MoveSelectedTrack)
local SetRightClickContextInfo = require(Plugin.Src.Actions.SetRightClickContextInfo)
local SetMotorData = require(Plugin.Src.Actions.SetMotorData)
local ValueChanged = require(Plugin.Src.Thunks.ValueChanged)
local AddWaypoint = require(Plugin.Src.Thunks.History.AddWaypoint)
local AttachEditor = require(Plugin.Src.Thunks.AttachEditor)
local ReleaseEditor = require(Plugin.Src.Thunks.ReleaseEditor)
local SetEventEditingTick = require(Plugin.Src.Actions.SetEventEditingTick)
local LoadAnimationData = require(Plugin.Src.Thunks.LoadAnimationData)
local SetIsDirty = require(Plugin.Src.Actions.SetIsDirty)
local SetFrameRate = require(Plugin.Src.Actions.SetFrameRate)
local SetPlaybackSpeed = require(Plugin.Src.Thunks.Playback.SetPlaybackSpeed)
local Pause = require(Plugin.Src.Actions.Pause)
local PromoteKeyframeSequence = require(Plugin.Src.Thunks.PromoteKeyframeSequence)
local SetEditorMode = require(Plugin.Src.Actions.SetEditorMode)
local SwitchEditorMode = require(Plugin.Src.Thunks.SwitchEditorMode)
local SetCreatingAnimationFromVideo = require(Plugin.Src.Actions.SetCreatingAnimationFromVideo)
local SetLastSelectedPath = require(Plugin.Src.Actions.SetLastSelectedPath)

local Playback = require(Plugin.Src.Components.Playback)
local InstanceSelector = require(Plugin.Src.Components.InstanceSelector)
local AnimationControlPanel = require(Plugin.Src.Components.AnimationControlPanel.AnimationControlPanel)
local FacialAnimationRecorder = require(Plugin.Src.Components.FacialAnimationRecorder.FacialAnimationRecorder)
local TrackColors = require(Plugin.Src.Components.TrackList.TrackColors)
local PromoteToCurvesPrompt = require(Plugin.Src.Components.PromoteToCurvesPrompt)

local GetFFlagFacialAnimationSupport = require(Plugin.LuaFlags.GetFFlagFacialAnimationSupport)
local GetFFlagFacialAnimationRecordingInStudio = require(Plugin.LuaFlags.GetFFlagFacialAnimationRecordingInStudio)
local GetFFlagRootMotionTrack = require(Plugin.LuaFlags.GetFFlagRootMotionTrack)
local GetFFlagCurveEditor = require(Plugin.LuaFlags.GetFFlagCurveEditor)
local GetFFlagFaceControlsEditorUI = require(Plugin.LuaFlags.GetFFlagFaceControlsEditorUI)
local GetFFlagFaceControlsEditorFixNonChannelPath = require(Plugin.LuaFlags.GetFFlagFaceControlsEditorFixNonChannelPath)
local GetFFlagCurveAnalytics = require(Plugin.LuaFlags.GetFFlagCurveAnalytics)
local GetFFlagCreateAnimationFromVideoAnalytics2 = require(Plugin.LuaFlags.GetFFlagCreateAnimationFromVideoAnalytics2)
local GetFFlagExtendPluginTheme = require(Plugin.LuaFlags.GetFFlagExtendPluginTheme)
local GetFFlagFixSelectionRightArrow = require(Plugin.LuaFlags.GetFFlagFixSelectionRightArrow)
local GetFFlagFixTrackListSelection = require(Plugin.LuaFlags.GetFFlagFixTrackListSelection)

local EditorController = Roact.PureComponent:extend("EditorController")

function EditorController:init()
	self.state = {
		TopTrackIndex = 1,
		AbsoluteSize = Vector2.new(),
		TrackListWidth = Constants.TRACK_LIST_START_WIDTH,
		showContextMenu = false,
		showChangeFPSPrompt = false,
		showChangePlaybackSpeedPrompt = false,
		showPromotePrompt = false,
	}

	self.nameToPart = {}

	self.showChangeFPSPrompt = function()
		self:setState({
			showChangeFPSPrompt = true,
		})
	end

	self.hideChangeFPSPrompt = function()
		self:setState({
			showChangeFPSPrompt = false,
		})
	end

	self.showChangePlaybackSpeedPrompt = function()
		self:setState({
			showChangePlaybackSpeedPrompt = true,
		})
	end

	self.hideChangePlaybackSpeedPrompt = function()
		self:setState({
			showChangePlaybackSpeedPrompt = false,
		})
	end

	self.setTopTrackIndex = function(index)
		local tracks = self.props.Tracks
		if #tracks > 0 then
			self:setState({
				TopTrackIndex = math.clamp(index, 1, #tracks)
			})
		end
	end

	self.onScroll = function(delta)
		local topTrackIndex = self.state.TopTrackIndex
		self.setTopTrackIndex(topTrackIndex - (delta > 0 and 1 or -1))
	end

	self.onSizeUpdate = function(rbx)
		local trackListWidth = math.min(self.state.TrackListWidth,
			rbx.AbsoluteSize.X - Constants.TIMELINE_MIN_WIDTH)
		self:setState({
			AbsoluteSize = rbx.AbsoluteSize,
			TrackListWidth = trackListWidth,
		})
	end

	self.showMenu = function(instanceName, path, trackType, rotationType)
		self.props.Pause()
		self.props.SetRightClickContextInfo({
			Path = path,
			TrackType = trackType,
			RotationType = rotationType,
			InstanceName = instanceName,
		})
		self:setState({
			showContextMenu = true,
		})
	end

	self.hideMenu = function()
		self:setState({
			showContextMenu = false,
		})
	end

	self.showPromotePrompt = function(): ()
		self:setState({
			showPromotePrompt = true,
		})
	end

	self.hidePromotePrompt = function(): ()
		self:setState({
			showPromotePrompt = false,
		})
	end

	self.showAnimationImportProgress = function(): ()
		self.props.SetCreatingAnimationFromVideo(true)
	end

	self.hideAnimationImportProgress = function(): ()
		self.props.SetCreatingAnimationFromVideo(false)
	end

	self.cancelCreateFromVideo = function()
		if GetFFlagCreateAnimationFromVideoAnalytics2() then
			self.props.Analytics:report("onAnimationEditorImportVideoUploadCancel")
		end
		self.hideAnimationImportProgress()
	end

	self.updateTrackListWidth = function(input)
		local xPos = input.Position.X
		local trackListWidth = math.clamp(xPos, Constants.TRACK_LIST_MIN_WIDTH,
			self.state.AbsoluteSize.X - Constants.TIMELINE_MIN_WIDTH)
		self:setState({
			TrackListWidth = trackListWidth,
		})
	end

	self.controlSelectTrack = function(path)
		local props = self.props
		local selectedTracks = props.SelectedTracks
		local setSelectedTracks = props.SetSelectedTracks

		if GetFFlagCurveEditor() then
			if selectedTracks and PathUtils.findPath(selectedTracks, path) then
				setSelectedTracks(PathUtils.removePath(selectedTracks, path))
			else
				if GetFFlagFixTrackListSelection() then
					props.SetLastSelectedPath(path)
				else
					self.lastSelected = path
				end
				setSelectedTracks(Cryo.List.join(selectedTracks or {}, { path }))
			end
		else
			local trackName = path
			if selectedTracks and Cryo.List.find(selectedTracks, trackName) then
				setSelectedTracks(Cryo.List.removeValue(selectedTracks, trackName))
			else
				self.lastSelected = trackName
				setSelectedTracks(Cryo.List.join(selectedTracks or {}, {trackName}))
			end
		end
	end

	self.shiftSelectTrack = function(path)
		local props = self.props
		local tracks = props.Tracks
		local setSelectedTracks = props.SetSelectedTracks
		local trackName = path
		local currentSelectedIndex, lastSelectedIndex
		local lastSelectedPath = self.props.LastSelectedPath
		for index, track in ipairs(tracks) do
			if GetFFlagCurveEditor() then
				if
					(GetFFlagFixTrackListSelection() and lastSelectedPath and track.Name == lastSelectedPath[1])
					or (not GetFFlagFixTrackListSelection() and track.Name == self.lastSelected[1])
				then
					lastSelectedIndex = index
				elseif track.Name == path[1] then
					currentSelectedIndex = index
				end
			else
				if track.Name == self.lastSelected then
					lastSelectedIndex = index
				elseif track.Name == trackName then
					currentSelectedIndex = index
				end
			end
		end
		if currentSelectedIndex ~= nil and lastSelectedIndex ~= nil then
			local startIndex = math.min(currentSelectedIndex, lastSelectedIndex)
			local endIndex = math.max(currentSelectedIndex, lastSelectedIndex)
			local newSelectedTracks = {}
			for i = startIndex, endIndex do
				table.insert(newSelectedTracks, if GetFFlagCurveEditor() then {tracks[i].Name} else tracks[i].Name)
			end
			setSelectedTracks(newSelectedTracks)
		else
			if GetFFlagFixTrackListSelection() then
				self.props.SetLastSelectedPath(path)
			else
				self.lastSelected = if GetFFlagCurveEditor() then path else trackName
			end
			setSelectedTracks(if GetFFlagCurveEditor() then { path } else { trackName })
		end
	end

	self.findCurrentParts = function(selectedTracks, rootInstance)
		local currentParts = {}
		if rootInstance == nil then
			return
		end

		self.KinematicParts, self.PartsToMotors = RigUtils.getRigInfo(rootInstance)
		if selectedTracks and rootInstance and self.KinematicParts and #self.KinematicParts > 0 then
			for _, path in ipairs(selectedTracks) do
				local track = if GetFFlagCurveEditor() then path[1] else path
				local bone = RigUtils.getBoneByName(rootInstance, track)
				if bone then
					table.insert(currentParts, bone)
				else
					table.insert(currentParts, self.nameToPart[track])
				end
			end
		end

		local props = self.props
		local setSelectedTrackInstances = props.SetSelectedTrackInstances
		if (#currentParts > 0) and currentParts then
			setSelectedTrackInstances(currentParts)
		end
	end

	self.onTrackSelected = function(path)
		local props = self.props
		local setSelectedTracks = props.SetSelectedTracks
		local animationData = self.props.AnimationData
		local editorMode = self.props.EditorMode

		if self.controlDown then
			self.controlSelectTrack(path)
		elseif (not GetFFlagCurveEditor() or not AnimationData.isChannelAnimation(animationData)) and self.shiftDown then
			self.shiftSelectTrack(path)
		else
			if GetFFlagFixTrackListSelection() then
				props.SetLastSelectedPath(path)
			else
				self.lastSelected = path
			end
			setSelectedTracks({ path })
		end
		self.findCurrentParts({path}, props.RootInstance)
		if GetFFlagCurveEditor() then
			props.Analytics:report("onTrackSelected", path[1], "TrackList", editorMode)
		else
			props.Analytics:report("onTrackSelected", path, "TrackList", editorMode)
		end
	end

	self.onPartSelected = function(path)
		local props = self.props
		local setSelectedTracks = props.SetSelectedTracks
		local inputObjects = UserInputService:GetKeysPressed()

		for _, input in ipairs(inputObjects) do
			if Input.isControl(input.KeyCode) then
				self.controlSelectTrack(path)
				return
			end
		end
		if GetFFlagFixTrackListSelection() then
			props.SetLastSelectedPath(path)
		else
			self.lastSelected = path
		end
		setSelectedTracks({ path })
	end

	self.addTrackWrapper = function(instanceName, trackName, trackType)
		if GetFFlagCurveEditor() then
			self.props.AddTrack(instanceName, trackName, trackType, nil, nil, self.props.Analytics)
		else
			self.props.AddTrack_deprecated2(instanceName, trackName, trackType, self.props.Analytics)
		end
	end

	self.createAnimationWrapper = function(name)
		if GetFFlagFacialAnimationSupport() or self.props.Analytics then
			self.props.CreateAnimation(name, self.props.Analytics)
		end
	end

	self.attachEditorWrapper = function()
		if GetFFlagFacialAnimationSupport() or self.props.Analytics then
			self.props.AttachEditor(self.props.Analytics)
		end
	end

	self.applyValueToFacsSliderPartners = function(instanceName, path, trackType, tck, value)

		if not GetFFlagFaceControlsEditorUI() then return end

		if GetFFlagFaceControlsEditorFixNonChannelPath() then
			if trackType ~= Constants.TRACK_TYPES.Facs then return end
		else
			if (not trackType) == Constants.TRACK_TYPES.Facs then return end
		end

		local facsName = path[1]
		local crossMapping = Constants.FacsCrossMappings[facsName]

		--for eyesdragbox we set the counter direction to 0
		if value ~= 0 then
			if facsName == Constants.FacsNames.EyesLookLeft then
				self.props.ValueChanged(instanceName, {Constants.FacsNames.EyesLookRight}, trackType, tck, 0, self.props.Analytics)
			elseif facsName == Constants.FacsNames.EyesLookRight then
				self.props.ValueChanged(instanceName, {Constants.FacsNames.EyesLookLeft}, trackType, tck, 0, self.props.Analytics)
			elseif facsName == Constants.FacsNames.EyesLookUp then
				self.props.ValueChanged(instanceName, {Constants.FacsNames.EyesLookDown}, trackType, tck, 0, self.props.Analytics)
			elseif facsName == Constants.FacsNames.EyesLookDown then
				self.props.ValueChanged(instanceName, {Constants.FacsNames.EyesLookUp}, trackType, tck, 0, self.props.Analytics)
			end
		end
		if crossMapping ~= nil or not GetFFlagFaceControlsEditorFixNonChannelPath() then
			--in the face controls editor some sliders control 2 facs properties,
			--for those also when the value is increased to one side,
			--the other side gets set to 0
			local sliderGroup = crossMapping.sliderGroup
			if sliderGroup then
				if value >0 then
					local groupPartnerName = nil
					if crossMapping.indexInGroup == 1 then
						groupPartnerName = sliderGroup[2]
					else
						groupPartnerName = sliderGroup[1]
					end

					self.props.ValueChanged(instanceName, {groupPartnerName}, trackType, tck, 0, self.props.Analytics)
				end
			end

			-- also apply value change to symmetry partner for facs values if symmetry setting is enabled
			if self.props.SymmetryEnabled then
				local symmetryPartner = crossMapping.symmetryPartner
				if symmetryPartner then
					self.applyValueToSymmetryPartner(instanceName, symmetryPartner, trackType, tck, value)
				end
			end
		end
	end

	self.applyValueToSymmetryPartner = function(instanceName, symmetryPartner, trackType, tck, value)
		self.props.ValueChanged(instanceName, {symmetryPartner}, trackType, tck, value, self.props.Analytics)
		--if the symmetry partner controls multiple facs, too,
		--if value >0 for the symmetry partner set the value of the group partner to 0
		if value == nil or value <= 0 then return end
		local crossMappingSymmetryPartner = Constants.FacsCrossMappings[symmetryPartner]
		local sliderGroup = crossMappingSymmetryPartner.sliderGroup
		if not sliderGroup then return end
		local groupPartnerName = nil
		if crossMappingSymmetryPartner.indexInGroup == 1 then
			groupPartnerName = sliderGroup[2]
		else
			groupPartnerName = sliderGroup[1]
		end

		self.props.ValueChanged(instanceName, {groupPartnerName}, trackType, tck, 0, self.props.Analytics)
	end

	self.onValueChanged = function(instanceName, path, trackType, tck, value)
		local animationData = self.props.AnimationData
		if not AnimationData.isChannelAnimation(animationData) then
			self.props.ValueChanged(instanceName, path, trackType, tck, value, self.props.Analytics)
		else
			local rotationType = GetFFlagCurveEditor() and self.props.DefaultRotationType or Constants.TRACK_TYPES.EulerAngles
			local eulerAnglesOrder = self.props.DefaultEulerAnglesOrder
			local trackName = path[1]
			local track = AnimationData.getTrack(animationData, instanceName, {trackName})
			if track and track.Components and track.Components[Constants.PROPERTY_KEYS.Rotation] then
				rotationType = track.Components[Constants.PROPERTY_KEYS.Rotation].Type
				if GetFFlagCurveEditor() and rotationType == Constants.TRACK_TYPES.EulerAngles then
					eulerAnglesOrder = track.EulerAnglesOrder
				end
			end

			-- Change the value of all tracks
			TrackUtils.traverseValue(trackType, value, function(_trackType, relPath, _value)
				self.props.ValueChanged(instanceName, Cryo.List.join(path, relPath), _trackType, tck, _value, self.props.Analytics)
			end, rotationType, eulerAnglesOrder)
		end
		if GetFFlagFaceControlsEditorUI() then
			if trackType == Constants.TRACK_TYPES.Facs then
				self.applyValueToFacsSliderPartners(instanceName, path, trackType, tck, value)
			end
		end
	end

	self.promoteKeyframeSequence = function()
		self.props.PromoteKeyframeSequence(self.props.Analytics)
		if GetFFlagCurveAnalytics() then
			self.props.SwitchEditorMode(Constants.EDITOR_MODE.CurveCanvas, self.props.Analytics)
		else
			self.props.SetEditorMode(Constants.EDITOR_MODE.CurveCanvas)
		end
	end
end

function EditorController:willUpdate(nextProps)
	if (nextProps.RootInstance ~= self.props.RootInstance or next(self.nameToPart) == nil) and nextProps.RootInstance ~= nil then
		self.KinematicParts, self.PartsToMotors = RigUtils.getRigInfo(nextProps.RootInstance)
		for _, part in ipairs(self.KinematicParts) do
			self.nameToPart[part.Name] = part
		end
		if GetFFlagRootMotionTrack() then
			local rootPart = RigUtils.findRootPart(nextProps.RootInstance)
			self.nameToPart[rootPart.Name] = rootPart
		end
	end

	-- if the selected tracks has changed, update the selected track instances
	if nextProps.SelectedTracks ~= self.props.SelectedTracks then
		self.findCurrentParts(nextProps.SelectedTracks, nextProps.RootInstance)
	end

	if nextProps.Playhead ~= self.props.Playhead then
		self.props.Signals:get(Constants.SIGNAL_KEYS.ScrubberChanged):Fire()
	end
end

function EditorController:render()
	local props = self.props
	local state = self.state
	local theme = GetFFlagExtendPluginTheme() and props.Stylizer or props.Stylizer.PluginTheme
	local startTick = 0
	local endTick = 0
	local lastTick = 0

	local active = props.Active
	local playhead = props.Playhead
	local showAsSeconds = props.ShowAsSeconds
	local editingLength = props.EditingLength
	local topTrackIndex = state.TopTrackIndex
	local trackListWidth = state.TrackListWidth
	local tracks = props.Tracks
	local unusedTracks = props.UnusedTracks
	local unusedFacs = props.UnusedFacs
	local scroll = not GetFFlagCurveEditor() and props.Scroll or nil
	local zoom = not GetFFlagCurveEditor() and props.Zoom or nil
	local horizontalScroll = props.HorizontalScroll
	local horizontalZoom = props.HorizontalZoom
	local verticalScroll = props.VerticalScroll
	local verticalZoom = props.VerticalZoom
	local animationData = props.AnimationData
	local showEvents = props.ShowEvents
	local selectedTracks = props.SelectedTracks
	local rootInstance = props.RootInstance

	local absoluteSize = state.AbsoluteSize
	local isInRecordMode = props.PlayState == Constants.PLAY_STATE.Record
	local inReviewState = props.inReviewState
	local showChangeFPSPrompt = state.showChangeFPSPrompt
	local showChangePlaybackSpeedPrompt = state.showChangePlaybackSpeedPrompt
	local showEditor = animationData ~= nil
	local showPromotePrompt = state.showPromotePrompt
	local isChannelAnimation = AnimationData.isChannelAnimation(animationData)

	local creatingAnimationFromVideo = props.CreatingAnimationFromVideo
	local animationImportProgress = props.AnimationImportProgress
	local animationImportStatus = props.AnimationImportStatus

	local selectedPaths = {}
	if not GetFFlagCurveEditor() and selectedTracks then
		for _, track in pairs(selectedTracks) do
			table.insert(selectedPaths, {track})
		end
	end

	if animationData then
		local range
		if GetFFlagCurveEditor() then
			range = TrackUtils.getZoomRange(props.AnimationData, horizontalScroll, horizontalZoom, editingLength)
		else
			range = TrackUtils.getZoomRange(props.AnimationData, scroll, zoom, editingLength)
		end
		startTick = range.Start
		endTick = range.End
		lastTick = animationData.Metadata.EndTick
	end

	showEvents = showEvents and showEditor

	local rootName
	if props.RootInstance and props.RootInstance.Name then
		rootName = props.RootInstance.Name
	else
		rootName = ""
	end

	local zIndex = props.ZIndex or 1
	local position = props.Position
	local size = props.Size

	local colorsPosition
	if GetFFlagCurveEditor() then
		colorsPosition = (showEvents and Constants.TRACK_HEIGHT or 0) + Constants.SUMMARY_TRACK_HEIGHT
	else
		colorsPosition = (showEvents and Constants.TRACK_HEIGHT or 0) + Constants.TIMELINE_HEIGHT
		+ Constants.SUMMARY_TRACK_HEIGHT
	end

	local showCurveCanvas = props.EditorMode == Constants.EDITOR_MODE.CurveCanvas
	local showDopeSheet = props.EditorMode == Constants.EDITOR_MODE.DopeSheet

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		ZIndex = zIndex,
		Position = position,
		Size = size,
		[Roact.Change.AbsoluteSize] = self.onSizeUpdate,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Top,
		}),

		TrackListAndControlContainer = Roact.createElement("Frame", {
			BackgroundTransparency = GetFFlagCurveEditor() and 0 or 1,
			BackgroundColor3 = GetFFlagCurveEditor() and theme.backgroundColor or nil,
			BorderSizePixel = GetFFlagCurveEditor() and 0 or nil,
			Size = UDim2.new(0, trackListWidth, 1, 0),
			LayoutOrder = 0,
			ZIndex = GetFFlagCurveEditor() and 2 or nil,
		}, {
			Layout = GetFFlagCurveEditor() and Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}) or nil,

			AnimationControlPanel = Roact.createElement(AnimationControlPanel, {
				StartTick = startTick,
				EndTick = endTick,
				Playhead = playhead,
				EditingLength = editingLength,
				AnimationData = props.AnimationData,
				ShowAsSeconds = showAsSeconds,
				IsChannelAnimation = isChannelAnimation,
				LayoutOrder = GetFFlagCurveEditor() and 0 or nil,
				ShowAnimationImportProgress = self.showAnimationImportProgress,
				HideAnimationImportProgress = self.hideAnimationImportProgress,
			}),

			EventsAndTracks = Roact.createElement("ImageButton", {
				Size = UDim2.new(0, trackListWidth, 1, -Constants.TIMELINE_HEIGHT),
				Position = not GetFFlagCurveEditor() and UDim2.new(0, 0, 0, Constants.TIMELINE_HEIGHT) or nil,
				BackgroundTransparency = 1,
				ImageTransparency = 1,
				LayoutOrder = GetFFlagCurveEditor() and 1 or nil,
				[Roact.Event.Activated] = function()
					props.SetSelectedTracks(if GetFFlagFixSelectionRightArrow() then {} else nil)
					if GetFFlagFixTrackListSelection() then
						props.SetLastSelectedPath(nil)
					end
					props.SetSelectedTrackInstances({})
				end,
			}, {
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),

				EventsTitle = showEvents and Roact.createElement(AnimationEventsTrack, {
					LayoutOrder = 0,
					Indent = 1,
					OnButtonClick = function()
						props.SetEventEditingTick(playhead)
					end,
				}),

				TrackListAndScrollBar = GetFFlagCurveEditor() and Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, showEvents and -Constants.TRACK_HEIGHT or 0),
					LayoutOrder = 1,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
				}, {
					TrackList = Roact.createElement(TrackList, {
						Size = UDim2.new(1, -Constants.SCROLL_BAR_SIZE - 1, 1, 0),
						TopTrackIndex = topTrackIndex,
						Tracks = tracks,
						SelectedTracks = selectedTracks,
						UnusedTracks = unusedTracks,
						UnusedFacs = unusedFacs,
						AnimationData = animationData,
						Playhead = playhead,
						RootName = rootName,

						OnScroll = self.onScroll,
						OpenContextMenu = self.showMenu,
						ToggleTrackExpanded = props.SetTracksExpanded,
						OnTrackAdded = self.addTrackWrapper,
						OnValueChanged = self.onValueChanged,
						OnChangeBegan = props.AddWaypoint,
						OnTrackSelected = self.onTrackSelected,
					}),

					TrackScrollbarFrame = Roact.createElement("Frame", {
						Size = UDim2.new(0, Constants.SCROLL_BAR_SIZE, 1, 0),
						Position = UDim2.new(1, -Constants.SCROLL_BAR_SIZE, 0, 0),
						BackgroundColor3 = theme.scrollBarTheme.backgroundColor,
					}, {
						TrackScrollbar = Roact.createElement(TrackScrollbar, {
							Size = UDim2.new(1, 0, 1, -Constants.SCROLL_BAR_SIZE - 1),
							TopTrackIndex = topTrackIndex,
							NumTracks = tracks and #tracks or 0,
							SetTopTrackIndex = self.setTopTrackIndex,
							OnScroll = self.onScroll,
						})
					}),
				}) or nil,

				TrackList = not GetFFlagCurveEditor() and Roact.createElement(TrackList, {
					Size = showEvents and UDim2.new(1, 0, 1, -Constants.TRACK_HEIGHT) or UDim2.new(1, 0, 1, 0),
					LayoutOrder = 1,
					TopTrackIndex = topTrackIndex,
					Tracks = tracks,
					SelectedTracks = selectedTracks,
					UnusedTracks = unusedTracks,
					UnusedFacs = unusedFacs,
					AnimationData = animationData,
					Playhead = playhead,
					RootName = rootName,

					OnScroll = self.onScroll,
					OpenContextMenu = self.showMenu,
					ToggleTrackExpanded = props.SetTracksExpanded,
					OnTrackAdded = self.addTrackWrapper,
					OnValueChanged = self.onValueChanged,
					OnChangeBegan = props.AddWaypoint,
					OnTrackSelected = self.onTrackSelected,
				}) or nil,

				KeyboardListener = Roact.createElement(KeyboardListener, {
					OnKeyPressed = function(input)
						if Input.isUp(input.KeyCode) then
							props.MoveSelectedTrack(-1)
						elseif Input.isDown(input.KeyCode) then
							props.MoveSelectedTrack(1)
						elseif Input.isLeft(input.KeyCode) then
							if GetFFlagCurveEditor() then
								props.CloseSelectedTracks(selectedTracks)
							else
								props.CloseSelectedTracks_deprecated(selectedPaths)
							end
						elseif Input.isRight(input.KeyCode) then
							if GetFFlagCurveEditor() then
								props.ExpandSelectedTracks(selectedTracks)
							else
								props.ExpandSelectedTracks_deprecated(selectedPaths)
							end
						elseif Input.isControl(input.KeyCode) then
							self.controlDown = true
						elseif Input.isShift(input.KeyCode) then
							self.shiftDown = true
						end
					end,
					OnKeyReleased = function(input)
						if Input.isControl(input.KeyCode) then
							self.controlDown = false
						elseif Input.isShift(input.KeyCode) then
							self.shiftDown = false
						end
					end,
				}),

				IgnoreLayout = GetFFlagCurveEditor() and showEditor and Roact.createElement("Folder", {}, {
					TrackColors = Roact.createElement(TrackColors, {
						Tracks = tracks,
						TopTrackIndex = topTrackIndex,
						Position = UDim2.new(0, 0, 0, colorsPosition),
						MaxHeight = absoluteSize.Y - colorsPosition,
					}),
				}) or nil,
			}),
		}),

		TrackListBorder = Roact.createElement(TrackListBorder, {
			OnDragMoved = self.updateTrackListWidth,
			ZIndex = GetFFlagCurveEditor() and 3 or nil,
		}),

		TrackEditor = showEditor and Roact.createElement(TrackEditor, {
			ZIndex = zIndex,
			TopTrackIndex = topTrackIndex,
			Tracks = if GetFFlagCurveEditor() then nil else tracks,
			LayoutOrder = 2,
			Size = UDim2.new(1, -trackListWidth - Constants.SCROLL_BAR_SIZE - Constants.SCROLL_BAR_PADDING, 1, 0),
			StartTick = startTick,
			EndTick = endTick,
			LastTick = lastTick,
			Playhead = playhead,
			FrameRate = props.FrameRate,
			ShowAsSeconds = showAsSeconds,
			ShowEvents = showEvents,
			Scroll = not GetFFlagCurveEditor() and scroll or nil,
			Zoom = not GetFFlagCurveEditor() and zoom or nil,
			HorizontalScroll = horizontalScroll,
			HorizontalZoom = horizontalZoom,
			VerticalScroll = verticalScroll,
			VerticalZoom = verticalZoom,
			OnScroll = self.onScroll,
			IsChannelAnimation = isChannelAnimation,
			ColorsPosition = GetFFlagCurveEditor() and colorsPosition or nil,
			OnPromoteRequested = self.showPromotePrompt,
		}),

		SettingsAndVerticalScrollBar = showEditor and Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(0, Constants.SCROLL_BAR_SIZE, 1, 0),
			LayoutOrder = 3,
		}, {
			SettingsButton = Roact.createElement(SettingsButton, {
				OnChangeFPS = self.showChangeFPSPrompt,
				OnChangePlaybackSpeed = self.showChangePlaybackSpeedPrompt,
			}),

			TrackScrollbar = (not GetFFlagCurveEditor() or showDopeSheet) and Roact.createElement(TrackScrollbar, {
				Size = UDim2.new(1, 0, 1, -Constants.SCROLL_BAR_SIZE - Constants.TIMELINE_HEIGHT - 1),
				Position = UDim2.new(0, 0, 0, Constants.TIMELINE_HEIGHT),
				TopTrackIndex = topTrackIndex,
				NumTracks = tracks and #tracks or 0,
				SetTopTrackIndex = self.setTopTrackIndex,
				OnScroll = self.onScroll,
			}) or nil,
		}),

		StartScreen = not showEditor and Roact.createElement(StartScreen, {
			RootInstance = rootInstance,
			Size = UDim2.new(1, -trackListWidth, 1, 0),
			LayoutOrder = 2,
			OnCreateAnimation = self.createAnimationWrapper,
			PlayState = props.PlayState,
			inReviewState = props.inReviewState
		}),

		Playback = active and showEditor and Roact.createElement(Playback),
		-- TODO: Maybe we can just put all of the screens in the FacialAnimationRecorder and present them through Portals
		FacialAnimationRecorder = active and GetFFlagFacialAnimationRecordingInStudio() and (isInRecordMode or inReviewState) and Roact.createElement(FacialAnimationRecorder),	
		RecordingModeCover = active and GetFFlagFacialAnimationRecordingInStudio() and isInRecordMode and Roact.createElement(RecordingModeCover),
		InstanceSelector = active and Roact.createElement(InstanceSelector),

		FloorGrid = active and showEditor and Roact.createElement(FloorGrid, {
			RootInstance = props.RootInstance,
		}),

		TrackActions = active and showEditor and Roact.createElement(TrackActions, {
			ShowMenu = state.showContextMenu,
			OnMenuOpened = self.hideMenu,
			IsChannelAnimation = isChannelAnimation,
		}),

		IgnoreLayout = not GetFFlagCurveEditor() and showEditor and Roact.createElement("Folder", {}, {
			TrackColors = Roact.createElement(TrackColors, {
				Tracks = tracks,
				TopTrackIndex = topTrackIndex,
				Position = UDim2.new(0, 0, 0, colorsPosition),
				MaxHeight = absoluteSize.Y - Constants.TRACK_HEIGHT - colorsPosition,
			}),
		}) or nil,

		InactiveCover = not active and Roact.createElement(InactiveCover, {
			OnFocused = self.attachEditorWrapper,
		}),

		ProgressScreen = creatingAnimationFromVideo and Roact.createElement(ProgressScreen, {
			OnCancelled = self.cancelCreateFromVideo,
			Progress = animationImportProgress,
			Status = animationImportStatus,
		}),

		ChangeFPSPrompt = showChangeFPSPrompt and Roact.createElement(ChangeFPSPrompt, {
			FrameRate = props.FrameRate,
			SetFrameRate = props.SetFrameRate,
			OnClose = self.hideChangeFPSPrompt,
		}),

		ChangePlaybackSpeedPrompt = showChangePlaybackSpeedPrompt and Roact.createElement(ChangePlaybackSpeedPrompt, {
			PlaybackSpeed = props.PlaybackSpeed,
			SetPlaybackSpeed = props.SetPlaybackSpeed,
			OnClose = self.hideChangePlaybackSpeedPrompt,
		}),

		PromotePrompt = if GetFFlagCurveEditor() and showPromotePrompt
			then Roact.createElement(PromoteToCurvesPrompt, {
				OnPromote = self.promoteKeyframeSequence,
				OnClose = self.hidePromotePrompt,
			})
			else nil,
	})
end

function EditorController:didMount()
	local props = self.props
	local snapMode = props.SnapMode

	local timelineUnit = props.ShowAsSeconds and "Seconds" or "Frames"
	props.AttachEditor(props.Analytics)
	props.Analytics:report("onEditorOpened", timelineUnit, false, snapMode)
	if GetFFlagCurveAnalytics() then
		self.props.SetEditorMode(Constants.EDITOR_MODE.DopeSheet)
	end
	self.openedTimestamp = os.time()
end

function EditorController:willUnmount()
	local props = self.props
	if GetFFlagFaceControlsEditorUI() then
		RigUtils.resetAllFacsValuesInFaceControls(props.RootInstance)
	end
	props.ReleaseEditor(props.Analytics)
	if GetFFlagCurveAnalytics() then
		props.Analytics:report("onEditorModeSwitch", props.EditorMode, nil, os.time() - props.EditorModeSwitchTime)
	end
	props.Analytics:report("onEditorClosed", os.time() - self.openedTimestamp)
end

local function mapStateToProps(state)
	local status = state.Status
	return {
		Active = state.Status.Active,
		EditingLength = state.Status.EditingLength,
		Playhead = state.Status.Playhead,
		ShowAsSeconds = state.Status.ShowAsSeconds,
		SnapMode = state.Status.SnapMode,
		AnimationData = state.AnimationData,
		Scroll = not GetFFlagCurveEditor() and status.Scroll or nil,
		Zoom = not GetFFlagCurveEditor() and status.Zoom or nil,
		HorizontalScroll = status.HorizontalScroll,
		HorizontalZoom = status.HorizontalZoom,
		VerticalScroll = status.VerticalScroll,
		VerticalZoom = status.VerticalZoom,
		Tracks = status.Tracks,
		UnusedTracks = status.UnusedTracks,
		UnusedFacs = status.UnusedFacs,
		RootInstance = status.RootInstance,
		ShowEvents = status.ShowEvents,
		IKEnabled = status.IKEnabled,
		IKMode = status.IKMode,
		MotorData = status.MotorData,
		PinnedParts = status.PinnedParts,
		SelectedTracks = status.SelectedTracks,
		LastSelectedPath = status.LastSelectedPath,
		PlayState = status.PlayState,
		inReviewState = status.inReviewState,
		FrameRate = status.FrameRate,
		Analytics = state.Analytics,
		PlaybackSpeed = status.PlaybackSpeed,
		EditorMode = status.EditorMode,
		EditorModeSwitchTime = status.EditorModeSwitchTime,
		DefaultRotationType = status.DefaultRotationType,
		DefaultEulerAnglesOrder = status.DefaultEulerAnglesOrder,
		SymmetryEnabled = status.SymmetryEnabled,
		AnimationImportProgress = status.AnimationImportProgress,
		AnimationImportStatus = status.AnimationImportStatus,
		CreatingAnimationFromVideo = status.CreatingAnimationFromVideo,
	}
end

local function mapDispatchToProps(dispatch)
	local dispatchToProps = {
		SetLastSelectedPath = function(path: PathUtils.Path?): ()
			dispatch(SetLastSelectedPath(path))
		end,

		SetTracksExpanded = function(paths, expanded)
			dispatch(SetTracksExpanded(paths, expanded, false))
		end,

		SetSelectedTrackInstances = function(trackInstances)
			dispatch(SetSelectedTrackInstances(trackInstances))
		end,

		SetSelectedTracks = function(tracks)
			dispatch(SetSelectedTracks(tracks))
		end,

		MoveSelectedTrack = function(movement)
			dispatch(MoveSelectedTrack(movement))
		end,

		ExpandSelectedTracks = function(paths)
			dispatch(SetTracksExpanded(paths, true, true))
		end,

		ExpandSelectedTracks_deprecated = function(tracks)
			dispatch(SetTracksExpanded_deprecated(tracks, true))
		end,

		CloseSelectedTracks = function(paths)
			dispatch(SetTracksExpanded(paths, false, true))
		end,

		CloseSelectedTracks_deprecated = function(tracks)
			dispatch(SetTracksExpanded_deprecated(tracks, false))
		end,

		AddTrack = function(instance, track, trackType, rotationType, EulerAnglesOrder, analytics)
			dispatch(AddWaypoint())
			dispatch(AddTrack(instance, track, trackType, rotationType, EulerAnglesOrder, analytics))
		end,

		AddTrack_deprecated2 = not GetFFlagCurveEditor() and function(instance, track, trackType, analytics)
			dispatch(AddWaypoint())
			dispatch(AddTrack(instance, track, trackType, analytics))
		end,

		SetRightClickContextInfo = function(info)
			dispatch(SetRightClickContextInfo(info))
		end,

		ValueChanged = function(instanceName, path, trackType, tck, value, analytics)
			dispatch(ValueChanged(instanceName, path, trackType, tck, value, analytics))
		end,

		AddWaypoint = function()
			dispatch(AddWaypoint())
		end,

		AttachEditor = function(analytics)
			dispatch(AttachEditor(analytics))
		end,

		ReleaseEditor = function(analytics)
			dispatch(ReleaseEditor(analytics))
		end,

		SetEventEditingTick = function(tck)
			dispatch(SetEventEditingTick(tck))
		end,

		SetMotorData = function(motorData)
			dispatch(SetMotorData(motorData))
		end,

		CreateAnimation = function(name, analytics)
			local newData = AnimationData.newRigAnimation(name)
			dispatch(LoadAnimationData(newData, analytics))
			dispatch(SetIsDirty(false))
		end,

		SetFrameRate = function(frameRate)
			dispatch(SetFrameRate(frameRate))
		end,

		Pause = function()
			dispatch(Pause())
		end,

		SetPlaybackSpeed = function(playbackSpeed)
			dispatch(SetPlaybackSpeed(playbackSpeed))
		end,

		PromoteKeyframeSequence = function(analytics)
			dispatch(PromoteKeyframeSequence(analytics))
		end,

		SetEditorMode = function(editorMode)
			dispatch(SetEditorMode(editorMode))
		end,

		SwitchEditorMode = function(editorMode, analytics)
			dispatch(SwitchEditorMode(editorMode, analytics))
		end,

		SetCreatingAnimationFromVideo = function(creatingAnimationFromVideo)
			dispatch(SetCreatingAnimationFromVideo(creatingAnimationFromVideo))
		end,
	}

	return dispatchToProps
end

EditorController = withContext({
	Analytics = ContextServices.Analytics,
	Signals = SignalsContext,
	Stylizer = ContextServices.Stylizer,
})(EditorController)

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(EditorController)
