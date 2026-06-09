--!nonstrict
--[[
    This file preloads all validation modules based on ValidationEnums.ValidationModule and
    ValidationEnums.AssetQualityCheck, and provides a getter based on the enum.
    Requiring module names dynamically like this is frowned upon, so we put it independently in this nonstrict file.
    This file also ensures the validationmodule follows ValidationEnums.ValidationConfig and creates default values.
    This allows us to get an immediate error if the module contains unexpected members, or if any files tries to use unavailable configs (like a typo).

    There are two folders that hold validation modules:
      * src/validationFolders/         — general validation modules, iterated by ValidationEnums.ValidationModule
      * src/assetQualityFolders/       — Asset Quality modules, iterated by ValidationEnums.AssetQualityCheck.
]]

local root = script.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local getEngineFeatureEngineUGCValidationExpandReturnSchema =
	require(root.flags.getEngineFeatureEngineUGCValidationExpandReturnSchema)

local validationFolders = root.validationFolders
local assetQualityFolders = root.assetQualityFolders

local ValidationModuleLoader = {}
local requiredDatasForAllAQSCalls = {
	ValidationEnums.SharedDataMember.aqsSummaryData,
	ValidationEnums.SharedDataMember.renderMeshesData,
	ValidationEnums.SharedDataMember.innerCagesData,
	ValidationEnums.SharedDataMember.outerCagesData,
	ValidationEnums.SharedDataMember.meshTextures,
}

-- testEnum -> the folder its module lives in. Combining the two enum tables up front lets the
-- preload loop below stay a single inline iteration regardless of how many module sources we have.
local testEnumToSourceFolder: { [string]: Instance } = {}
for _, testEnum in ValidationEnums.ValidationModule do
	testEnumToSourceFolder[testEnum] = validationFolders
end
if getEngineFeatureEngineUGCValidationExpandReturnSchema() then
	for _, testEnum in ValidationEnums.AssetQualityCheck do
		testEnumToSourceFolder[testEnum] = assetQualityFolders
	end
end

local existingEnums = {}
for tableName, enumTable in ValidationEnums do
	existingEnums[tableName] = {}
	if typeof(enumTable) == "table" then
		for k, _ in enumTable do
			existingEnums[tableName][k] = true
		end
	end
end

local function tableOnlyHasExistingEnums(testEnum: string, provided: { string }, tableName: string)
	if typeof(provided) ~= "table" then
		error(`Invalid config option {tableName} inside of {testEnum} - expected to be table`)
	end

	for _, v in provided do
		if not existingEnums[tableName][v] then
			error(`Invalid config option {v} in {tableName} inside of {testEnum}`)
		end
	end
end

local function defaultFlagCheck()
	return true
end

local function defaultShadowCheck()
	return false
end

local allModules: { [string]: Types.PreloadedValidationModule } = {}
for testEnum, sourceFolder in testEnumToSourceFolder do
	-- First, ensure the module actually exists
	local valFolder = sourceFolder:FindFirstChild(testEnum)
	if valFolder == nil then
		error(`{testEnum} validation folder is missing from {sourceFolder.Name}`)
	end

	local valFile = valFolder:FindFirstChild(testEnum)
	if valFile == nil or not valFile:IsA("ModuleScript") then
		error(`{testEnum}.lua validation file is missing from {sourceFolder.Name}/{testEnum}`)
	end

	local valModule = require(valFile)
	-- Make sure the module doesnt have any unexpected properties
	for k, _ in valModule do
		if typeof(k) ~= "string" then
			error(`{testEnum}.lua contains non-string key {tostring(k)}`)
		elseif not existingEnums.ValidationConfig[k] then
			error(
				`{testEnum}.lua contains unexpected member {k}. Check for typos or add an extra ValidationEnums.ValidationConfig`
			)
		end
	end

	-- Fill in default values for unspecified configs. CANNOT BE NIL (as we later enforce that indexing nil is an error)
	valModule.fflag = valModule.fflag or defaultFlagCheck
	valModule.shadowFlag = valModule.shadowFlag or defaultShadowCheck
	valModule.categories = valModule.categories or {}
	valModule.requiredData = valModule.requiredData or {}
	valModule.conditionalData = valModule.conditionalData or {}
	valModule.prereqTests = valModule.prereqTests or {}
	valModule.expectedFailures = valModule.expectedFailures or {}
	valModule.expectedAqsData = valModule.expectedAqsData or {}
	valModule.knownAqsUserErrors = valModule.knownAqsUserErrors or {}

	-- Loader-injected, not a ValidationConfig entry the author can set. Signals that the module
	-- is iterated out of assetQualityFolders/ and its testEnum matches the AQS summary key.
	valModule.isAssetQualityModule = sourceFolder == assetQualityFolders

	if getEngineFeatureEngineUGCValidationExpandReturnSchema() then
		if valModule.isAssetQualityModule then
			for _, dataEnum in requiredDatasForAllAQSCalls do
				if not table.find(valModule.requiredData, dataEnum) then
					table.insert(valModule.requiredData, dataEnum)
				end
			end
		end
	elseif next(valModule.expectedAqsData) ~= nil then
		for _, dataEnum in requiredDatasForAllAQSCalls do
			if not table.find(valModule.requiredData, dataEnum) then
				table.insert(valModule.requiredData, dataEnum)
			end
		end
	end

	if valModule.run == nil or typeof(valModule.run) ~= "function" then
		error(`Missing module run function in {testEnum}`)
	end

	-- Ensure that anyone using this module is not indexing nil due to a typo. I can already feel the time saved
	setmetatable(valModule, {
		__index = function(_, index)
			error(`Invalid ValidationConfig {index} used on the module {testEnum}`)
		end,
	})

	-- Ensure all module parameters are the expected types
	if typeof(valModule.fflag) ~= "function" or typeof(valModule.fflag()) ~= "boolean" then
		error(`Invalid FFlag config in {testEnum}`)
	end
	if typeof(valModule.shadowFlag) ~= "function" or typeof(valModule.shadowFlag()) ~= "boolean" then
		error(`Invalid shadowFlag config in {testEnum}`)
	end

	tableOnlyHasExistingEnums(testEnum, valModule.categories, "UploadCategory")
	tableOnlyHasExistingEnums(testEnum, valModule.requiredData, "SharedDataMember")
	tableOnlyHasExistingEnums(testEnum, valModule.conditionalData, "SharedDataMember")
	tableOnlyHasExistingEnums(testEnum, valModule.prereqTests, "ValidationModule")

	allModules[testEnum] = valModule
end

ValidationModuleLoader.allModules = allModules

function ValidationModuleLoader.getValidationModule(testEnum: string): Types.PreloadedValidationModule
	if allModules[testEnum] == nil then
		error(`{testEnum} does not exist in the preload table.`)
	end

	return allModules[testEnum]
end

return ValidationModuleLoader
