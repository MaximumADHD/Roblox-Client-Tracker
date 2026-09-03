local root = script.Parent.Parent.Parent
local Constants = require(root.Constants)
local Types = require(root.util.Types)
local SingleInstanceSelected = {}

local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local getEngineFeatureEngineUGCValidateInstanceTreesEquivalent =
	require(root.flags.getEngineFeatureEngineUGCValidateInstanceTreesEquivalent)

local UGCValidationService = game:GetService("UGCValidationService")

SingleInstanceSelected.categories = Constants.AllAssetUploadCategories
SingleInstanceSelected.requiredData = {
	ValidationEnums.SharedDataMember.entrypointInput,
	ValidationEnums.SharedDataMember.consumerConfig,
	ValidationEnums.SharedDataMember.uploadEnum,
}

local function deepEquals(inst1: Instance, inst2: Instance, consumerEnv: Types.ConsumerEnv): boolean
	-- Only the Backend deserializes the untrusted R15Fixed copy, and only there is the fetched tree free of
	-- in-experience editables; Studio/IEC stay permissive (editable behavior under the diff is unverified).
	-- The engine-feature gate keeps older engines (method absent) permissive. No pcall: an engine error
	-- should surface as validation telemetry.
	-- todo: delete this wrapper after EngineUGCValidateInstanceTreesEquivalent flag removal (inline the call).
	if
		getEngineFeatureEngineUGCValidateInstanceTreesEquivalent()
		and consumerEnv == ValidationEnums.ConsumerEnv.Backend
	then
		return (UGCValidationService :: any):AreInstanceTreesEquivalent(inst1, inst2)
	end
	return true
end

local function getFoldersMapping(providedData: { Instance }): { [string]: Instance? }
	local expectedNames = {
		R15ArtistIntent = true,
		R15Fixed = true,
		R6 = true,
	}
	local mapping = {}

	for _, inst in providedData do
		if inst:IsA("Folder") and expectedNames[inst.Name] then
			mapping[inst.Name] = inst
		end
	end

	return mapping
end

SingleInstanceSelected.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local providedData: { Instance }, configs: Types.PreloadedConsumerConfigs, assetEnum: Enum.AssetType =
		data.entrypointInput, data.consumerConfig, data.uploadEnum.assetType

	if Constants.AssetUploadsWithFolderStructure[assetEnum] and configs.enforceR15FolderStructure then
		if #providedData ~= 3 then
			reporter:fail(ErrorSourceStrings.Keys.FolderStructureMismatch)
			return
		end

		local mapping = getFoldersMapping(providedData)
		if
			not mapping.R15ArtistIntent
			or not mapping.R15Fixed
			or not mapping.R6
			or #mapping.R6:GetChildren() ~= 0
			or not deepEquals(mapping.R15ArtistIntent, mapping.R15Fixed, configs.consumerEnv)
		then
			reporter:fail(ErrorSourceStrings.Keys.FolderStructureMismatch)
			return
		end
	else
		if #providedData ~= 1 then
			reporter:fail(ErrorSourceStrings.Keys.SelectionCountNotOne)
		end
	end
end

return SingleInstanceSelected :: Types.ValidationModule
