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

local UseLuaDraggers = require(Plugin.LuaFlags.GetFFlagUseLuaDraggers)

local KeyboardListener = Framework.UI.KeyboardListener
local InactiveCover = require(Plugin.Src.Components.InactiveCover)

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
local SetIsPlaying = require(Plugin.Src.Actions.SetIsPlaying)
local SetPlayState = require(Plugin.Src.Actions.SetPlayState)
local SetIsDirty = require(Plugin.Src.Actions.SetIsDirty)
local SetFrameRate = require(Plugin.Src.Actions.SetFrameRate)
local SetPlaybackSpeed = require(Plugin.Src.Thunks.Playback.SetPlaybackSpeed)
local Pause = require(Plugin.Src.Actions.Pause)

local Playback = require(Plugin.Src.Components.Playback)
local InstanceSelector = require(Plugin.Src.Components.InstanceSelector)
local JointSelector = require(Plugin.Src.Components.JointManipulator.JointSelector)
local AnimationControlPanel = require(Plugin.Src.Components.AnimationControlPanel.AnimationControlPanel)
local TrackColors = require(Plugin.Src.Components.TrackList.TrackColors)

local GetFFlagFacialAnimationSupport = require(Plugin.LuaFlags.GetFFlagFacialAnimationSupport)
local GetFFlagChannelAnimations = require(Plugin.LuaFlags.GetFFlagChannelAnimations)
local GetFFlagMoarMediaControls = require(Plugin.LuaFlags.GetFFlagMoarMediaControls)
local GetFFlagQuaternionChannels = require(Plugin.LuaFlags.GetFFlagQuaternionChannels)
local GetFFlagRootMotionTrack = require(Plugin.LuaFlags.GetFFlagRootMotionTrack)

local EditorController = Roact.PureComponent:extend("EditorController")

function EditorController:init()
	self.state = {
		TopTrackIndex = 1,
		AbsoluteSize = Vector2.new(),
		TrackListWidth = Constants.TRACK_LIST_START_WIDTH,
		showContextMenu = false,
		showChangeFPSPrompt = false,
		showChangePlaybackSpeedPrompt = false,
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

	if GetFFlagChannelAnimations() then
		self.showMenu = function(instanceName, path, trackType, rotationType)
			if GetFFlagMoarMediaControls() then
				self.props.Pause()
			else
				self.props.SetIsPlaying(false)
			end
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
	else
		self.showMenu = function(track)
			if GetFFlagMoarMediaControls() then
				self.props.Pause()
			else
				self.props.SetIsPlaying(false)
			end
			self.props.SetRightClickContextInfo({
				TrackName = track.Name,
				TrackType = (GetFFlagFacialAnimationSupport() or GetFFlagChannelAnimations()) and track.Type or nil,
				InstanceName = track.Instance,
			})
			self:setState({
				showContextMenu = true,
			})
		end
	end

	self.hideMenu = function()
		self:setState({
			showContextMenu = false,
		})
	end

	self.updateTrackListWidth = function(input)
		local xPos = input.Position.X
		local trackListWidth = math.clamp(xPos, Constants.TRACK_LIST_MIN_WIDTH,
			self.state.AbsoluteSize.X - Constants.TIMELINE_MIN_WIDTH)
		self:setState({
			TrackListWidth = trackListWidth,
		})
	end

	self.controlSelectTrack = function(trackName)
		local props = self.props
		local selectedTracks = props.SelectedTracks
		local setSelectedTracks = props.SetSelectedTracks

		if selectedTracks and Cryo.List.find(selectedTracks, trackName) then
			setSelectedTracks(Cryo.List.removeValue(selectedTracks, trackName))
		else
			self.lastSelected = trackName
			setSelectedTracks(Cryo.List.join(selectedTracks or {}, {trackName}))
		end
	end

	self.shiftSelectTrack = function(trackName)
		local props = self.props
		local tracks = props.Tracks
		local setSelectedTracks = props.SetSelectedTracks

		local currentSelectedIndex, lastSelectedIndex
		for index, track in ipairs(tracks) do
			if track.Name == self.lastSelected then
				lastSelectedIndex = index
			elseif track.Name == trackName then
				currentSelectedIndex = index
			end
		end
		if currentSelectedIndex ~= nil and lastSelectedIndex ~= nil then
			local startIndex = math.min(currentSelectedIndex, lastSelectedIndex)
			local endIndex = math.max(currentSelectedIndex, lastSelectedIndex)
			local newSelectedTracks = {}
			for i = startIndex, endIndex do
				table.insert(newSelectedTracks, tracks[i].Name)
			end
			setSelectedTracks(newSelectedTracks)
		else
			self.lastSelected = trackName
			setSelectedTracks({trackName})
		end
	end

	self.findCurrentParts = function(selectedTracks, rootInstance)
		local currentParts = {}
		if rootInstance == nil then
			return
		end
		self.KinematicParts, self.PartsToMotors = RigUtils.getRigInfo(rootInstance)
		if selectedTracks and rootInstance and self.KinematicParts and #self.KinematicParts > 0 then
			for _, track in ipairs(selectedTracks) do
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

	self.onTrackSelected = function(trackName)
		local props = self.props
		local setSelectedTracks = props.SetSelectedTracks

		if self.controlDown then
			self.controlSelectTrack(trackName)
		elseif self.shiftDown then
			self.shiftSelectTrack(trackName)
		else
			self.lastSelected = trackName
			setSelectedTracks({trackName})
		end
		if UseLuaDraggers() then
			self.findCurrentParts({trackName}, props.RootInstance)
		end
		props.Analytics:report("onTrackSelected", trackName, "TrackList")
	end

	self.onPartSelected = function(trackName)
		local props = self.props
		local setSelectedTracks = props.SetSelectedTracks
		local inputObjects = UserInputService:GetKeysPressed()

		for _, input in ipairs(inputObjects) do
			if Input.isControl(input.KeyCode) then
				self.controlSelectTrack(trackName)
				return
			end
		end
		self.lastSelected = trackName
		setSelectedTracks({trackName})
	end

	self.addTrackWrapper = function(instanceName, trackName, trackType)
		if (GetFFlagFacialAnimationSupport() or GetFFlagChannelAnimations()) then
			self.props.AddTrack(instanceName, trackName, trackType, self.props.Analytics)
		elseif self.props.Analytics then
			self.props.AddTrack_deprecated(instanceName, trackName, self.props.Analytics)
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

	self.onValueChanged = function(instanceName, path, trackType, tick, value)
		local animationData = self.props.AnimationData
		if not AnimationData.isChannelAnimation(animationData) then
			self.props.ValueChanged(instanceName, path, trackType, tick, value, self.props.Analytics)
		else
			local rotationType
			if GetFFlagQuaternionChannels() then
				rotationType = Constants.TRACK_TYPES.EulerAngles
				-- We need to know if we're dealing with a quaternion rotation
				local trackName = path[1]
				local track = AnimationData.getTrack(animationData, instanceName, {trackName})
				if track and track.Components[Constants.PROPERTY_KEYS.Rotation] then
					rotationType = track.Components[Constants.PROPERTY_KEYS.Rotation].Type
				end
			else
				rotationType = Constants.TRACK_TYPES.Rotation
			end
			-- Change the value of all tracks
			TrackUtils.traverseValue(trackType, value, function(_trackType, relPath, _value)
				self.props.ValueChanged(instanceName, Cryo.List.join(path, relPath), _trackType, tick, _value, self.props.Analytics)
			end, rotationType)
		end
	end
end

if UseLuaDraggers() then
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
end

function EditorController:render()
	local props = self.props
	local state = self.state

	local startTick = 0
	local endTick = 0
	local lastTick = 0

	local active = props.Active
	local playhead = props.Playhead
	local isPlaying
	if GetFFlagMoarMediaControls() then
		isPlaying = props.PlayState ~= Constants.PLAY_STATE.Pause
	else
		isPlaying = props.IsPlaying
	end
	local showAsSeconds = props.ShowAsSeconds
	local editingLength = props.EditingLength
	local topTrackIndex = state.TopTrackIndex
	local trackListWidth = state.TrackListWidth
	local tracks = props.Tracks
	local unusedTracks = props.UnusedTracks
	local unusedFacs = props.UnusedFacs
	local scroll = props.Scroll
	local zoom = props.Zoom
	local animationData = props.AnimationData
	local showEvents = props.ShowEvents
	local selectedTracks = props.SelectedTracks
	local rootInstance = props.RootInstance

	local absoluteSize = state.AbsoluteSize
	local showChangeFPSPrompt = state.showChangeFPSPrompt
	local showChangePlaybackSpeedPrompt = state.showChangePlaybackSpeedPrompt
	local showEditor = animationData ~= nil
	local useJointSelector = not UseLuaDraggers()
	local isChannelAnimation = AnimationData.isChannelAnimation(animationData)

	local selectedPaths = {}
	if GetFFlagChannelAnimations() and selectedTracks then
		for _, track in pairs(selectedTracks) do
			table.insert(selectedPaths, {track})
		end
	end

	if animationData then
		local range = TrackUtils.getZoomRange(props.AnimationData, scroll, zoom, editingLength)
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

	local colorsPosition = (showEvents and Constants.TRACK_HEIGHT or 0)	+ Constants.TIMELINE_HEIGHT
		+ Constants.SUMMARY_TRACK_HEIGHT

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
			BackgroundTransparency = 1,
			Size = UDim2.new(0, trackListWidth, 1, 0),
			LayoutOrder = 0,
		}, {
			AnimationControlPanel = Roact.createElement(AnimationControlPanel, {
				StartTick = startTick,
				EndTick = endTick,
				Playhead = playhead,
				EditingLength = editingLength,
				AnimationData = props.AnimationData,
				ShowAsSeconds = showAsSeconds,
				IsChannelAnimation = isChannelAnimation,
			}),

			EventsAndTracks = Roact.createElement("ImageButton", {
				Size = UDim2.new(0, trackListWidth, 1, -Constants.TIMELINE_HEIGHT),
				Position = UDim2.new(0, 0, 0, Constants.TIMELINE_HEIGHT),
				BackgroundTransparency = 1,
				ImageTransparency = 1,

				[Roact.Event.Activated] = function()
					props.SetSelectedTracks()
					if UseLuaDraggers() then
						props.SetSelectedTrackInstances({})
					end
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

				TrackList = Roact.createElement(TrackList, {
					Size = showEvents and UDim2.new(1, 0, 1, -Constants.TRACK_HEIGHT)
						or UDim2.new(1, 0, 1, 0),
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
					ToggleTrackExpanded = GetFFlagChannelAnimations() and props.SetTracksExpanded or props.SetTracksExpanded_deprecated,
					OnTrackAdded = self.addTrackWrapper,
					OnValueChanged = GetFFlagChannelAnimations() and self.onValueChanged or props.ValueChanged,
					-- Remove when GetFFlagChannelAnimations() is retired
					OnValueChangedDeprecated2 = props.ValueChanged_deprecated2,
					-- Remove when GetFFlagFacialAnimationSupport() is retired
					OnValueChangedDeprecated = props.ValueChanged_deprecated,
					OnChangeBegan = props.AddWaypoint,
					OnTrackSelected = self.onTrackSelected,
				}),

				KeyboardListener = Roact.createElement(KeyboardListener, {
					OnKeyPressed = function(input)
						if Input.isUp(input.KeyCode) then
							props.MoveSelectedTrack(-1)
						elseif Input.isDown(input.KeyCode) then
							props.MoveSelectedTrack(1)
						elseif Input.isLeft(input.KeyCode) then
							if GetFFlagChannelAnimations() then
								props.CloseSelectedTracks(selectedPaths)
							else
								props.CloseSelectedTracks_deprecated(selectedTracks)
							end
						elseif Input.isRight(input.KeyCode) then
							if GetFFlagChannelAnimations() then
								props.ExpandSelectedTracks(selectedPaths)
							else
								props.ExpandSelectedTracks_deprecated(selectedTracks)
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
			}),
		}),

		TrackListBorder = Roact.createElement(TrackListBorder, {
			OnDragMoved = self.updateTrackListWidth,
		}),

		TrackEditor = showEditor and Roact.createElement(TrackEditor, {
			ZIndex = zIndex,
			TopTrackIndex = topTrackIndex,
			Tracks = tracks,
			LayoutOrder = 2,
			Size = UDim2.new(1, -trackListWidth - Constants.SCROLL_BAR_SIZE
				- Constants.SCROLL_BAR_PADDING, 1, 0),
			StartTick = startTick,
			EndTick = endTick,
			LastTick = lastTick,
			Playhead = playhead,
			FrameRate = props.FrameRate,
			ShowAsSeconds = showAsSeconds,
			ShowEvents = showEvents,
			Scroll = scroll,
			Zoom = zoom,
			OnScroll = self.onScroll,
			IsChannelAnimation = isChannelAnimation,
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

			TrackScrollbar = Roact.createElement(TrackScrollbar, {
				Size = UDim2.new(1, 0, 1, -Constants.SCROLL_BAR_SIZE - Constants.TIMELINE_HEIGHT - 1),
				Position = UDim2.new(0, 0, 0, Constants.TIMELINE_HEIGHT),
				TopTrackIndex = topTrackIndex,
				NumTracks = tracks and #tracks or 0,
				SetTopTrackIndex = self.setTopTrackIndex,
				OnScroll = self.onScroll,
			}),
		}),

		StartScreen = not showEditor and Roact.createElement(StartScreen, {
			RootInstance = rootInstance,
			Size = UDim2.new(1, -trackListWidth, 1, 0),
			LayoutOrder = 2,
			OnCreateAnimation = self.createAnimationWrapper,
		}),

		Playback = active and showEditor and Roact.createElement(Playback),
		InstanceSelector = active and Roact.createElement(InstanceSelector),

		JointSelector = active and showEditor and useJointSelector and Roact.createElement(JointSelector, {
			RootInstance = props.RootInstance,
			IKEnabled = props.IKEnabled,
			IKMode = props.IKMode,
			MotorData = props.MotorData,
			PinnedParts = props.PinnedParts,
			SetMotorData = props.SetMotorData,
			SelectedTracks = selectedTracks,
			OnSelectPart = self.onPartSelected,
			OnDragStart = not isPlaying and props.AddWaypoint or nil,
			OnManipulateJoint = not isPlaying and function(instanceName, trackName, value)
				if GetFFlagChannelAnimations() then
					self.onValueChanged(instanceName, {trackName}, Constants.TRACK_TYPES.CFrame, playhead, value)
				elseif GetFFlagFacialAnimationSupport() then
					props.ValueChanged_deprecated2(instanceName, trackName, Constants.TRACK_TYPES.CFrame, playhead, value, props.Analytics)
				else
					props.ValueChanged_deprecated(instanceName, trackName, playhead, value, props.Analytics)
				end
			end or nil,
			OnManipulateJoints = not isPlaying and function(instanceName, values)
				for trackName, value in pairs(values) do
					if GetFFlagChannelAnimations() then
						self.onValueChanged(instanceName, {trackName}, Constants.TRACK_TYPES.CFrame, playhead, value)
					elseif GetFFlagFacialAnimationSupport() then
						props.ValueChanged_deprecated2(instanceName, trackName, Constants.TRACK_TYPES.CFrame, playhead, value, props.Analytics)
					else
						props.ValueChanged_deprecated(instanceName, trackName, playhead, value, props.Analytics)
					end
				end
			end or nil,
		}),

		FloorGrid = active and showEditor and Roact.createElement(FloorGrid, {
			RootInstance = props.RootInstance,
		}),

		TrackActions = active and showEditor and Roact.createElement(TrackActions, {
			ShowMenu = state.showContextMenu,
			OnMenuOpened = self.hideMenu,
			IsChannelAnimation = GetFFlagChannelAnimations() and isChannelAnimation or nil,
		}),

		IgnoreLayout = showEditor and Roact.createElement("Folder", {}, {
			TrackColors = Roact.createElement(TrackColors, {
				Tracks = tracks,
				TopTrackIndex = topTrackIndex,
				Position = UDim2.new(0, 0, 0, colorsPosition),
				MaxHeight = absoluteSize.Y - Constants.TRACK_HEIGHT - colorsPosition,
			}),
		}),

		InactiveCover = not active and Roact.createElement(InactiveCover, {
			OnFocused = self.attachEditorWrapper,
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
	})
end

function EditorController:didMount()
	local props = self.props
	local snapMode = props.SnapMode

	local timelineUnit = props.ShowAsSeconds and "Seconds" or "Frames"
	props.AttachEditor(props.Analytics)
	props.Analytics:report("onEditorOpened", timelineUnit, false, snapMode)
	self.openedTimestamp = os.time()
end

function EditorController:willUnmount()
	local props = self.props
	props.ReleaseEditor(props.Analytics)
	props.Analytics:report("onEditorClosed", os.time() - self.openedTimestamp)
end

local function mapStateToProps(state, props)
	local status = state.Status

	return {
		Active = state.Status.Active,
		EditingLength = state.Status.EditingLength,
		Playhead = state.Status.Playhead,
		ShowAsSeconds = state.Status.ShowAsSeconds,
		SnapMode = state.Status.SnapMode,
		AnimationData = state.AnimationData,
		Scroll = status.Scroll,
		Zoom = status.Zoom,
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
		-- Deprecated when GetFFlagMoarMediaControls() is ON
		IsPlaying = status.IsPlaying,
		PlayState = status.PlayState,
		FrameRate = status.FrameRate,
		Analytics = state.Analytics,
		PlaybackSpeed = status.PlaybackSpeed,
	}
end

local function mapDispatchToProps(dispatch)
	local dispatchToProps = {
		SetTracksExpanded = function(paths, expanded)
			dispatch(SetTracksExpanded(paths, expanded, false))
		end,

		SetTracksExpanded_deprecated = function(tracks, expanded)
			dispatch(SetTracksExpanded_deprecated(tracks, expanded))
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

		AddTrack = function(instance, track, trackType, analytics)
			dispatch(AddWaypoint())
			dispatch(AddTrack(instance, track, trackType, analytics))
		end,

		-- Remove when GetFFlagFacialAnimationSupport() and GetFFlagChannelAnimations() are retired
		AddTrack_deprecated = function(instance, track, analytics)
			dispatch(AddWaypoint())
			dispatch(AddTrack(instance, track, analytics))
		end,

		SetRightClickContextInfo = function(info)
			dispatch(SetRightClickContextInfo(info))
		end,

		ValueChanged = function(instanceName, path, trackType, tick, value, analytics)
			dispatch(ValueChanged(instanceName, path, trackType, tick, value, analytics))
		end,

		-- Remove when GetFFlagChannelAnimations() is retired
		ValueChanged_deprecated2 = function(instanceName, trackName, trackType, tick, value, analytics)
			dispatch(ValueChanged(instanceName, trackName, trackType, tick, value, analytics))
		end,

		-- Remove when GetFFlagFacialAnimationSupport() is retired
		ValueChanged_deprecated = function(instanceName, trackName, tick, value, analytics)
			dispatch(ValueChanged(instanceName, trackName, tick, value, analytics))
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

		SetEventEditingTick = function(tick)
			dispatch(SetEventEditingTick(tick))
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

		-- Deprecated when GetFFlagMoarMediaControls() is ON
		SetIsPlaying = function(isPlaying)
			dispatch(SetIsPlaying(isPlaying))
		end,

		Pause = function()
			dispatch(Pause())
		end,

		SetPlaybackSpeed = function(playbackSpeed)
			dispatch(SetPlaybackSpeed(playbackSpeed))
		end,
	}

	return dispatchToProps
end


EditorController = withContext({
	Analytics = ContextServices.Analytics,
	Signals = SignalsContext,
})(EditorController)




return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(EditorController)
