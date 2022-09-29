local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Constants = require(Plugin.Src.Util.Constants)

return Rodux.createReducer({
	Active = false,
	ReadOnly = false,

	SelectedKeyframes = {},
	SelectedEvents = {},
	SelectedTracks = nil,
	LastSelectedPath = nil,

	Clipboard = {},
	ClipboardType = nil,
	Playhead = 0,
	PlaybackSpeed = 1,
	PlaybackStartInfo = {},
	RightClickContextInfo = {},
	PlayState = Constants.PLAY_STATE.Pause,
	inReviewState = false,
	haveToSetBackToNotLooping = false,
	Scroll = 0,  -- Deprecated with GetFFlagCurveEditor
	Zoom = 0,  -- Deprecated with GetFFlagCurveEditor
	HorizontalScroll = 0,
	HorizontalZoom = 0,
	VerticalScroll = 0,
	VerticalZoom = 0,
	EditingLength = 0,

	ShowAsSeconds = true,
	SnapMode = Constants.SNAP_MODES.Frames,
	ShowEvents = true,
	IKEnabled = false,
	IKOpenedTimestamp = nil,
	FaceControlsEditorOpenedTimestamp = nil,
	IKMode = Constants.IK_MODE.FullBody,
	ShowTree = false,
	ShowFaceControlsEditorPanel = false,
	ReduceKeyframesDialogMode = Constants.REDUCE_KEYFRAMES_DIALOG_MODE.Hidden,

	Tool = Enum.RibbonTool.Rotate,
	WorldSpace = false,

	RootInstance = nil,
	Tracks = {},
	UnusedTracks = {},
	UnusedFacs = {},
	IsDirty = false,
	CreatingAnimationFromVideo = false,
	AnimationFromVideoUploadStartTime = nil,
	AnimationFromVideoErroredOut = false,
	AnimationImportProgress = 0.0,
	AnimationImportStatus = Constants.ANIMATION_FROM_VIDEO_STATUS.Initializing,
	PinnedParts = {},
	BoneLinksToBone = {},
	EventEditingTick = nil,
	VisualizeBones = true,
	FrameRate = Constants.DEFAULT_FRAMERATE,
	DefaultRotationType = Constants.DEFAULT_ROTATION_TYPE,
	EditorMode = Constants.EDITOR_MODE.DopeSheet,
	SymmetryEnabled = false,
	AutoFocusFaceEnabled = false,
	DefaultEulerAnglesOrder = Enum.RotationOrder.XYZ,
	EditorModeSwitchTime = nil,
}, {
	SetActive = function(state, action)
		return Cryo.Dictionary.join(state, {
			Active = action.active,
		})
	end,

	SetReadOnly = function(state, action)
		return Cryo.Dictionary.join(state, {
			ReadOnly = action.readOnly,
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

	SetPlayState = function(state, action)
		return Cryo.Dictionary.join(state, {
			PlayState = action.playState,
		})
	end,

	SetInReviewState = function(state, action)
		return Cryo.Dictionary.join(state, {
			inReviewState = action.inReviewState,
		})
	end,

	SetHaveToSetBackToNotLooping = function(state, action)
		return Cryo.Dictionary.join(state, {
			haveToSetBackToNotLooping = action.haveToSetBackToNotLooping,
		})
	end,

	Pause = function(state)
		return Cryo.Dictionary.join(state, {
			PlayState = Constants.PLAY_STATE.Pause,
		})
	end,

	SetFrameRate = function(state, action)
		return Cryo.Dictionary.join(state, {
			FrameRate = action.frameRate,
		})
	end,

	SetHorizontalScrollZoom = function(state, action)
		return Cryo.Dictionary.join(state, {
			HorizontalScroll = action.horizontalScroll,
			HorizontalZoom = action.horizontalZoom,
		})
	end,

	SetVerticalScrollZoom = function(state, action)
		return Cryo.Dictionary.join(state, {
			VerticalScroll = action.verticalScroll,
			VerticalZoom = action.verticalZoom,
		})
	end,

	SetTracks = function(state, action)
		return Cryo.Dictionary.join(state, {
			Tracks = action.tracks,
			UnusedTracks = action.unusedTracks,
			UnusedFacs = action.unusedFacs,
		})
	end,

	SetSelectedTracks = function(state, action)
		return Cryo.Dictionary.join(state, {
			SelectedTracks = action.selectedTracks or Cryo.None,
		})
	end,

	SetLastSelectedPath = function(state, action)
		return Cryo.Dictionary.join(state, {
			LastSelectedPath = action.lastSelectedPath or Cryo.None,
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

	SetReduceKeyframesDialogMode = function(state, action)
		return Cryo.Dictionary.join(state, {
			ReduceKeyframesDialogMode = action.reduceKeyframesDialogMode,
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

	SetFaceControlsEditorOpenedTimestamp = function(state, action)
		return Cryo.Dictionary.join(state, {
			FaceControlsEditorOpenedTimestamp = action.FaceControlsEditorOpenedTimestamp,
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

	SetAnimationImportProgress = function(state, action)
		return Cryo.Dictionary.join(state, {
			AnimationImportProgress = action.animationImportProgress,
		})
	end,

	SetAnimationImportStatus = function(state, action)
		return Cryo.Dictionary.join(state, {
			AnimationImportStatus = action.animationImportStatus,
		})
	end,

	SetAnimationFromVideoUploadStartTime = function(state, action)
		return Cryo.Dictionary.join(state, {
			AnimationFromVideoUploadStartTime = action.animationFromVideoUploadStartTime,
		})
	end,

	SetAnimationFromVideoErroredOut = function(state, action)
		return Cryo.Dictionary.join(state, {
			AnimationFromVideoErroredOut = action.animationFromVideoErroredOut,
		})
	end,

	SetCreatingAnimationFromVideo = function(state, action)
		return Cryo.Dictionary.join(state, {
			CreatingAnimationFromVideo = action.creatingAnimationFromVideo,
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

	SetShowFaceControlsEditorPanel = function(state, action)
		return Cryo.Dictionary.join(state, {
			ShowFaceControlsEditorPanel = action.showFaceControlsEditorPanel,
		})
	end,

	SetPinnedParts = function(state, action)
		return Cryo.Dictionary.join(state, {
			PinnedParts = action.pinnedParts,
		})
	end,

	SetBoneLinksToBone = function(state, action)
		return Cryo.Dictionary.join(state, {
			BoneLinksToBone = action.boneLinksToBone,
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

	SetDefaultRotationType = function(state, action)
		return Cryo.Dictionary.join(state, {
			DefaultRotationType = action.defaultRotationType,
		})
	end,

	SetDefaultEulerAnglesOrder = function(state, action)
		return Cryo.Dictionary.join(state, {
			DefaultEulerAnglesOrder = action.defaultEulerAnglesOrder,
		})
	end,

	SetEditorMode = function(state, action)
		return Cryo.Dictionary.join(state, {
			EditorMode = action.editorMode,
			EditorModeSwitchTime = action.editorModeSwitchTime,
		})
	end,

	SetSymmetryEnabled = function(state, action)
		return Cryo.Dictionary.join(state, {
			SymmetryEnabled = action.symmetryEnabled,
		})
	end,

	SetAutoFocusFaceEnabled = function(state, action)
		return Cryo.Dictionary.join(state, {
			AutoFocusFaceEnabled = action.autoFocusFaceEnabled,
		})
	end,
})
