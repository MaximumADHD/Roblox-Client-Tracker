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
local getFStringUGCLCAllowedAssetTypeIds = require(root.flags.getFStringUGCLCAllowedAssetTypeIds)
local LC_ENUMS = string.split(getFStringUGCLCAllowedAssetTypeIds(), ",")
local ValidationTestWrapper = require(root.validationSystem.ValidationTestWrapper)
game:DefineFastFlag("DebugUGCValidationNewRunner", false)
local debugPrints = game:GetFastFlag("DebugUGCValidationNewRunner")

local ValidationManager = {}
local sharedDataGetters = {}

local function getUploadCategory(instance: Instance, assetTypeEnum: Enum.AssetType): string
	-- Step 1: Assign validation group so we know which tests to run
	-- instances are provided in case we want to set the category based on their upload details
	-- for example, if we want to allow both rigid and layered hair, we can add one more if statement
	assert(instance)
	local category = nil
	if assetTypeEnum == Enum.AssetType.EmoteAnimation then
		category = ValidationEnums.UploadCategory.EMOTE_ANIMATION
	elseif Constants.ASSET_TYPE_INFO[assetTypeEnum] and Constants.ASSET_TYPE_INFO[assetTypeEnum].isBodyPart then
		category = ValidationEnums.UploadCategory.BODY_PART
	elseif table.find(LC_ENUMS, tostring(assetTypeEnum.Value)) then
		category = ValidationEnums.UploadCategory.LAYERED_CLOTHING
	elseif Constants.ASSET_TYPE_INFO[assetTypeEnum] and Constants.ASSET_TYPE_INFO[assetTypeEnum].rigidAllowed then
		category = ValidationEnums.UploadCategory.RIGID_ACCESSORY
	end

	if category == nil then
		error("No assigned validation category for this upload")
	end

	return category
end

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
			for _, dataEnum in validationModule.required_data do
				desiredData[dataEnum] = true
			end

			if validationModule.is_quality then
				table.insert(qualityTests, testEnum)
			end

			local prevTests = {}
			for _, v in validationModule.prereq_tests do
				prevTests[v] = true
			end

			desiredValidations[testEnum] = {
				name = testEnum,
				prereqs = prevTests,
				postreqs = {},
				isQuality = validationModule.is_quality,
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

local function fetchQualityResults(sharedData: Types.SharedData, _qualityTests: { string })
	-- mock results for now. It would realistically be a request to the quality library, and we parse the result of each test into QUALITY_RESULTS
	sharedData.quality_results = {}
	wait(2)
	sharedData.quality_results[0] = true -- signal that we are done parsing everything
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

-- TODO: Decide if we want Bundle validation to be identical to Asset validation or not
function ValidationManager.ValidateAsset(
	assetsToValidate: { Instance },
	assetTypeEnum: Enum.AssetType,
	configs: Types.UGCValidationConsumerConfigs
): Types.ValidationResultData
	local results = {
		pass = true,
		states = {},
		errorTranslationContexts = {},
		internalData = {},
	} :: Types.ValidationResultData

	-- Step 0: Ensure only one asset has been selected for upload. Otherwise can't even validate schema.
	-- TODO: For RCC Validation, we should expect other folders and ensure they match R15ArtistIntent, then only validate the R15ArtistIntent
	-- Ideally, the endpoint would just expect one instance anyways. But we'd need to update all consumers to have this as part of their UIs instead, so its easiest to keep it in validation
	if #assetsToValidate ~= 1 then
		results["pass"] = false
		table.insert(
			results["errorTranslationContexts"],
			{ ["key"] = "ErrorLabel.SelectionCountNotOne", ["params"] = {} }
		)
		return results
	end

	local instance: Instance = assetsToValidate[1]

	-- Step 1, 2: get upload category then the required data tables
	local uploadCategory: string = getUploadCategory(instance, assetTypeEnum)
	local qualityTests: { string }, desiredValidations: { [string]: Types.SingleValidationFileData }, desiredData: { [string]: boolean } =
		initRunVariables(uploadCategory, configs)

	-- Step 3: Save base data then run schema check based on upload category
	local sharedData: { [string]: any } = {
		creation_source = configs.source,
		root_instance = instance,
		upload_category = uploadCategory,
		asset_type_enum = assetTypeEnum,
	}

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
		end

		for _, nextTest in validationFD.postreqs do
			desiredValidations[nextTest].prereqs[testEnum] = nil
		end

		desiredValidations[testEnum] = nil
	end

	runSingleValidation(ValidationEnums.ValidationModule.ASSET_SCHEMA)
	if results.states[ValidationEnums.ValidationModule.ASSET_SCHEMA] ~= ValidationEnums.Status.PASS then
		if debugPrints then
			print(results)
		end
		return results
	end

	-- Step 4: Fetch data
	if sharedDataGetters[uploadCategory] ~= nil then
		sharedDataGetters[uploadCategory](sharedData, desiredData)
	end
	if #qualityTests > 0 then
		task.spawn(fetchQualityResults, sharedData, qualityTests)
	end

	-- Step 5: Run all tests. TODO: Run concurrently - have a DFInt for num threads, timeout per validation.
	while next(desiredValidations) ~= nil do
		local qualityReturned = sharedData.quality_results and sharedData.quality_results[0] == true
		local layerTests: { string } = getNextLayer(desiredValidations, qualityReturned)

		if #layerTests == 0 then
			if #qualityTests > 0 and not qualityReturned then
				-- need to wait for quality library to return
				repeat
					wait(0.1)
				until sharedData.quality_results and sharedData.quality_results[0] == true
				continue
			else
				error("Impossible to complete all layers")
			end
		end

		for _, testEnum in layerTests do
			runSingleValidation(testEnum)
		end

		wait()
	end

	if debugPrints then
		print(results)
	end

	return results
end

return ValidationManager
