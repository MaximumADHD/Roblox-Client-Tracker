--[[
Core module for running the validation framework. To run validation, we
	1. Figure out their upload group and isolate the desired validations and data 
	2. Validate asset schema
	3. Fetch all requested data
	4. Start a thread for the quality library, which enables quality tests when finished
	5. Now, run tests layer by layer. Everything without prereqs is in the first layer, then everything enabled is second, etc.
		Ideally, we want to have only 2 layers but 3 is okay. This layer approach is to avoid threading complications, as we can safely run everything in the same layer at once.
		We can move to a dequeue system where we enable tests as soon as possible, but this will only be needed if we have bottlenecks on different layers that we cannot avoid.
	6. Return a Types.ValidationResultData table: 
		results = {
			pass = true/false,
			states = {ValidationEnums.ValidationModule: ValidationEnums.Status},
			errorTranslationContexts = { failureStringContext },
			internalData = {ValidationEnums.ValidationModule: {whatever data stored in validation}},
		}

--]]

local root = script.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ValidationModuleLoader = require(root.validationSystem.ValidationModuleLoader)
local Constants = require(root.Constants)
local ValidationTestWrapper = require(root.validationSystem.ValidationTestWrapper)
local FetchAllDesiredData = require(root.validationSystem.dataFetchModules.FetchAllDesiredData)
local getUploadCategory = require(root.util.getUploadCategory)
local RecreateSceneFromEditables = require(root.util.RecreateSceneFromEditables)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local HttpService = game:GetService("HttpService")
local TelemetryService = game:GetService("TelemetryService")
local RunService = game:GetService("RunService")
local AssetQualityService = game:GetService("AssetQualityService")

game:DefineFastInt("FullValidationTelemetryThrottleHundrethsPercent", 10000)
local RbxAnalyticsService = game:GetService("RbxAnalyticsService")

local telemetryConfig = {
	eventName = "UgcFullValidationFinished",
	backends = {
		"EventIngest",
	},
	throttlingPercentage = game:GetFastInt("FullValidationTelemetryThrottleHundrethsPercent"),
	lastUpdated = { 25, 11, 18 },
	description = [[Report result of ugc validation suite]],
	links = "https://create.roblox.com/docs/art/validation-errors",
}

local getFFlagDebugUGCValidationPrintNewStructureResults =
	require(root.flags.getFFlagDebugUGCValidationPrintNewStructureResults)
local getEngineFeatureEngineAssetQualityEngineService =
	require(root.flags.getEngineFeatureEngineAssetQualityEngineService)

local getFIntUGCValidationFetchQualityMaxRetry = require(root.flags.getFIntUGCValidationFetchQualityMaxRetry)

local ValidationManager = {}
local consumersThatCannotYield = {
	Backend = true,
}

local consumersThatWantExtraYeild = {
	InExpClient = true,
	InExpServer = true,
}

local kAssetQualityFetchNA = "assetQualityFetchNA"
local kAssetQualityFetchInProgress = "assetQualityFetchInProgress"
local kAssetQualityFetchSuccess = "assetQualityFetchSuccess"
local kAssetQualityFetchFailure = "assetQualityFetchFailure"

local function initRunVariables(
	uploadCategory: string,
	_configs: Types.UGCValidationConsumerConfigs
): ({ string }, { [string]: Types.SingleValidationFileData }, { [string]: boolean })
	-- Step 2: Figure out which validations we will run and their desired data
	local qualityTests: { string } = {}
	local desiredValidations: { [string]: Types.SingleValidationFileData } = {}
	local desiredData: { [string]: boolean } = {}

	for key, testEnum in ValidationEnums.ValidationModule do
		assert(key == testEnum)
		local validationModule: Types.PreloadedValidationModule = ValidationModuleLoader.getValidationModule(testEnum)
		local categories = validationModule.categories
		local runAsShadow = validationModule.shadowFlag() and not validationModule.fflag()

		if (runAsShadow or validationModule.fflag()) and table.find(categories, uploadCategory) then
			local is_quality = false
			for _, dataEnum in validationModule.requiredData do
				desiredData[dataEnum] = true
				if not is_quality and dataEnum == ValidationEnums.SharedDataMember.aqsSummaryData then
					desiredData[ValidationEnums.SharedDataMember.renderMeshesData] = true
					desiredData[ValidationEnums.SharedDataMember.innerCagesData] = true
					desiredData[ValidationEnums.SharedDataMember.outerCagesData] = true
					desiredData[ValidationEnums.SharedDataMember.meshTextures] = true
					table.insert(qualityTests, testEnum)
					is_quality = true
				end
			end

			local prevTests = {}
			for _, v in validationModule.prereqTests do
				prevTests[v] = true
			end

			desiredValidations[testEnum] = {
				name = testEnum,
				prereqs = prevTests,
				postreqs = {},
				isQuality = is_quality,
				isShadow = runAsShadow,
			} :: Types.SingleValidationFileData
		end
	end

	-- step 2.5: fill in postreqs
	for curTest: string, validationFD: Types.SingleValidationFileData in desiredValidations do
		for prereqTest, _ in validationFD.prereqs do
			if desiredValidations[prereqTest] == nil then
				error(string.format( -- early return with only this failure instead of error?
					"%s is needed for %s to run, but is not an included test",
					prereqTest,
					curTest
				))
			end

			table.insert(desiredValidations[prereqTest].postreqs, curTest)
		end
	end

	return qualityTests, desiredValidations, desiredData
end

local function fetchQualityResults(sharedData: Types.SharedData, qualityTests: { string })
	if not getEngineFeatureEngineAssetQualityEngineService() or not AssetQualityService then
		sharedData.aqsFetchMetrics.fetchStatus = kAssetQualityFetchFailure
		sharedData.aqsFetchMetrics.fetchFailureReason = "Not enabled"
		return
	end

	local gltfScene = RecreateSceneFromEditables.createModelForGltfExport(sharedData)
	local success, errors, gltfString
	success, errors = pcall(function()
		gltfString = AssetQualityService:GenerateAssetQualityGltfFromInstanceAsync(gltfScene)
	end)

	if success then
		for iter = 1, 1 + getFIntUGCValidationFetchQualityMaxRetry() do
			-- TODO: Log retry count
			success, errors = pcall(function()
				sharedData.aqsFetchMetrics.fetchAttemptCount = iter
				local startTime = os.clock()
				local results = AssetQualityService:FetchAssetQualitySummaryFromGltfAsync(gltfString, qualityTests)
				local deltaTime = 1000 * (os.clock() - startTime)
				sharedData.aqsFetchMetrics.visualizationUrl = results.visualizationUrl
				sharedData.aqsFetchMetrics.returnVersion = results.version
				sharedData.aqsFetchMetrics.fetchTimeMs = deltaTime
				sharedData.aqsSummaryData = results
			end)

			if success then
				break
			end
		end
	end

	if success then
		sharedData.aqsFetchMetrics.fetchStatus = kAssetQualityFetchSuccess
	else
		sharedData.aqsFetchMetrics.fetchStatus = kAssetQualityFetchFailure
		sharedData.aqsFetchMetrics.fetchFailureReason = errors
		if getFFlagDebugUGCValidationPrintNewStructureResults() then
			print("Logged AQS fetch failure:", errors)
		end
	end

	gltfScene:Destroy()
end

local function getNextLayer(
	desiredValidations: { [string]: Types.SingleValidationFileData },
	qualityReturned: boolean
): { string }
	local layer: { string } = {}

	for testEnum, validationFD in desiredValidations do
		if next(validationFD.prereqs) == nil and (qualityReturned or not validationFD.isQuality) then
			table.insert(layer, testEnum)
		end
	end

	return layer
end

local function reportFullResult(results: Types.ValidationResultData, sharedData: Types.SharedData, duration: number)
	local containsAQData = sharedData.aqsFetchMetrics.fetchStatus ~= kAssetQualityFetchNA
	local telemetryResult = {
		validationJobId = sharedData.jobId,
		bundleJobId = sharedData.consumerConfig.telemetryBundleId,
		rootInstanceId = sharedData.consumerConfig.telemetryRootId,
		studioSid = RbxAnalyticsService:GetSessionId(),
		clientId = RbxAnalyticsService:GetClientId(),
		placeId = game.PlaceId,
		validationSource = sharedData.consumerConfig.source,
		assetType = sharedData.uploadEnum.assetType and sharedData.uploadEnum.assetType.Value or 0,
		bundleType = sharedData.uploadEnum.bundleType and sharedData.uploadEnum.bundleType.Value or 0,
		numFailures = results.numFailures,
		passed = results.pass,
		durationMs = duration,
		uploadCategory = sharedData.uploadCategory,
		aqFetchStatus = sharedData.aqsFetchMetrics.fetchStatus,
		aqFetchAttemptCount = containsAQData and sharedData.aqsFetchMetrics.fetchAttemptCount or 0,
		aqFetchTimeMs = containsAQData and sharedData.aqsFetchMetrics.fetchTimeMs or 0,
		aqFetchFailureReason = containsAQData and sharedData.aqsFetchMetrics.fetchFailureReason or "",
	}

	TelemetryService:LogEvent(telemetryConfig, { customFields = telemetryResult })

	if getFFlagDebugUGCValidationPrintNewStructureResults() then
		print(results)
	end
end

local function updateResultData(
	currentResults: Types.ValidationResultData,
	desiredValidations: { [string]: Types.SingleValidationFileData },
	newResult: Types.SingleValidationResult,
	jobId: string,
	enforceShadowValidations: boolean
)
	local validationEnum = newResult.validationEnum
	if enforceShadowValidations or not desiredValidations[validationEnum].isShadow then
		currentResults.states[validationEnum] = newResult.status
		currentResults.internalData[validationEnum] = newResult.internalData
		if #newResult.errorTranslationContexts > 0 then
			table.move(
				newResult.errorTranslationContexts,
				1,
				#newResult.errorTranslationContexts,
				#currentResults.errorTranslationContexts + 1,
				currentResults.errorTranslationContexts
			)
		end

		if newResult.status ~= ValidationEnums.Status.PASS then
			currentResults.pass = false
			currentResults.numFailures += 1

			if newResult.status == ValidationEnums.Status.ERROR and not currentResults.ranIntoInternalError then
				currentResults.ranIntoInternalError = true
				table.insert(currentResults.errorTranslationContexts, {
					key = ErrorSourceStrings.Keys.InternalError,
					params = {
						ValidationJobId = jobId,
					},
				})
			end
		end
	end

	for _, nextTest in desiredValidations[validationEnum].postreqs do
		desiredValidations[nextTest].prereqs[validationEnum] = nil
	end

	desiredValidations[validationEnum] = nil
end

local function createConsumerConfigWithDefaults(
	configs: Types.UGCValidationConsumerConfigs
): Types.PreloadedConsumerConfigs
	local newConfigs: any = table.clone(configs)

	if newConfigs.enforceR15FolderStructure == nil then
		newConfigs.enforceR15FolderStructure = true
	end
	if newConfigs.enforceShadowValidations == nil then
		newConfigs.enforceShadowValidations = false
	end

	newConfigs.telemetryBundleId = newConfigs.telemetryBundleId or ""
	newConfigs.telemetryRootId = newConfigs.telemetryRootId or ""
	newConfigs.preloadedEditableMeshes = newConfigs.preloadedEditableMeshes or {}
	newConfigs.preloadedEditableImages = newConfigs.telemetryRootId or {}

	return newConfigs :: Types.PreloadedConsumerConfigs
end

local function runValidationOnRootInstance(sharedData: Types.SharedData): Types.ValidationResultData
	local startTime = os.clock()
	local instance, assetTypeEnum, bundleTypeEnum, configs =
		sharedData.rootInstance,
		sharedData.uploadEnum.assetType,
		sharedData.uploadEnum.bundleType,
		sharedData.consumerConfig

	local results = {
		pass = true,
		numFailures = 0,
		states = {},
		errorTranslationContexts = {},
		internalData = {},
		ranIntoInternalError = false,
	} :: Types.ValidationResultData

	-- Step 1, 2: get upload category then the required data tables
	local uploadCategory: string = getUploadCategory(instance, assetTypeEnum, bundleTypeEnum)
	local qualityTests: { string }, desiredValidations: { [string]: Types.SingleValidationFileData }, desiredData: { [string]: boolean } =
		initRunVariables(uploadCategory, configs)
	sharedData.uploadCategory = uploadCategory
	sharedData.aqsFetchMetrics = {
		fetchStatus = kAssetQualityFetchNA,
	}

	-- Step 3: Run schema check based on upload category. If schema is wrong, no point in any validations
	local schemaResults =
		ValidationTestWrapper(ValidationEnums.ValidationModule.ExpectedRootSchema, sharedData, results.states)
	updateResultData(results, desiredValidations, schemaResults, sharedData.jobId, configs.enforceShadowValidations)
	if results.states[ValidationEnums.ValidationModule.ExpectedRootSchema] ~= ValidationEnums.Status.PASS then
		reportFullResult(results, sharedData, -1)
		return results
	end

	-- Step 4: Fetch data and call AQS if needed
	FetchAllDesiredData.storeDesiredData(sharedData, desiredData)
	if #qualityTests > 0 then
		-- if we are allowed to spawn up threads, we can do the fetching async and yeild later when all validations are finished
		-- TODO: Play around with rccservice to do async as well
		sharedData.aqsFetchMetrics.fetchStatus = kAssetQualityFetchInProgress
		if consumersThatCannotYield[configs.source] then
			RunService:Run() -- Give rcc scripts a heartbeat so we can call delay() in cpp util
			fetchQualityResults(sharedData, qualityTests)
			RunService:Pause()
		else
			task.spawn(fetchQualityResults, sharedData, qualityTests)
		end
	end

	-- Step 5: Run all tests. If a prepreq fails, the wrapper will say it cannot start
	while next(desiredValidations) ~= nil do
		local qualityInProgress = sharedData.aqsFetchMetrics.fetchStatus == kAssetQualityFetchInProgress
		local layerTests: { string } = getNextLayer(desiredValidations, not qualityInProgress)

		if #layerTests == 0 and not qualityInProgress then
			-- This should never happen. Can happen if we have cycle dependencies. TODO: Add a GHA to check for this in new validations.
			error("Impossible to complete all layers")
		end

		for _, testEnum in layerTests do
			local validationResult = ValidationTestWrapper(testEnum, sharedData, results.states)
			updateResultData(
				results,
				desiredValidations,
				validationResult,
				sharedData.jobId,
				configs.enforceShadowValidations
			)
			if consumersThatWantExtraYeild[configs.source] then
				task.wait()
			end
		end

		if qualityInProgress and not consumersThatCannotYield[configs.source] then
			-- Avoid empty loop when waiting on quality results
			task.wait()
		end
	end

	reportFullResult(results, sharedData, 1000 * (os.clock() - startTime))
	return results
end

local function getRootInstance(assetsToValidate: { Instance }): Instance?
	-- Returns the single instance in the list or the R15ArtistIntent when present
	if #assetsToValidate == 0 then
		return nil
	end

	for _, v in assetsToValidate do
		if v.Name == Constants.FOLDER_NAMES.R15ArtistIntent then
			return v
		end
	end

	return assetsToValidate[1]
end

-- We expect a single root asset for all validations, but when enforceR15FolderStructure = true, we recieve multiple roots to validate.
-- We simply run validation on the root, and an additional validation enforces the folder structure is accurate
function ValidationManager.ValidateAsset(
	assetsToValidate: { Instance },
	assetTypeEnum: Enum.AssetType,
	configs: Types.UGCValidationConsumerConfigs
): Types.ValidationResultData
	if getFFlagDebugUGCValidationPrintNewStructureResults() then
		print(`==== {assetTypeEnum.Name} Validation begin ====`)
	end

	local sharedData: { [string]: any } = {
		jobId = HttpService:GenerateGUID(),
		entrypointInput = assetsToValidate,
		rootInstance = getRootInstance(assetsToValidate),
		uploadEnum = {
			assetType = assetTypeEnum,
		},
		consumerConfig = createConsumerConfigWithDefaults(configs),
	}

	return runValidationOnRootInstance(sharedData)
end

function ValidationManager.ValidateFinalizedBundle(
	fullBodyData: Types.FullBodyData,
	bundleTypeEnum: Enum.BundleType,
	configs: Types.UGCValidationConsumerConfigs
): Types.ValidationResultData
	-- fullBodyData is a list of the body assets being published together. TODO: Adjust consumers to include accessories too, same format is fine
	if getFFlagDebugUGCValidationPrintNewStructureResults() then
		print(`==== {bundleTypeEnum.Name} Validation begin ====`)
	end

	local rootFolder = Instance.new("Folder")
	for _, instancesAndType in fullBodyData do
		local headOrLimbs = getRootInstance(instancesAndType.allSelectedInstances)
		if headOrLimbs ~= nil then
			if headOrLimbs:IsA("Folder") or headOrLimbs:IsA("Model") then
				for _, childPart in headOrLimbs:GetChildren() do
					childPart:Clone().Parent = rootFolder
				end
			else
				headOrLimbs:Clone().Parent = rootFolder
			end
		end
	end

	local sharedData: { [string]: any } = {
		jobId = HttpService:GenerateGUID(),
		entrypointInput = fullBodyData,
		rootInstance = rootFolder,
		uploadEnum = {
			bundleType = bundleTypeEnum,
		},
		consumerConfig = createConsumerConfigWithDefaults(configs),
	}

	return runValidationOnRootInstance(sharedData)
end

return ValidationManager
