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
local AssetQualityService
local HttpService = game:GetService("HttpService")
local TelemetryService = game:GetService("TelemetryService")
game:DefineFastInt("FullValidationTelemetryThrottleHundrethsPercent", 10000)
local RbxAnalyticsService = game:GetService("RbxAnalyticsService")
local RunService = game:GetService("RunService")
local QUALITY_FETCH_FAILURE_PLACEHOLDER = {}

local telemetryConfig = {
	eventName = "UgcFullValidationFinished",
	backends = {
		"EventIngest",
	},
	throttlingPercentage = game:GetFastInt("FullValidationTelemetryThrottleHundrethsPercent"),
	lastUpdated = { 25, 10, 10 },
	description = [[Report result of ugc validation suite]],
	links = "https://create.roblox.com/docs/art/validation-errors",
}

local getFFlagDebugUGCValidationPrintNewStructureResults =
	require(root.flags.getFFlagDebugUGCValidationPrintNewStructureResults)
local getEngineFeatureEngineAssetQualityEngineService =
	require(root.flags.getEngineFeatureEngineAssetQualityEngineService)

if getEngineFeatureEngineAssetQualityEngineService() then
	AssetQualityService = game:GetService("AssetQualityService" :: any)
end

local getFIntUGCValidationFetchQualityMaxRetry = require(root.flags.getFIntUGCValidationFetchQualityMaxRetry)

local ValidationManager = {}
local consumersThatCannotYield = {
	Backend = true,
}

local consumersThatWantExtraYeild = {
	InExpClient = true,
	InExpServer = true,
}

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

		if validationModule.fflag() and table.find(categories, uploadCategory) then
			local is_quality = false
			for _, dataEnum in validationModule.required_data do
				desiredData[dataEnum] = true
				if not is_quality and dataEnum == ValidationEnums.SharedDataMember.qualityResults then
					desiredData[ValidationEnums.SharedDataMember.renderMeshesData] = true
					desiredData[ValidationEnums.SharedDataMember.innerCagesData] = true
					desiredData[ValidationEnums.SharedDataMember.outerCagesData] = true
					desiredData[ValidationEnums.SharedDataMember.meshTextures] = true
					table.insert(qualityTests, testEnum)
					is_quality = true
				end
			end

			local prevTests = {}
			for _, v in validationModule.prereq_tests do
				prevTests[v] = true
			end

			desiredValidations[testEnum] = {
				name = testEnum,
				prereqs = prevTests,
				postreqs = {},
				isQuality = is_quality,
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
		sharedData.qualityResults = QUALITY_FETCH_FAILURE_PLACEHOLDER
		return
	end

	local gltfScene = RecreateSceneFromEditables.createModelForGltfExport(sharedData)
	local success, _errors
	for _iter = 1, 1 + getFIntUGCValidationFetchQualityMaxRetry() do
		-- TODO: Log retry count
		success, _errors = pcall(function()
			local gltfString = (AssetQualityService :: any):generateAssetQualityGltfFromInstanceAsync(gltfScene)
			sharedData.qualityResults = (AssetQualityService :: any):fetchAssetQualitySummaryFromGltfAsync(
				gltfString,
				qualityTests
			)
		end)

		if success then
			break
		end
	end

	if not success then
		-- TODO: Log fetch failure and reason
		if getFFlagDebugUGCValidationPrintNewStructureResults() then
			print("Storing quality placeholder due to", _errors)
		end
		sharedData.qualityResults = QUALITY_FETCH_FAILURE_PLACEHOLDER
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
	local telemetryResult = {
		validationJobId = sharedData.jobId,
		bundleJobId = sharedData.consumerConfig.telemetry_bundle_id,
		rootInstanceId = sharedData.consumerConfig.telemetry_root_id,
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
	}

	TelemetryService:LogEvent(telemetryConfig, { customFields = telemetryResult })

	if getFFlagDebugUGCValidationPrintNewStructureResults() then
		print(results)
	end
end

local function runValidationOnRootInstance(sharedData: Types.SharedData): Types.ValidationResultData
	local startTime = tick()
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
	} :: Types.ValidationResultData

	-- Step 1, 2: get upload category then the required data tables
	local uploadCategory: string = getUploadCategory(instance, assetTypeEnum, bundleTypeEnum)
	local qualityTests: { string }, desiredValidations: { [string]: Types.SingleValidationFileData }, desiredData: { [string]: boolean } =
		initRunVariables(uploadCategory, configs)
	sharedData.uploadCategory = uploadCategory

	-- Step 3: Run schema check based on upload category
	local function runSingleValidation(testEnum)
		local validationFD: Types.SingleValidationFileData = desiredValidations[testEnum]
		local singleResult: Types.SingleValidationResult = ValidationTestWrapper(testEnum, sharedData, results.states)

		results.states[testEnum] = singleResult.status
		if #singleResult.errorTranslationContexts > 0 then
			table.move(
				singleResult.errorTranslationContexts,
				1,
				#singleResult.errorTranslationContexts,
				#results["errorTranslationContexts"] + 1,
				results["errorTranslationContexts"]
			)
		end

		results.internalData[testEnum] = singleResult.internalData
		if singleResult.status ~= ValidationEnums.Status.PASS then
			results.pass = false
			results.numFailures += 1
		end

		for _, nextTest in validationFD.postreqs do
			desiredValidations[nextTest].prereqs[testEnum] = nil
		end

		desiredValidations[testEnum] = nil
	end

	runSingleValidation(ValidationEnums.ValidationModule.ExpectedRootSchema)
	if results.states[ValidationEnums.ValidationModule.ExpectedRootSchema] ~= ValidationEnums.Status.PASS then
		reportFullResult(results, sharedData, -1)
		return results
	end

	-- Step 4: Fetch data
	FetchAllDesiredData.storeDesiredData(sharedData, desiredData)
	local _qualityFetchCoroutine
	if #qualityTests > 0 and not consumersThatCannotYield[configs.source] then
		-- if we are allowed to spawn up threads, lets start fetching quality from the start
		-- TODO: Check if RCCService is okay with this, if so we can remove the consumer check.
		_qualityFetchCoroutine = task.spawn(fetchQualityResults, sharedData, qualityTests)
	end

	-- Step 5: Run all tests.
	while next(desiredValidations) ~= nil do
		-- TODO: Add single failure when quality results are needed but not fetched
		local qualityReturned = sharedData.qualityResults ~= nil
		local layerTests: { string } = getNextLayer(desiredValidations, qualityReturned)

		if #layerTests == 0 and (qualityReturned or #qualityTests == 0) then
			error("Impossible to complete all layers")
		end

		for _, testEnum in layerTests do
			runSingleValidation(testEnum)
			if consumersThatWantExtraYeild[configs.source] then
				task.wait()
			end
		end

		if not consumersThatCannotYield[configs.source] then
			task.wait()
		end

		if #layerTests == 0 and #qualityTests > 0 and consumersThatCannotYield[configs.source] then
			-- We are waiting on quality, but never started the thread for it
			RunService:Run() -- Give rcc scripts a heartbeat so we can call delay() in cpp util
			fetchQualityResults(sharedData, qualityTests)
			RunService:Pause()
		end
	end

	reportFullResult(results, sharedData, tick() - startTime)
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
		consumerConfig = configs,
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
		consumerConfig = configs,
	}

	return runValidationOnRootInstance(sharedData)
end

return ValidationManager
