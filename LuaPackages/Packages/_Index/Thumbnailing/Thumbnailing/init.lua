local EmoteUtility = require(script.EmoteUtility)
local CameraUtility = require(script.CameraUtility)
local LightUtility = require(script.LightUtility)

export type KeyframesForPose = EmoteUtility.KeyframesForPose
export type MapAssetIdToFileNameType = EmoteUtility.MapAssetIdToFileNameType

export type CameraOptions = CameraUtility.CameraOptions

export type LightDescType = LightUtility.LightDescType
export type JsonLightDescType = LightUtility.JsonLightDescType
export type LightExtraParamsType = LightUtility.LightExtraParamsType

return {
	FFlagSharedMakeupThumbnailCamera = game:DefineFastFlag("SharedMakeupThumbnailCamera", false),
	CameraPresetsUtility = require(script.CameraPresetsUtility),
	CameraUtility = CameraUtility,
	CFrameUtility = require(script.CFrameUtility),
	ColorUtility = require(script.ColorUtility),
	EmoteUtility = EmoteUtility,
	LightUtility = LightUtility,
	VectorUtility = require(script.VectorUtility),
	CharacterUtility = require(script.CharacterUtility),
	ParticleUtility = require(script.ParticleUtility),
	MannequinUtility = require(script.MannequinUtility),
	MakeupCameraUtility = require(script.MakeupCameraUtility),
}
