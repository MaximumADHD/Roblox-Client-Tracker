--[[
Core module for running the validation framework. To run validation, we
	1. Figure out their upload group and isolate the desired validations and data 
	2. Validate asset schema
	3. Fetch all requested data
	4. Start a thread for the quality library, which enables quality tests when finished
	5. Now, run tests layer by layer. Everything without prereqs is in the first layer, then everything enabled is second, etc.
		Ideally, we want to have only 2 layers but 3 is okay. This layer approach is to avoid threading complications, as we can safely run everything in the same layer at once.
		We can move to a dequeue system where we enable tests as soon as possible, but this will only be needed if we have bottlenecks on different layers that we cannot avoid.
	6. Return a Types.ValidationResultData table. See Types.lua for the full shape.
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
local stripMeshFromGltf = require(root.util.stripMeshFromGltf)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local R15plusUtils = require(root.util.R15plusUtils)
local getFFlagDebugAllowHRDUploadOnBundleBackend = require(root.flags.getFFlagDebugAllowHRDUploadOnBundleBackend)
local getFFlagUGCValidationAnimationPackSupport = require(root.flags.getFFlagUGCValidationAnimationPackSupport)
local getEngineFeatureEngineUGCValidateInstanceTreesEquivalent =
	require(root.flags.getEngineFeatureEngineUGCValidateInstanceTreesEquivalent)
local getFFlagUGCValidateMigrateSchemaProperties = require(root.flags.getFFlagUGCValidateMigrateSchemaProperties)
local getFFlagDebugUGCDisableAssetQualityChecks = require(root.flags.getFFlagDebugUGCDisableAssetQualityChecks)
local getEngineFeatureEngineUGCValidateEmoteAnimationExport =
	require(root.flags.getEngineFeatureEngineUGCValidateEmoteAnimationExport)

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

local getFIntUGCValidationFetchQualityMaxRetry = require(root.flags.getFIntUGCValidationFetchQualityMaxRetry)

local ValidationManager = {}
local consumersThatCannotYield = {
	Publish = true,
	Backend = true,
	Internal = true,
}

local consumersThatWantExtraYeild = {
	InExpServer = true,
	InExpClient = true,
}

local SOURCE_TO_ENV: { [Types.UGCValidationConsumerName]: Types.ConsumerEnv } = {
	Toolbox = ValidationEnums.ConsumerEnv.Studio,
	AutoSetup = ValidationEnums.ConsumerEnv.Studio,
	Publish = ValidationEnums.ConsumerEnv.Backend,
	Backend = ValidationEnums.ConsumerEnv.Backend,
	Internal = ValidationEnums.ConsumerEnv.Backend,
	InExpServer = ValidationEnums.ConsumerEnv.IEC,
	InExpClient = ValidationEnums.ConsumerEnv.IEC,
}

local AssetQualityFetchStatus = ValidationEnums.AssetQualityFetchStatus

local function initRunVariables(
	uploadCategory: string,
	configs: Types.PreloadedConsumerConfigs
): ({ string }, { [string]: Types.SingleValidationFileData }, { [string]: boolean })
	-- Step 2: Figure out which validations we will run and their desired data
	local qualityTests: { string } = {}
	local desiredValidations: { [string]: Types.SingleValidationFileData } = {}
	local desiredData: { [string]: boolean } = {}
	-- Gated on the migration flag so flag-off behavior is unchanged: if the new
	-- folder-based path ever needs to be rolled back, flipping the flag also
	-- disables this skip wiring without requiring a code revert.
	local skipModules = if getFFlagUGCValidateMigrateSchemaProperties() then configs.skipModules else {}

	for testEnum, validationModule in ValidationModuleLoader.allModules do
		if
			skipModules[testEnum]
			or (
				getFFlagDebugUGCDisableAssetQualityChecks()
				and configs.skipAssetQualityChecks
				and validationModule.isAssetQualityModule
			)
		then
			continue
		end

		local categories = validationModule.categories

		if table.find(categories, uploadCategory) and (validationModule.fflag() or validationModule.shadowFlag()) then
			local runAsShadow = validationModule.shadowFlag() and not validationModule.fflag()
			for _, dataEnum in validationModule.requiredData do
				desiredData[dataEnum] = true
			end

			for _, dataEnum in validationModule.conditionalData do
				desiredData[dataEnum] = true
			end

			local isQuality = validationModule.isAssetQualityModule

			if isQuality then
				table.insert(qualityTests, testEnum)
			end

			local prevTests = {}
			for _, v in validationModule.prereqTests do
				prevTests[v] = true
			end

			desiredValidations[testEnum] = {
				name = testEnum,
				prereqs = prevTests,
				postreqs = {},
				isQuality = isQuality,
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
	if not AssetQualityService then
		sharedData.aqsFetchMetrics.fetchStatus = AssetQualityFetchStatus.assetQualityFetchFailure
		sharedData.aqsFetchMetrics.fetchFailureReason = "Not enabled"
		return
	end

	local success, errors, gltfString, gltfScene
	if sharedData.consumerConfig.aqFetchStage ~= "scene" then
		if sharedData.consumerConfig.aqFetchStage == "gltf" then
			gltfString = sharedData.consumerConfig.aqFetchData
		end
		success = true
	else
		success, errors = pcall(function()
			gltfScene = RecreateSceneFromEditables.createModelForGltfExport(sharedData)
			gltfString = AssetQualityService:GenerateAssetQualityGltfFromInstanceAsync(gltfScene)
		end)

		-- For emote exports, strip mesh geometry from the glTF so AQ only sees animation data.
		if
			getEngineFeatureEngineUGCValidateEmoteAnimationExport()
			and success
			and gltfString
			and sharedData.uploadCategory == ValidationEnums.UploadCategory.EMOTE_ANIMATION
		then
			-- If stripping fails (e.g. unexpected glTF shape), fall back to the
			-- unstripped glTF rather than failing the whole validation.
			local stripOk, strippedGltf = pcall(stripMeshFromGltf, gltfString)
			if stripOk then
				gltfString = strippedGltf
			end
		end
	end

	if success then
		for iter = 1, 1 + getFIntUGCValidationFetchQualityMaxRetry() do
			-- TODO: Log retry count
			success, errors = pcall(function()
				sharedData.aqsFetchMetrics.fetchAttemptCount = iter
				local startTime = os.clock()
				local results
				if sharedData.consumerConfig.aqFetchStage == "jobId" then
					results = (AssetQualityService :: any):FetchAssetQualitySummaryFromJobIdAsync(
						sharedData.consumerConfig.aqFetchData,
						qualityTests
					)
				else
					results = AssetQualityService:FetchAssetQualitySummaryFromGltfAsync(gltfString, qualityTests)
				end
				local deltaTime = 1000 * (os.clock() - startTime)
				sharedData.aqsFetchMetrics.visualizationUrl = results.visualizationUrl
				sharedData.aqsFetchMetrics.fetchTimeMs = deltaTime
				sharedData.aqsFetchMetrics.aqJobId = results.aqJobId
				sharedData.aqsSummaryData = HttpService:JSONDecode(results["rawJson"])
			end)

			if success then
				break
			end
		end
	end

	if success then
		sharedData.aqsFetchMetrics.fetchStatus = AssetQualityFetchStatus.assetQualityFetchSuccess
		if getFFlagDebugUGCValidationPrintNewStructureResults() then
			print(
				string.format(
					"AQS fetch success: aqJobId=%s attempts=%d fetchTimeMs=%d",
					sharedData.aqsFetchMetrics.aqJobId or "",
					sharedData.aqsFetchMetrics.fetchAttemptCount or 0,
					sharedData.aqsFetchMetrics.fetchTimeMs or 0
				)
			)
			print(sharedData.aqsSummaryData)
		end
	else
		sharedData.aqsFetchMetrics.fetchFailureReason = errors
		sharedData.aqsSummaryData = FetchAllDesiredData.DATA_FETCH_FAILURE
		sharedData.aqsFetchMetrics.fetchStatus = AssetQualityFetchStatus.assetQualityFetchFailure
		if getFFlagDebugUGCValidationPrintNewStructureResults() then
			print("AQS fetch failure:", errors)
		end
	end

	if gltfScene then
		gltfScene:Destroy()
	end
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

local function populateRelevantSourceStrings(results: Types.ValidationResultData)
	local function capture(failureStringKey: string)
		local keyBreakdown = failureStringKey:split(".")
		local keyEnum = keyBreakdown[#keyBreakdown]
		local sourceString = ErrorSourceStrings.Values[keyEnum]
		if sourceString then
			results.relevantSourceStrings[failureStringKey] = sourceString
		end
	end

	for _, failures in results.failureMap do
		for _, entry in failures do
			capture(entry.failureStringKey)
		end
	end
	for _, warnings in results.warningMap do
		for _, entry in warnings do
			capture(entry.failureStringKey)
		end
	end
end

local function getDebugLabel(sharedData: Types.SharedData): string
	local upload = sharedData.uploadEnum
	if upload.assetType then
		return upload.assetType.Name
	elseif upload.bundleType then
		return upload.bundleType.Name
	end
	return "?"
end

local function reportFullResult(results: Types.ValidationResultData, sharedData: Types.SharedData, duration: number)
	local containsAQData = sharedData.aqsFetchMetrics.fetchStatus ~= AssetQualityFetchStatus.assetQualityFetchNA
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
		aqJobId = sharedData.aqsFetchMetrics.aqJobId or "",
	}

	TelemetryService:LogEvent(telemetryConfig, { customFields = telemetryResult })

	if getFFlagDebugUGCValidationPrintNewStructureResults() then
		print(
			string.format(
				"==== %s Validation end ==== pass=%s numFailures=%d numWarnings=%d durationMs=%d",
				getDebugLabel(sharedData),
				tostring(results.pass),
				results.numFailures,
				results.numWarnings,
				duration
			)
		)
		for testEnum, failures in results.failureMap do
			for _, entry in failures do
				print(
					string.format(
						"  FAIL %s: %s @ %s",
						testEnum,
						entry.failureStringKey,
						if entry.instancePath ~= "" then entry.instancePath else "<root>"
					)
				)
			end
		end
		print(results)
	end
end

local function updateResultData(
	currentResults: Types.ValidationResultData,
	desiredValidations: { [string]: Types.SingleValidationFileData },
	newResult: Types.SingleValidationResult,
	_jobId: string,
	enforceShadowValidations: boolean
)
	local validationEnum = newResult.validationEnum
	if enforceShadowValidations or not desiredValidations[validationEnum].isShadow then
		currentResults.states[validationEnum] = newResult.status

		if newResult.status ~= ValidationEnums.Status.PASS then
			currentResults.pass = false
			currentResults.numFailures += math.max(1, #newResult.failures)
		end

		if #newResult.failures > 0 then
			currentResults.failureMap[validationEnum] = newResult.failures
		end

		if #newResult.warnings > 0 then
			currentResults.warningMap[validationEnum] = newResult.warnings
			currentResults.numWarnings += #newResult.warnings
		end

		if newResult.status == ValidationEnums.Status.ERROR then
			-- adapter will add a message to ask them to file a bug report with the validation job id
			currentResults.ranIntoInternalError = true
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
	newConfigs.preloadedEditableImages = newConfigs.preloadedEditableImages or {}
	newConfigs.preloadedHsrAssets = newConfigs.preloadedHsrAssets or {}
	newConfigs.skipModules = newConfigs.skipModules or {}
	newConfigs.skipAssetQualityChecks = newConfigs.skipAssetQualityChecks or false

	-- Resolve env only for the new system; flag-off keeps legacy behavior bit-identical.
	if getFFlagUGCValidateMigrateSchemaProperties() then
		newConfigs.consumerEnv = SOURCE_TO_ENV[newConfigs.source]
		assert(newConfigs.consumerEnv ~= nil, `unknown consumer source: {tostring(newConfigs.source)}`)

		newConfigs.backendConfigs = newConfigs.backendConfigs or {}
		newConfigs.iecConfigs = newConfigs.iecConfigs or {}
	end

	newConfigs.aqFetchStage = newConfigs.aqFetchStage or "scene"
	newConfigs.aqFetchData = newConfigs.aqFetchData or ""
	assert(
		(newConfigs.aqFetchStage == "scene") == (newConfigs.aqFetchData == ""),
		`aqFetchData must be non-empty iff aqFetchStage is "gltf" or "jobId" (got stage="{newConfigs.aqFetchStage}")`
	)

	return newConfigs :: Types.PreloadedConsumerConfigs
end

local function runValidationOnRootInstance(sharedData: Types.SharedData): Types.ValidationResultData
	local startTime = os.clock()
	local instance, assetTypeEnum, bundleTypeEnum, configs =
		sharedData.rootInstance,
		sharedData.uploadEnum.assetType,
		sharedData.uploadEnum.bundleType,
		sharedData.consumerConfig

	if getFFlagDebugUGCValidationPrintNewStructureResults() then
		print(
			string.format(
				"==== %s Validation begin ==== jobId=%s source=%s",
				getDebugLabel(sharedData),
				sharedData.jobId,
				sharedData.consumerConfig.source
			)
		)
	end

	local results: Types.ValidationResultData = {
		validationJobId = sharedData.jobId,
		pass = true,
		numFailures = 0,
		numWarnings = 0,
		states = {},
		ranIntoInternalError = false,
		failureMap = {},
		warningMap = {},
		relevantSourceStrings = {},
		aqJobId = "",
	}

	-- Step 1, 2: get upload category then the required data tables
	local uploadCategory: string = getUploadCategory(instance, assetTypeEnum, bundleTypeEnum)
	local qualityTests: { string }, desiredValidations: { [string]: Types.SingleValidationFileData }, desiredData: { [string]: boolean } =
		initRunVariables(uploadCategory, configs)
	sharedData.uploadCategory = uploadCategory
	sharedData.aqsFetchMetrics = {
		fetchStatus = AssetQualityFetchStatus.assetQualityFetchNA,
		aqJobId = if configs.aqFetchStage == "jobId" then configs.aqFetchData else nil,
	}

	-- Step 3: Run schema check based on upload category. If schema is wrong, no point in any validations
	local schemaResults =
		ValidationTestWrapper(ValidationEnums.ValidationModule.ExpectedRootSchema, sharedData, results.states)
	updateResultData(results, desiredValidations, schemaResults, sharedData.jobId, configs.enforceShadowValidations)
	if results.states[ValidationEnums.ValidationModule.ExpectedRootSchema] ~= ValidationEnums.Status.PASS then
		populateRelevantSourceStrings(results)
		results.aqJobId = sharedData.aqsFetchMetrics.aqJobId or ""
		reportFullResult(results, sharedData, -1)
		return results
	end

	-- Step 4: Fetch data and call AQS if needed
	FetchAllDesiredData.storeDesiredData(sharedData, desiredData)
	if #qualityTests > 0 then
		-- if we are allowed to spawn up threads, we can do the fetching async and yeild later when all validations are finished
		-- TODO: Play around with rccservice to do async as well
		sharedData.aqsFetchMetrics.fetchStatus = AssetQualityFetchStatus.assetQualityFetchInProgress
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
		local qualityInProgress = sharedData.aqsFetchMetrics.fetchStatus
			== AssetQualityFetchStatus.assetQualityFetchInProgress
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

	populateRelevantSourceStrings(results)
	results.aqJobId = sharedData.aqsFetchMetrics.aqJobId or ""
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

local function findFolderByName(instances: { Instance }, folderName: string, acceptFallback: boolean): Instance?
	for _, inst in instances do
		if inst.Name == folderName then
			return inst
		end
	end

	-- acceptFallback mirrors getRootInstance's [1] fallback (used to build the R15ArtistIntent bundle root);
	-- Fallback = False is specified for the ASSET version of R15Fixed, so we are strictly nil when its not made.
	if acceptFallback then
		return instances[1]
	end
	return nil
end

local function synthesizeRootFromFolders(
	fullBodyData: Types.FullBodyData,
	folderName: string,
	acceptFallback: boolean
): Instance
	-- Builds one root Folder by cloning each body part's <folderName> folder together. Used for both the
	-- R15ArtistIntent bundle root (acceptFallback=true, mirroring getRootInstance's [1] fallback) and the
	-- R15Fixed duplicate (strict). Returns an empty Folder when no matching folder is present in any body part.
	local rootFolder = Instance.new("Folder")
	for _, instancesAndType in fullBodyData do
		local headOrLimbs = findFolderByName(instancesAndType.allSelectedInstances, folderName, acceptFallback)
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

	return rootFolder
end

-- We expect a single root asset for all validations, but when enforceR15FolderStructure = true, we recieve multiple roots to validate.
-- We simply run validation on the root, and an additional validation enforces the folder structure is accurate
function ValidationManager.ValidateAsset(
	assetsToValidate: { Instance },
	assetTypeEnum: Enum.AssetType,
	configs: Types.UGCValidationConsumerConfigs
): Types.ValidationResultData
	local sharedData: { [string]: any } = {
		jobId = HttpService:GenerateGUID(),
		entrypointInput = assetsToValidate,
		rootInstance = getRootInstance(assetsToValidate),
		r15LegacyDuplicateRoot = if getEngineFeatureEngineUGCValidateInstanceTreesEquivalent()
			then findFolderByName(assetsToValidate, Constants.FOLDER_NAMES.R15Fixed, false)
			else nil,
		uploadEnum = {
			assetType = assetTypeEnum,
		},
		consumerConfig = createConsumerConfigWithDefaults(configs),
		hsrAssets = {},
	}

	return runValidationOnRootInstance(sharedData)
end

function ValidationManager.ValidateFinalizedBundle(
	fullBodyData: Types.FullBodyData,
	bundleTypeEnum: Enum.BundleType,
	configs: Types.UGCValidationConsumerConfigs
): Types.ValidationResultData
	if getFFlagDebugAllowHRDUploadOnBundleBackend() then
		R15plusUtils.setIsBackendBundleUpload(configs.source == "Publish" or configs.source == "Backend")
	end

	local rootInstance: Instance
	local r15LegacyDuplicateRoot: Instance? = nil
	if getFFlagUGCValidationAnimationPackSupport() and bundleTypeEnum == Enum.BundleType.Animations then
		local rootModel = Instance.new("Model")
		for _, instancesAndType in fullBodyData do
			local animModel = getRootInstance(instancesAndType.allSelectedInstances)
			if animModel ~= nil then
				animModel:Clone().Parent = rootModel
			end
		end
		rootInstance = rootModel
	elseif getEngineFeatureEngineUGCValidateInstanceTreesEquivalent() then
		-- Synthesize the R15ArtistIntent bundle root and the R15Fixed duplicate as two parallel trees so the
		-- discarded R15Fixed copy can be re-validated (see ExpectedRootSchema, HrdBonesFollowSchema).
		rootInstance = synthesizeRootFromFolders(fullBodyData, Constants.FOLDER_NAMES.R15ArtistIntent, true)
		r15LegacyDuplicateRoot = synthesizeRootFromFolders(fullBodyData, Constants.FOLDER_NAMES.R15Fixed, true)
	else
		-- fullBodyData is a list of the body assets being published together. TODO: Adjust consumers to include accessories too, same format is fine
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
		rootInstance = rootFolder
	end

	local sharedData: { [string]: any } = {
		jobId = HttpService:GenerateGUID(),
		entrypointInput = fullBodyData,
		rootInstance = rootInstance,
		r15LegacyDuplicateRoot = r15LegacyDuplicateRoot,
		uploadEnum = {
			bundleType = bundleTypeEnum,
		},
		consumerConfig = createConsumerConfigWithDefaults(configs),
		hsrAssets = {},
	}

	local result = runValidationOnRootInstance(sharedData)

	if getFFlagDebugAllowHRDUploadOnBundleBackend() then
		R15plusUtils.setIsBackendBundleUpload(false)
	end

	return result
end

return ValidationManager
