local root = script.Parent.Parent.Parent
local Constants = require(root.Constants)
local Types = require(root.util.Types)
local SingleInstanceSelected = {}

local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

SingleInstanceSelected.categories = Constants.AllAssetUploadCategories
SingleInstanceSelected.required_data = {
	ValidationEnums.SharedDataMember.entrypointInput,
	ValidationEnums.SharedDataMember.consumerConfig,
	ValidationEnums.SharedDataMember.uploadEnum,
}

local function deepEquals(_inst1: Instance, _inst2: Instance)
	-- TODO: Add deep copy util once reflection API is added to luau. Will be an attack vector if not done before old system is deprecated.
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
	local providedData: { Instance }, configs: Types.UGCValidationConsumerConfigs, assetEnum: Enum.AssetType =
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
			or not deepEquals(mapping.R15ArtistIntent, mapping.R15Fixed)
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
