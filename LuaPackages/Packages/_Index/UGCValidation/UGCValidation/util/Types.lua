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
	studioPluginName: string?,
	enforceShadowValidations: boolean?,
	localizationCallback: ((failureStringContext) -> string)?,
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
	isBackendBundleUpload: boolean?,
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
export type UploadEnum = { assetType: Enum.AssetType, bundleType: Enum.BundleType }

export type EditableMeshData = {
	editable: EditableMesh,
	createdInValidation: boolean,
	originalSize: Vector3,
	scale: Vector3,
}

export type EditableCageData = {
	editable: EditableMesh,
	createdInValidation: boolean,
	originalSize: Vector3,
	origin: CFrame,
}

export type EditableImageData = {
	editable: EditableImage,
	createdInValidation: boolean,
}

export type AssetQualityMetrics = {
	fetchStatus: string,
	fetchAttemptCount: number?,
	fetchTimeMs: number?,
	fetchFailureReason: string?,
	visualizationUrl: string?,
	returnVersion: number?,
	aqJobId: string?,
}

export type EditableImageWithPBRData = {
	isPBR: boolean,
	Texture: EditableImageData?,
	ColorMap: EditableImageData?,
	MetalnessMap: EditableImageData?,
	NormalMap: EditableImageData?,
	RoughnessMap: EditableImageData?,
}

export type CurveAnimationsData = { CurveAnimation }

export type CurveAnimComputedFramesData = {
	animFrames: { { [string]: CFrame } },
	animLength: number,
	positionMagnitudeFrames: { { [string]: number } },
	tracks: { any },
}

export type ContentIdMap = { [string]: { instance: Instance, fieldName: string } }

export type SharedData = {
	-- Names should match ValidationEnums.SharedDataMember.
	-- NOT ALL THIS DATA IS GAURANTEED TO EXIST - If your test requires it, you should specify it in your test configs
	-- These members are marked as never nil because the assumption is you are only using data you specified you needed
	jobId: string,
	entrypointInput: any,
	rootInstance: Instance,
	uploadCategory: string,
	uploadEnum: UploadEnum,
	consumerConfig: PreloadedConsumerConfigs,
	aqsFetchMetrics: AssetQualityMetrics,
	aqsSummaryData: { [string]: { [string]: { [string]: number } } },
	renderMeshesData: { [string]: EditableMeshData },
	innerCagesData: { [string]: EditableCageData },
	outerCagesData: { [string]: EditableCageData },
	meshTextures: { [string]: EditableImageWithPBRData },
	curveAnimations: CurveAnimationsData,
	curveAnimComputedFrames: CurveAnimComputedFramesData,
	contentIds: ContentIdMap,
	hsrAssets: { [string]: { Instance } },
}

export type failureStringContext = {
	key: string,
	params: { [string]: any },
}

export type FailureEntry = {
	failureStringKey: string,
	failureStringParams: { [string]: any },
	instancePath: string,
}

-- Shape reflects the post-cleanup (EngineUGCValidationExpandReturnSchema permanently on) world.
-- The flag-off path constructs/reads legacy-only fields (e.g. errorTranslationContexts) via
-- `:: any` casts; once the flag flips on permanently those casts and their callers go away.
export type SingleValidationResult = {
	validationEnum: string,
	status: string,
	duration: number,
	telemetryContext: string,
	failures: { FailureEntry },
	warnings: { FailureEntry },
}

export type ValidationResultData = {
	validationJobId: string,
	pass: boolean,
	numFailures: number,
	numWarnings: number,
	states: { [string]: string },
	ranIntoInternalError: boolean,
	failureMap: { [string]: { FailureEntry } },
	warningMap: { [string]: { FailureEntry } },
	relevantSourceStrings: { [string]: string },
	aqJobId: string,
}

export type ValidationReporterReportMethod = (
	self: ValidationReporter,
	key: string,
	params: { [string]: any }?,
	instance: Instance?
) -> nil

export type ValidationReporter = {
	fail: ValidationReporterReportMethod,
	warn: ValidationReporterReportMethod,
	setReportingInstance: (self: ValidationReporter, instance: Instance?) -> nil,
	-- Backend-only: throws past ValidationManager so RCC reschedules the job.
	forceError: (self: ValidationReporter, message: string) -> never,
}

export type SingleValidationFileData = {
	name: string,
	prereqs: { [string]: boolean },
	postreqs: { string },
	isQuality: boolean,
	isShadow: boolean,
}

-- "Backend" / "InExpClient" are legacy aliases for "Publish" / "InExpServer" kept for downstream
-- consumers mid-migration. Prefer the new names in new code; the aliases will be removed once
-- consumer CIs are off them.
export type UGCValidationConsumerName =
	"Toolbox"
	| "AutoSetup"
	| "Publish"
	| "InExpServer"
	| "Internal"
	| "Backend"
	| "InExpClient"

-- Pipeline position the AQ fetch should start from:
--   "scene"  — generate a GLTF from the rootInstance, then fetch AQS from it (default)
--   "gltf"   — GLTF payload already built upstream; skip generation, fetch AQS from aqFetchData
--   "jobId"  — AQ job already ran; fetch the AQS summary directly via aqFetchData (requires
--              EngineFeatureEngineUGCValidationExpandReturnSchema)
export type AqFetchStage = "scene" | "gltf" | "jobId"

export type ConsumerEnv = "Studio" | "Backend" | "IEC"

-- Consumer-namespaced sub-tables for fields that only specific envs need. Each consumer
-- populates the sub-table that matches its env. ValidationManager fills the non-matching
-- env's sub-table with {} so reads are uniform; required fields are present iff the
-- consumer's env matches.
export type BackendConfigs = {
	restrictedUserIds: RestrictedUserIds?,
}

export type IECConfigs = {
	token: string?,
	universeId: number?,
}

-- Consumers identify themselves via `source`; validation resolves env and policy.
export type UGCValidationConsumerConfigs = {
	source: UGCValidationConsumerName,
	enforceR15FolderStructure: boolean?, -- default TRUE
	enforceShadowValidations: boolean?, -- default FALSE
	telemetryBundleId: string?,
	telemetryRootId: string?,
	preloadedEditableMeshes: { [string]: EditableMesh }?,
	preloadedEditableImages: { [string]: EditableImage }?,
	-- SystemTester-only: lets fixtures bake HSR Instances inline and bypass
	-- AssetDelivery. Production consumers leave this nil — live fetch is authoritative.
	preloadedHsrAssets: { [string]: { Instance } }?,
	-- SystemTester-only: enum names to drop from dispatch entirely (not just filter
	-- from results). Use for modules that hit network endpoints unreachable from
	-- the test env. Production consumers leave this nil.
	skipModules: { [string]: boolean }?,
	aqFetchStage: AqFetchStage?, -- default "scene"
	aqFetchData: string?, -- jobId or GLTF payload; empty when stage == "scene"
	backendConfigs: BackendConfigs?,
	iecConfigs: IECConfigs?,
}

export type PreloadedConsumerConfigs = {
	source: UGCValidationConsumerName,
	consumerEnv: ConsumerEnv,
	enforceR15FolderStructure: boolean,
	enforceShadowValidations: boolean,
	telemetryBundleId: string,
	telemetryRootId: string,
	preloadedEditableMeshes: { [string]: EditableMesh },
	preloadedEditableImages: { [string]: EditableImage },
	preloadedHsrAssets: { [string]: { Instance } },
	skipModules: { [string]: boolean },
	aqFetchStage: AqFetchStage,
	aqFetchData: string,
	backendConfigs: BackendConfigs,
	iecConfigs: IECConfigs,
}

export type ValidationModule = {
	fflag: (() -> boolean)?,
	shadowFlag: (() -> boolean)?,
	categories: { string }?,
	requiredData: { string }?,
	conditionalData: { string }?,
	prereqTests: { string }?,
	expectedFailures: { string }?,
	expectedAqsData: { [string]: any }?,
	knownAqsUserErrors: { [string]: string }?,
	run: (ValidationReporter, SharedData) -> nil,
}

export type PreloadedValidationModule = {
	fflag: () -> boolean,
	shadowFlag: () -> boolean,
	categories: { string },
	requiredData: { string },
	conditionalData: { string },
	prereqTests: { string },
	expectedFailures: { string },
	expectedAqsData: { [string]: any },
	knownAqsUserErrors: { [string]: string },
	isAssetQualityModule: boolean,
	run: (ValidationReporter, SharedData) -> nil,
}

export type SimpleSchemaTable = {
	[string]: {
		ClassName: string,
		_children: SimpleSchemaTable?,
	},
}

export type SimpleSchemaFlatHierarchyList = {
	[string]: {
		ClassName: string,
		path: { string },
	},
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
