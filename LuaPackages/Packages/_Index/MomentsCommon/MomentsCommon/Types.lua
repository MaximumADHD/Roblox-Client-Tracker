local MomentsCommon = script:FindFirstAncestor("MomentsCommon")
local Packages = MomentsCommon.Parent

local React = require(Packages.React)

local MomentStatus = require(MomentsCommon.Enums.MomentStatus)
type MomentStatus = MomentStatus.MomentStatus

local AttributeType = require(MomentsCommon.Enums.AttributeType)
type AttributeType = AttributeType.AttributeType

export type MomentRecommendationMetadata = {
	itemId: string,
	configName: string?,
	locationId: string?,
	tracingId: string?,
}

-- GetAudioMetadataAsync returns this type
export type Music = {
	Artist: string,
	AssetId: number,
	AudioType: string,
	Duration: number,
	RecordingCode: string?,
	Title: string,
}

export type MusicEdit = {
	assetId: number,
	startTime: number,
}

export type TextOverlayStyle = {
	font: Enum.Font,
	fontColor: Color3,
	fontSize: number,
	textXAlignment: Enum.TextXAlignment,
}

export type TextOverlayEdit = {
	position: UDim2,
	rotation: number,
	scale: number,
	text: string,
	textOverlayStyle: TextOverlayStyle,
	zIndex: number,
}

export type TrimEdit = {
	startTime: number,
	endTime: number,
}

export type Edits = {
	music: MusicEdit?,
	trim: TrimEdit?,
	textOverlays: { TextOverlayEdit }?,
}

export type MomentMetadata = {
	assetTotalDuration: number?,
	captureType: Enum.CaptureType,
	description: string?,
	universeId: number?,
	placeId: number?,
	edits: Edits?,
	[string]: any?,
}

export type RecommendationAttribute = {
	AssetId: number,
	Text: string?,
	Description: AttributeType,
	TrimStartTime: number,
}

export type RecommendationRegistrationInfo = {
	attributes: { RecommendationAttribute },
	contentType: Enum.RecommendationItemContentType,
	customTags: { string },
	duration: number,
}

export type MomentRegistration = {
	assetId: number,
	metadata: MomentMetadata,
	registrationInfo: RecommendationRegistrationInfo,
}

export type MomentItem = {
	assetId: number,
	creatorId: number,
	isModerated: boolean?,
	metadata: MomentMetadata,
	momentId: string,
	recommendationMetadata: MomentRecommendationMetadata,
	status: MomentStatus,
}

export type PlaybackController = {
	timeline: {
		duration: number,
		elapsed: number,
		seek: (number) -> (),
		timeLength: number,
		timePosition: number,
	},
	playback: {
		isPlaying: boolean,
		pause: () -> (),
		play: () -> (),
		toggle: () -> (),
	},
	volume: {
		isMuted: boolean,
		mute: () -> (),
		toggle: () -> (),
		unmute: () -> (),
	},
}

export type UnifiedPlaybackController = PlaybackController & {
	audio: {
		timeLength: number,
		timePosition: number,
	},
	imageRef: React.RefObject<ImageLabel?>,
	audioRef: React.RefObject<AudioPlayer?>,
	videoRef: React.RefObject<VideoFrame?>,
}

return {}
