local root = script.Parent.Parent

local Types = require(root.util.Types)
local createUGCBodyPartFolders = require(root.util.createUGCBodyPartFolders)
local fixUpPreValidation = require(root.util.fixUpPreValidation)

local HttpService = game:GetService("HttpService")

local AssetQualityValidationClient = {}

-- Overridable seam so tests can supply a fake service; production reads the engine service directly.
-- Consumers do not pass the service in -- they mock `.fetch` (or this getter) instead.
function AssetQualityValidationClient.getAssetQualityService(): any
	return (game :: any):GetService("AssetQualityService")
end

function AssetQualityValidationClient.buildSettings(config: Types.AssetQualityValidationConfig): any
	local options: { [string]: string } = {
		ConsumerName = config.source,
	}
	if config.intendedBundleType then
		options.IntendedBundleTypeId = tostring(config.intendedBundleType.Value)
	end
	if config.validateSingleAssetsInBundle then
		options.ValidateSingleAssetsInBundle = "true"
	end
	if config.backendConfigs then
		options.LegacyValidationConfigs = HttpService:JSONEncode({
			allowedCreators = config.backendConfigs.restrictedUserIds,
			universeId = config.backendConfigs.universeId,
			isUserInTrustedCreatorProgram = config.backendConfigs.isUserInTrustedCreatorProgram,
			isEmissiveAllowed = config.backendConfigs.isEmissiveAllowed,
		})
	end

	local settings: any = {
		postQualitySteps = { "validation" },
		options = options,
	}
	if config.mode then
		settings.mode = config.mode
	end
	return settings
end

function AssetQualityValidationClient.createSingleAssetInput(
	instance: Instance,
	assetType: Enum.AssetType
): Types.AssetQualityValidationInput
	local ok, cloneOrErr = pcall(fixUpPreValidation, instance)
	if not ok then
		error(cloneOrErr, 0)
	end
	local clone = cloneOrErr :: Instance

	local wrapper = Instance.new("Model")
	wrapper.Name = instance.Name
	clone.Parent = wrapper
	return { model = wrapper :: Instance, assetType = assetType }
end

function AssetQualityValidationClient.createBodyInputs(
	avatar: Instance,
	allowedBundleTypeSettings: any,
	bundleType: "Body" | "DynamicHead"
): { Types.AssetQualityValidationInput }
	local clone = fixUpPreValidation(avatar)
	local inputs: { Types.AssetQualityValidationInput } = {}
	local ok, err = pcall(function()
		local folderMap = createUGCBodyPartFolders(clone :: any, allowedBundleTypeSettings, bundleType, true)
		for assetType, folders in folderMap :: any do
			local wrapper = Instance.new("Model")
			for _, folder in folders do
				folder.Parent = wrapper
			end
			table.insert(inputs, { model = wrapper :: Instance, assetType = assetType })
		end
	end)
	clone:Destroy()
	if not ok then
		for _, input in inputs do
			input.model:Destroy()
		end
		error(err, 0)
	end
	return inputs
end

function AssetQualityValidationClient.fetch(
	inputs: { Types.AssetQualityValidationInput },
	config: Types.AssetQualityValidationConfig
): { Types.AssetQualityValidationResult }
	local assetQualityService = AssetQualityValidationClient.getAssetQualityService()
	local models: { Instance }, assetTypeIds: { number } = {}, {}
	for _, input in inputs do
		table.insert(models, input.model)
		table.insert(assetTypeIds, input.assetType.Value)
	end

	local ok, resultsOrError = pcall(function()
		local result = assetQualityService:FetchAssetQualityValidationRawFromModelsAsync(
			models,
			assetTypeIds,
			AssetQualityValidationClient.buildSettings(config)
		)
		if typeof(result) == "table" and typeof(result.error) == "string" then
			local taskId = if typeof(result.taskId) == "string" then result.taskId else nil
			error(if taskId then `{result.error} (taskId: {taskId})` else result.error, 0)
		end

		local rawJson = if typeof(result) == "table" then result.validationRawJson else nil
		if typeof(rawJson) ~= "string" then
			error("AssetQualityService returned no validationRawJson", 0)
		end
		local decodeOk, decoded = pcall(HttpService.JSONDecode, HttpService, rawJson)
		if not decodeOk or typeof(decoded) ~= "table" then
			error("Failed to decode validationRawJson from AssetQualityService", 0)
		end
		return decoded :: { Types.ValidationResultData }
	end)

	for _, input in inputs do
		input.model:Destroy()
	end
	if not ok then
		error(resultsOrError, 0)
	end

	local mapAssetTypes = #inputs == 1 or config.validateSingleAssetsInBundle == true
	local results: { Types.AssetQualityValidationResult } = {}
	for index, validationData in resultsOrError :: { Types.ValidationResultData } do
		table.insert(results, {
			validationData = validationData,
			assetType = if mapAssetTypes and inputs[index] then inputs[index].assetType else nil,
		})
	end
	return results
end

return AssetQualityValidationClient
