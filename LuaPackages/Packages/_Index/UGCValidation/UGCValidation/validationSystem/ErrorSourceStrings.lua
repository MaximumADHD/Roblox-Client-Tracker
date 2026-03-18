local ErrorSourceStrings = {}
--[[
    This is an auto-generated file that contains the translation strings found in our namespace. 
    DO NOT EDIT THIS DIRECTLY. Your changes will get overwritten when someone else runs the update script. 
]]

ErrorSourceStrings.Keys = {
	SelectionCountNotOne = "Common.UGCValidation.ErrorLabel.SelectionCountNotOne",
	FolderStructureMismatch = "Common.UGCValidation.ErrorLabel.FolderStructureMismatch",
	AssetSchemaWrongRootClass = "Common.UGCValidation.ErrorLabel.AssetSchemaWrongRootClass",
	AssetSchemaWrongRootName = "Common.UGCValidation.ErrorLabel.AssetSchemaWrongRootName",
	AssetSchemaMissingItem = "Common.UGCValidation.ErrorLabel.AssetSchemaMissingItem",
	AssetSchemaUnexpectedItems = "Common.UGCValidation.ErrorLabel.AssetSchemaUnexpectedItems",
	InstanceTagsFound = "Common.UGCValidation.ErrorLabel.InstanceTagsFound",
	HeadNotDynamic = "Common.UGCValidation.ErrorLabel.HeadNotDynamic",
	FailureWithoutReason = "Common.UGCValidation.ErrorLabel.FailureWithoutReason",
	InternalError = "Common.UGCValidation.ErrorLabel.InternalError",
	DynamicHeadCageMisaligned = "Common.UGCValidation.ErrorLabel.DynamicHeadCageMisaligned",
	NoAttributes = "Common.UGCValidation.ErrorLabel.NoAttributes",
	DynamicHeadNOFACS = "Common.UGCValidation.ErrorLabel.DynamicHeadNOFACS",
	DynamicHeadMISSINGCAGE = "Common.UGCValidation.ErrorLabel.DynamicHeadMISSINGCAGE",
	AQSInputDataError = "Common.UGCValidation.AQSInputDataError",
	TexturePackInvalidURL = "Common.UGCValidation.ErrorLabel.TexturePackInvalidURL",
	DynamicHeadLeftEyeNotClose = "Common.UGCValidation.ErrorLabel.DynamicHeadLeftEyeNotClose",
	DynamicHeadRightEyeNotClose = "Common.UGCValidation.ErrorLabel.DynamicHeadRightEyeNotClose",
	DynamicHeadMouthNotOpen = "Common.UGCValidation.ErrorLabel.DynamicHeadMouthNotOpen",
	DynamicHeadHappyNotShown = "Common.UGCValidation.ErrorLabel.DynamicHeadHappyNotShown",
	DynamicHeadSadNotShown = "Common.UGCValidation.ErrorLabel.DynamicHeadSadNotShown",
	AQSInternalError = "Common.UGCValidation.ErrorLabel.AQSInternalError",
	FaceControlsOverrideFACSNotEmpty = "Common.UGCValidation.ErrorLabel.FaceControlsOverrideFACSNotEmpty",
	TagsFoundOnSingleInstance = "Common.UGCValidation.TagsFoundOnSingleInstance",
	FacsShrinksHead = "Common.UGCValidation.ErrorLabel.FacsShrinksHead",
	FacsExpandsHead = "Common.UGCValidation.ErrorLabel.FacsExpandsHead",
	UnallowedJointSkinned = "Common.UGCValidation.ErrorLabel.UnallowedJointSkinned",
	UnallowedFacsJoints = "Common.UGCValidation.ErrorLabel.UnallowedFacsJoints",
}

ErrorSourceStrings.Values = {
	SelectionCountNotOne = "To upload an asset to Roblox, you must select exactly 1 instance and the associated upload type.",
	FolderStructureMismatch = "Upload format does not match expected folder structure. Please try again or file a bug report.",
	AssetSchemaWrongRootClass = "Uploaded asset should be a {ExpectedClass} but is a {RootClass}.",
	AssetSchemaWrongRootName = "Uploaded asset should be named {ExpectedClass} but is instead named {RootClass}.",
	AssetSchemaMissingItem = "Could not find required {ExpectedClass} called {ExpectedName} inside of {ParentPath}",
	AssetSchemaUnexpectedItems = "The following instances are not part of the approved schema and should be removed: {UnexpectedDescendantPaths}.",
	InstanceTagsFound = "The following instances have tags but marketplace assets cannot have any tags: {ProblematicDescendantPaths}",
	HeadNotDynamic = "Dynamic Heads on the marketplace must be setup to properly animate the core facial movements, but our detection did not notice a substantial change.",
	FailureWithoutReason = "Validation failed for an unknown reason. Please try again or open a bug report if this issue persists.",
	InternalError = "Your asset could not be properly validated due to an internal error. If this issue persists, please create a bug report. ValidationJobId: {ValidationJobId}",
	DynamicHeadCageMisaligned = "Dynamic Heads on the marketplace must be properly caged so that the eyes and mouth vertices on the cage line up with the mesh vertices. Please improve your caging and its alignment with the mesh.",
	NoAttributes = "'{RootInstanceName}' (or its descendants) contain Attributes. You need to remove Attributes from the following: {InstanceNameList}",
	DynamicHeadNOFACS = "Dynamic Heads on the marketplace has not FACS data.",
	DynamicHeadMISSINGCAGE = "Dynamic Heads on the marketplace have no Head Cages. Please create Head Cage for the Dynamic Head.",
	AQSInputDataError = "Quality score cannot be properly computed due to the input data is incorrect or incomplete. Please check your model or file a bug report",
	TexturePackInvalidURL = "'{SurfaceAppearanceName}' has a 'TexturePack' property with an invalid URL. Please fix the URL.",
	DynamicHeadLeftEyeNotClose = "Cannot detect left eye close expression for the Dynamic Head. Please adjust cage landmarks for the left eye to match where the left eye on the head and make sure it can be closed.",
	DynamicHeadRightEyeNotClose = "Cannot detect right eye close expression for the Dynamic Head. Please adjust cage landmarks for the right eye to match where the right eye on the head and make sure it can be closed.",
	DynamicHeadMouthNotOpen = "Cannot detect mouth open expression for the Dynamic Head. Please adjust cage landmarks for mouth to match where the mouth on the head and make sure it can open.",
	DynamicHeadHappyNotShown = "Cannot detect smile expression for the Dynamic Head. Please adjust cage landmarks for the mouth to match where the mouth on the head and make sure it can show smile expression.",
	DynamicHeadSadNotShown = "Cannot detect frown expression for the Dynamic Head. Please adjust cage landmarks for the mouth to match where the mouth on the head and make sure it can show frown expression.",
	AQSInternalError = "Score cannot be generated due to Asset Quality Error. Please check input data correctness and try again, or file a bug report.",
	FaceControlsOverrideFACSNotEmpty = "The InternalOverrideFACSData property on FaceControls must be empty on upload.",
	TagsFoundOnSingleInstance = "Instance {ProblematicDescendantPath} should not have tags.",
	FacsShrinksHead = "FACs was detected shrinking your head to {modPercent}%, but altering the head is against marketplace policy for facial animations.",
	FacsExpandsHead = "FACs was detected expanding your head to {modPercent}%, but altering the head is against marketplace policy for facial animations.",
	UnallowedJointSkinned = "Bodypart {partName} is skinned to virtual joint {jointName}, which is not part of the R15plus schema.",
	UnallowedFacsJoints = "Head meshpart has facial animations for {jointName}, which cannot be used in FACs. Please rename this joint then reimport your head.",
}

return ErrorSourceStrings
