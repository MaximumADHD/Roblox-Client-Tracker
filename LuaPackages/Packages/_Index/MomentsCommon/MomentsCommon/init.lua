local Types = require(script.Types)

export type Edits = Types.Edits
export type MomentItem = Types.MomentItem
export type MomentMetadata = Types.MomentMetadata
export type MomentRecommendationMetadata = Types.MomentRecommendationMetadata
export type MomentRegistration = Types.MomentRegistration
export type Music = Types.Music
export type RecommendationAttribute = Types.RecommendationAttribute
export type RecommendationRegistrationInfo = Types.RecommendationRegistrationInfo
export type MusicEdit = Types.MusicEdit
export type TextOverlayStyle = Types.TextOverlayStyle
export type TextOverlayEdit = Types.TextOverlayEdit
export type TrimEdit = Types.TrimEdit

export type PlaybackController = Types.PlaybackController
export type UnifiedPlaybackController = Types.UnifiedPlaybackController

-- Enums and their types
local AttributeType = require(script.Enums.AttributeType)
local FormFactor = require(script.Enums.FormFactor)
local LoadingState = require(script.Enums.LoadingState)
local MomentStatus = require(script.Enums.MomentStatus)
local MusicThumbnailIconSize = require(script.Enums.MusicThumbnailIconSize)
local NavigationType = require(script.Enums.NavigationType)

export type FormFactor = FormFactor.FormFactor
export type LoadingState = LoadingState.LoadingState
export type MomentStatus = MomentStatus.MomentStatus
export type MusicThumbnailIconSize = MusicThumbnailIconSize.MusicThumbnailIconSize
export type NavigationType = NavigationType.NavigationType

-- Components and their types
local GradientBackdrop = require(script.Components.GradientBackdrop)
export type GradientBackdropProps = GradientBackdrop.GradientBackdropProps

local LoadableVideo = require(script.Components.LoadableVideo)
export type LoadableVideoProps = LoadableVideo.LoadableVideoProps

local MusicThumbnailIcon = require(script.Components.MusicThumbnailIcon)
export type MusicThumbnailIconProps = MusicThumbnailIcon.MusicThumbnailIconProps

local ScrollingGridView = require(script.Components.ScrollingGridView)
export type ScrollingGridViewProps<T> = ScrollingGridView.ScrollingGridViewProps<T>

local TextOverlay = require(script.Components.TextOverlay)
export type TextOverlayProps = TextOverlay.TextOverlayProps

local TextOverlayDisplay = require(script.Components.TextOverlayDisplay)
export type TextOverlayDisplayProps = TextOverlayDisplay.TextOverlayDisplayProps

-- Helper classes and their types
local Signal = require(script.Utils.Signal)
export type Signal<Args... = ...any> = Signal.Signal<Args...>
export type SignalHandle = Signal.SignalHandle
export type SignalCallback<Args...> = Signal.SignalCallback<Args...>

local MomentsCommon = {
	GradientBackdrop = GradientBackdrop,
	LoadableVideo = LoadableVideo,
	MusicThumbnailIcon = MusicThumbnailIcon,
	ScrollingGridView = ScrollingGridView,
	TextOverlay = TextOverlay,
	TextOverlayDisplay = TextOverlayDisplay,

	Enums = {
		AttributeType = AttributeType,
		FormFactor = FormFactor,
		LoadingState = LoadingState,
		MomentStatus = MomentStatus,
		MusicThumbnailIconSize = MusicThumbnailIconSize,
		NavigationType = NavigationType,
	},

	Hooks = {
		useAudioPlayback = require(script.Hooks.useAudioPlayback),
		useDeviceInsets = require(script.Hooks.useDeviceInsets),
		useDispatch = require(script.Hooks.useDispatch),
		useFormFactor = require(script.Hooks.useFormFactor),
		useImageDisplay = require(script.Hooks.useImageDisplay),
		useImageLoadingState = require(script.Hooks.useImageLoadingState),
		useScreenSize = require(script.Hooks.useScreenSize),
		useSelector = require(script.Hooks.useSelector),
		useStore = require(script.Hooks.useStore),
		useToggleState = require(script.Hooks.useToggleState),
		useUnifiedPlayback = require(script.Hooks.useUnifiedPlayback),
		useVideoPlayback = require(script.Hooks.useVideoPlayback),
	},

	Utils = {
		getCropSize = require(script.Utils.getCropSize),
		getEasingNumberSequence = require(script.Utils.getEasingNumberSequence),
		getFitSize = require(script.Utils.getFitSize),
		getFormatTime = require(script.Utils.getFormatTime),
		getScale = require(script.Utils.getScale),
		getTagsForMoment = require(script.Utils.getTagsForMoment),
	},

	Signal = Signal,

	Constants = require(script.Constants),

	["jest.config"] = script["jest.config"],
}

return MomentsCommon
