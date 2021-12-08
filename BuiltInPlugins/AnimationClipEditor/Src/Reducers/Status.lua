local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Constants = require(Plugin.Src.Util.Constants)

local GetFFlagMoarMediaControls = require(Plugin.LuaFlags.GetFFlagMoarMediaControls)

return Rodux.createReducer({
	Active = false,
	SelectedKeyframes = {},
	SelectedEvents = {},
	SelectedTracks = nil,

	Clipboard = {},
	ClipboardType = nil,
	Playhead = 0,
	PlaybackSpeed = 1,
	PlaybackStartInfo = {},
	RightClickContextInfo = {},
	IsPlaying = false, -- Deprecated if GetFFlagMoarMediaControls() is ON
	PlayState = Constants.PLAY_STATE.Pause,
	Scroll = 0,
	Zoom = 0,
	EditingLength = 0,

	ShowAsSeconds = true,
	SnapMode = Constants.SNAP_MODES.Frames,
	ShowEvents = true,
	IKEnabled = false,
	IKOpenedTimestamp = nil,
	IKMode = Constants.IK_MODE.FullBody,
	ShowTree = false,

	Tool = Enum.RibbonTool.Rotate,
	WorldSpace = false,

	RootInstance = nil,
	Tracks = {},
	UnusedTracks = {},
	UnusedFacs = {},
	IsDirty = false,
	PinnedParts = {},

	EventEditingTick = nil,
	VisualizeBones = true,
	FrameRate = Constants.DEFAULT_FRAMERATE,
	DefaultRotationType = Constants.DEFAULT_ROTATION_TYPE,
}, {
	SetActive = function(state, action)
		return Cryo.Dictionary.join(state, {
			Active = action.active,
		})
	end,

	SetSelectedKeyframes = function(state, action)
		return Cryo.Dictionary.join(state, {
			SelectedKeyframes = action.selected,
		})
	end,

	SetSelectedEvents = function(state, action)
		return Cryo.Dictionary.join(state, {
			SelectedEvents = action.selected,
		})
	end,

	SetClipboard = function(state, action)
		return Cryo.Dictionary.join(state, {
			Clipboard = action.clipboard,
			ClipboardType = action.clipboardType,
		})
	end,

	SetPlayhead = function(state, action)
		return Cryo.Dictionary.join(state, {
			Playhead = action.playhead,
		})
	end,

	SetPlaybackSpeed = function(state, action)
		return Cryo.Dictionary.join(state, {
			PlaybackSpeed = action.playbackSpeed,
		})
	end,

	SetPlaybackStartInfo = function(state, action)
		return Cryo.Dictionary.join(state, {
			PlaybackStartInfo = action.playbackStartInfo
		})
	end,

	SetRightClickContextInfo = function(state, action)
		return Cryo.Dictionary.join(state, {
			RightClickContextInfo = action.rightClickContextInfo
		})
	end,

	SetRootInstance = function(state, action)
		return Cryo.Dictionary.join(state, {
			RootInstance = action.rootInstance,
		})
	end,

	SetIsPlaying = not GetFFlagMoarMediaControls() and function(state, action)
		return Cryo.Dictionary.join(state, {
			IsPlaying = action.isPlaying,
		})
	end or nil,

	SetPlayState = GetFFlagMoarMediaControls() and function(state, action)
		return Cryo.Dictionary.join(state, {
			PlayState = action.playState,
		})
	end or nil,

	Pause = function(state, action)
		return Cryo.Dictionary.join(state, {
			PlayState = Constants.PLAY_STATE.Pause,
		})
	end,

	SetFrameRate = function(state, action)
		return Cryo.Dictionary.join(state, {
			FrameRate = action.frameRate,
		})
	end,

	SetScrollZoom = function(state, action)
		return Cryo.Dictionary.join(state, {
			Scroll = action.scroll,
			Zoom = action.zoom,
		})
	end,

	SetTracks = function(state, action)
		return Cryo.Dictionary.join(state, {
			Tracks = action.tracks,
			UnusedTracks = action.unusedTracks,
			UnusedFacs = action.unusedFacs,
		})
	end,

	-- Deprecated with GetFFlagChannelAnimations
	SetTracksExpanded = function(state, action)
		if state.Tracks and action.tracks then
			local tracks = Cryo.List.join(state.Tracks)
			for _, trackToExpand in ipairs(action.tracks) do
				for _, track in ipairs(tracks) do
					if track.Name == trackToExpand then
						track.Expanded = action.expanded
					end
				end
			end

			return Cryo.Dictionary.join(state, {
				Tracks = tracks,
			})
		else
			return state
		end
	end,

	SetSelectedTracks = function(state, action)
		return Cryo.Dictionary.join(state, {
			SelectedTracks = action.selectedTracks or Cryo.None,
		})
	end,

	SetSelectedTrackInstances = function(state, action)
		return Cryo.Dictionary.join(state, {
			SelectedTrackInstances = action.selectedTrackInstances or Cryo.None,
		})
	end,

	SetEditingLength = function(state, action)
		return Cryo.Dictionary.join(state, {
			EditingLength = action.editingLength,
		})
	end,

	SetShowAsSeconds = function(state, action)
		return Cryo.Dictionary.join(state, {
			ShowAsSeconds = action.showAsSeconds,
		})
	end,

	SetSnapMode = function(state, action)
		return Cryo.Dictionary.join(state, {
			SnapMode = action.snapMode,
		})
	end,

	SetShowEvents = function(state, action)
		return Cryo.Dictionary.join(state, {
			ShowEvents = action.showEvents,
		})
	end,

	SetEventEditingTick = function(state, action)
		return Cryo.Dictionary.join(state, {
			EventEditingTick = action.eventEditingTick or Cryo.None,
		})
	end or nil,

	SetIKEnabled = function(state, action)
		return Cryo.Dictionary.join(state, {
			IKEnabled = action.ikEnabled,
		})
	end,

	SetIKOpenedTimestamp = function(state, action)
		return Cryo.Dictionary.join(state, {
			IKOpenedTimestamp = action.iKOpenedTimestamp,
		})
	end,

	SetMotorData = function(state, action)
		return Cryo.Dictionary.join(state, {
			MotorData = action.motorData,
		})
	end,

	SetIsDirty = function(state, action)
		return Cryo.Dictionary.join(state, {
			IsDirty = action.isDirty,
		})
	end,

	SetTool = function(state, action)
		return Cryo.Dictionary.join(state, {
			Tool = action.tool,
		})
	end,

	ToggleWorldSpace = function(state, action)
		return Cryo.Dictionary.join(state, {
			WorldSpace = not state.WorldSpace,
		})
	end,

	SetIKMode = function(state, action)
		return Cryo.Dictionary.join(state, {
			IKMode = action.ikMode,
		})
	end,

	SetShowTree = function(state, action)
		return Cryo.Dictionary.join(state, {
			ShowTree = action.showTree,
		})
	end,

	SetPinnedParts = function(state, action)
		return Cryo.Dictionary.join(state, {
			PinnedParts = action.pinnedParts,
		})
	end,

	SetStartingPose = function(state, action)
		return Cryo.Dictionary.join(state, {
			StartingPose = action.startingPose,
		})
	end,

	SetBoneVisualization = function(state, action)
		return Cryo.Dictionary.join(state, {
			VisualizeBones = action.visualizeBones,
		})
	end,
})