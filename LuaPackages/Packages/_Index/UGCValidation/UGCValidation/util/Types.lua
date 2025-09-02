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
	skipPhysicsDataReset: boolean?,
}
export type ScriptTimes = { [string]: number }
export type PartSizes = { [Instance]: Vector3 }
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
	lastTickSeconds: number?,
	shouldYield: boolean?,
	scriptTimes: ScriptTimes?,
	validateMeshPartAccessories: boolean,
	partSizes: PartSizes?,
	requireAllFolders: boolean?,
	specialMeshAccessory: Accessory?,
}

export type MeshInfo = {
	editableMesh: EditableMesh,
	contentId: string?,
	fullName: string,
	fieldName: string,
	scale: Vector3?,
	context: string,
}

-- ========== Validation System data types ==========
export type SharedData = {
	-- Names should match ValidationEnums.SharedDataMember

	-- NOT ALL THIS DATA IS GAURANTEED TO EXIST - If your test requires it, you must specify it in your test configs
	-- These members are marked as never nil because the assumption is you are only using data you specified you need
	-- Otherwise, you will have to keep writing assert(data.prop) even though the validationRunner will only run your test when the data exists

	root_instance: Instance,
	upload_category: string,
	creation_source: string,

	asset_type_enum: Enum.AssetType,
	bundle_type_enum: Enum.BundleType,

	quality_results: {},
}

export type failureStringContext = {
	key: string,
	params: { [string]: any },
}

export type SingleValidationResult = {
	status: string,
	errorTranslationContexts: { failureStringContext },
	internalData: {},
}

export type ValidationResultData = {
	pass: boolean,
	states: { [string]: string },
	errorTranslationContexts: { failureStringContext },
	internalData: { [string]: {} },
}

export type ValidationReporterFailMethod = (
	self: ValidationReporter,
	errorLabelVariables: { [string]: any }?,
	errorKeyOverride: string?,
	internalContext: {}?,
	telemetryContext: any? -- TODO: specify type allowed for analytics
) -> nil

export type ValidationReporter = {
	fail: ValidationReporterFailMethod,
}

export type SingleValidationFileData = {
	name: string,
	prereqs: { [string]: boolean },
	postreqs: { string },
	isQuality: boolean,
}

export type UGCValidationConsumerConfigs = {
	source: "StudioPlugin" | "Backend" | "InExpClient" | "InExpServer",
}

export type ValidationModule = {
	fflag: (() -> boolean)?,
	is_quality: boolean?,
	categories: { string }?,
	required_data: { string }?,
	prereq_tests: { string }?,
	run: (ValidationReporter, SharedData) -> nil,
}

export type PreloadedValidationModule = {
	fflag: () -> boolean,
	is_quality: boolean,
	categories: { string },
	required_data: { string },
	prereq_tests: { string },
	run: (ValidationReporter, SharedData) -> nil,
}

-- ========
export type TextureInfo = {
	editableImage: EditableImage,
	contentId: string?,
	fullName: string,
	fieldName: string,
}

export type AxisValidateBoundsResult = {
	ok: boolean,
	min: number,
	max: number,
}

export type ScaleTypeValidateBoundsResult = {
	ok: boolean,
	X: AxisValidateBoundsResult,
	Y: AxisValidateBoundsResult,
	Z: AxisValidateBoundsResult,
	min: number,
	max: number,
}

export type ExtraDataValidateBoundsResult = {
	meshSize: Vector3,
	overallSize: Vector3,
	Classic: ScaleTypeValidateBoundsResult,
	ProportionsSlender: ScaleTypeValidateBoundsResult,
	ProportionsNormal: ScaleTypeValidateBoundsResult,
}

export type ErrorValidateBoundsResult = {
	ok: boolean,
	errors: { string },
}

export type OverallValidateBoundsResult = {
	ok: boolean,
	scale: number?,
	scaleType: string?,
}

export type MainValidateBoundsResult = {
	ok: boolean,
	Overall: OverallValidateBoundsResult,

	FullBody: ExtraDataValidateBoundsResult,
	DynamicHead: ExtraDataValidateBoundsResult,
	Torso: ExtraDataValidateBoundsResult,
	LeftArm: ExtraDataValidateBoundsResult,
	RightArm: ExtraDataValidateBoundsResult,
	LeftLeg: ExtraDataValidateBoundsResult,
	RightLeg: ExtraDataValidateBoundsResult,
}

export type ValidateBoundsResult = MainValidateBoundsResult | ErrorValidateBoundsResult

export type DataCache = {
	meshData: { [string]: any },
}

export type MainPreprocessDataResult = {
	ok: boolean,
	cache: DataCache,
}

export type PreprocessDataResult = MainPreprocessDataResult | ErrorValidateBoundsResult

return Types
