--!strict

--[[
	validateFullBody.lua checks the entire body is not too big or too small
]]

local root = script.Parent.Parent

local getFFlagUGCValidateFullBody = require(root.flags.getFFlagUGCValidateFullBody)
local getFFlagUGCValidateBodyParts = require(root.flags.getFFlagUGCValidateBodyParts)
local getFFlagUGCValidationResetPhysicsData = require(root.flags.getFFlagUGCValidationResetPhysicsData)

local Analytics = require(root.Analytics)
local Constants = require(root.Constants)
local ConstantsInterface = require(root.ConstantsInterface)

local Types = require(root.util.Types)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local validateWithSchema = require(root.util.validateWithSchema)

local validateAssetBounds = require(root.validation.validateAssetBounds)
local validateSingleInstance = require(root.validation.validateSingleInstance)
local createDynamicHeadMeshPartSchema = require(root.util.createDynamicHeadMeshPartSchema)
local createLimbsAndTorsoSchema = require(root.util.createLimbsAndTorsoSchema)
local resetPhysicsData = require(root.util.resetPhysicsData)

local function getInstance(instances: { Instance }, name: string): Instance?
	for _, inst in instances do
		if inst.Name == name then
			return inst
		end
	end
	return nil
end

-- this would be all done on each individual asset, but we do it here again, as we're making sure nothing is missing, as some validation
-- checks will use some child parts without checking they exist as they assume this check has been done
local function validateAllAssetsWithSchema(
	fullBodyData: Types.FullBodyData,
	requiredTopLevelFolders: { string }
): boolean
	for _, instancesAndType in fullBodyData do
		if Enum.AssetType.DynamicHead == instancesAndType.assetTypeEnum then
			local result = validateSingleInstance(instancesAndType.allSelectedInstances)
			if not result then
				return false
			end
			local validationResult =
				validateWithSchema(createDynamicHeadMeshPartSchema(), instancesAndType.allSelectedInstances[1])
			if not validationResult.success then
				return false
			end
		else
			for _, folderName in requiredTopLevelFolders do
				local folderInst = getInstance(instancesAndType.allSelectedInstances, folderName)
				if not folderInst then
					return false
				end
				local validationResult = validateWithSchema(
					createLimbsAndTorsoSchema(instancesAndType.assetTypeEnum, folderName),
					folderInst
				)
				if not validationResult.success then
					return false
				end
			end
		end
	end
	return true
end

local function validateCorrectAssetTypesExist(fullBodyData: Types.FullBodyData): boolean
	local bodyAssetTypes = {}
	local numRequiredAssetTypes = #ConstantsInterface.getBodyPartAssets()

	local count = 0
	for _, instancesAndType in fullBodyData do
		if not ConstantsInterface.isBodyPart(instancesAndType.assetTypeEnum) then
			return false
		end
		if bodyAssetTypes[instancesAndType.assetTypeEnum] then
			return false
		end
		bodyAssetTypes[instancesAndType.assetTypeEnum] = true
		count += 1
	end
	return count == numRequiredAssetTypes
end

local function createAllBodyPartsTable(folderName: string, fullBodyData: Types.FullBodyData): Types.AllBodyParts
	local results: Types.AllBodyParts = {}
	for _, instancesAndType in fullBodyData do
		if Enum.AssetType.DynamicHead == instancesAndType.assetTypeEnum then
			results[instancesAndType.allSelectedInstances[1].Name] = instancesAndType.allSelectedInstances[1]
		else
			local folderInst = getInstance(instancesAndType.allSelectedInstances, folderName) :: Folder
			for _, child in folderInst:GetChildren() do
				results[child.Name] = child
			end
		end
	end
	return results
end

local function validateInstanceHierarchy(
	fullBodyData: Types.FullBodyData,
	isServer: boolean?,
	requiredTopLevelFolders: { string }
): (boolean, { string }?)
	if not validateCorrectAssetTypesExist(fullBodyData) then
		local errorMsg = "Full body check did not receive the correct set of body part Asset Types"
		Analytics.reportFailure(Analytics.ErrorType.validateFullBody_IncorrectAssetTypeSet)
		if isServer then
			-- this is a code issue, where the wrong set of assets have been sent, this is not a fault on the UGC creator
			error(errorMsg)
		end
		return false, { errorMsg }
	end

	if not validateAllAssetsWithSchema(fullBodyData, requiredTopLevelFolders) then
		Analytics.reportFailure(Analytics.ErrorType.validateFullBody_InstancesMissing)
		-- don't need more detailed error, as this is a check which has been done for each individual asset
		return false, { "Instances are missing or incorrectly named" }
	end
	return true
end

local function resetAllPhysicsData(fullBodyData: Types.FullBodyData)
	if not getFFlagUGCValidationResetPhysicsData() then
		return
	end
	for _, instancesAndType in fullBodyData do
		resetPhysicsData(instancesAndType.allSelectedInstances)
	end
end

local function validateFullBody(fullBodyData: Types.FullBodyData, isServer: boolean?): (boolean, { string }?)
	if not getFFlagUGCValidateBodyParts() or not getFFlagUGCValidateFullBody() then
		return true
	end

	local requiredTopLevelFolders: { string } = {
		Constants.FOLDER_NAMES.R15ArtistIntent,
	}
	if isServer then
		-- in Studio these folders are automatically added just before upload
		table.insert(requiredTopLevelFolders, Constants.FOLDER_NAMES.R15Fixed)
	end

	local success, reasons = validateInstanceHierarchy(fullBodyData, isServer, requiredTopLevelFolders)
	if not success then
		return false, reasons
	end

	resetAllPhysicsData(fullBodyData)

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	for _, folderName in requiredTopLevelFolders do
		local allBodyParts: Types.AllBodyParts = createAllBodyPartsTable(folderName, fullBodyData)
		assert(allBodyParts) -- if validateInstanceHierarchy() has passed, this should not have any problems

		reasonsAccumulator:updateReasons(validateAssetBounds(allBodyParts, nil, nil, isServer))
	end
	return reasonsAccumulator:getFinalResults()
end

return validateFullBody
