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
}

return ErrorSourceStrings
