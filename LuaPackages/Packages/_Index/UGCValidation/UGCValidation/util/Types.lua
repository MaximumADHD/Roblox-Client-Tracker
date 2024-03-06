--!strict

local Types = {}

export type RestrictedUserIds = { { creatorType: string, id: number } }
export type FullBodyData = { { allSelectedInstances: { Instance }, assetTypeEnum: Enum.AssetType } }
export type AllBodyParts = { [string]: Instance } -- table mapping body part name to body part Instance
export type BoundsData = {
	minMeshCorner: Vector3?,
	maxMeshCorner: Vector3?,
	minRigAttachment: Vector3?,
	maxRigAttachment: Vector3?,
	minOverall: Vector3?,
	maxOverall: Vector3?,
}
export type EditableMeshInfo = {
	instance: EditableMesh,
	created: boolean,
}
export type EditableImageInfo = {
	instance: EditableImage,
	created: boolean,
}
export type BypassFlags = {
	skipSnapshot: boolean?,
	skipValidateHSR: boolean?,
}
export type EditableMeshes = { [Instance]: { [string]: EditableMeshInfo } }
export type EditableImages = { [Instance]: { [string]: EditableImageInfo } }
export type ValidationContext = {
	fullBodyData: FullBodyData?,
	instances: { Instance }?,
	assetTypeEnum: Enum.AssetType?,
	allowUnreviewedAssets: boolean?,
	restrictedUserIds: RestrictedUserIds?,
	isServer: boolean?,
	token: string?,
	universeId: number?,
	isAsync: boolean?,
	editableMeshes: EditableMeshes?,
	editableImages: EditableImages?,
	allowEditableInstances: boolean?,
	bypassFlags: BypassFlags?,
}

export type MeshInfo = {
	editableMesh: EditableMesh?, --TODO: remove ? when removing EngineFeatureUGCValidateEditableMeshAndImage
	contentId: string?,
	fullName: string,
	fieldName: string,
	scale: Vector3?,
	context: string,
}

export type TextureInfo = {
	editableImage: EditableImage?, --TODO: remove ? when removing EngineFeatureUGCValidateEditableMeshAndImage
	contentId: string?,
	fullName: string,
	fieldName: string,
}

return Types
