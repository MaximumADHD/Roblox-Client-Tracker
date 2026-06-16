--[[
    This module handles creating and storing all requested data into shared data. If a data field cannot be properly retrieved, it will be nil.
	If a test requires data that is nil, it will be in CANNOT_RUN state.
--]]

local root = script.Parent.Parent.Parent
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local FetchEditables = require(root.validationSystem.dataFetchModules.FetchEditables)
local FetchCurveAnimations = require(root.validationSystem.dataFetchModules.FetchCurveAnimations)
local FetchCurveAnimComputedFrames = require(root.validationSystem.dataFetchModules.FetchCurveAnimComputedFrames)
local FetchContentIds = require(root.validationSystem.dataFetchModules.FetchContentIds)
local FetchHSRAssets = require(root.validationSystem.dataFetchModules.FetchHSRAssets)
local FetchCurveAnimBoneData = require(root.validationSystem.dataFetchModules.FetchCurveAnimBoneData)
local Types = require(root.util.Types)
local DataEnums = ValidationEnums.SharedDataMember

local getFFlagUGCValidateMigrateSchemaProperties = require(root.flags.getFFlagUGCValidateMigrateSchemaProperties)
local getFFlagUGCValidateMigrateBodyPartBounds = require(root.flags.getFFlagUGCValidateMigrateBodyPartBounds)
local resetPhysicsData = require(root.util.resetPhysicsData)

local EDITABLE_ENUMS = {
	DataEnums.renderMeshesData,
	DataEnums.innerCagesData,
	DataEnums.outerCagesData,
	DataEnums.meshTextures,
}

local ALLOW_ORIGINAL_EDITABLES = {
	InExpServer = true,
	InExpClient = true,
}

local FetchAllDesiredData = {}
FetchAllDesiredData.DATA_FETCH_FAILURE = {}

function FetchAllDesiredData.storeDesiredData(sharedData: Types.SharedData, desiredData: { [string]: boolean })
	local rootInstance = sharedData.rootInstance
	local preloadedMeshes = sharedData.consumerConfig.preloadedEditableMeshes or {}
	local preloadedImages = sharedData.consumerConfig.preloadedEditableImages or {}

	if getFFlagUGCValidateMigrateBodyPartBounds() then
		if sharedData.consumerConfig.consumerEnv ~= ValidationEnums.ConsumerEnv.IEC then
			local isServer = sharedData.consumerConfig.consumerEnv == ValidationEnums.ConsumerEnv.Backend
			pcall(resetPhysicsData, { rootInstance }, { isServer = isServer, bypassFlags = {} } :: any)
		end
	end

	-- IEC is the only env where editable instances can be re-used directly.
	local allowEditableInstances
	if getFFlagUGCValidateMigrateSchemaProperties() then
		allowEditableInstances = sharedData.consumerConfig.consumerEnv == ValidationEnums.ConsumerEnv.IEC
	else
		allowEditableInstances = ALLOW_ORIGINAL_EDITABLES[sharedData.consumerConfig.source] == true
	end
	for _, editableDataEnum in EDITABLE_ENUMS do
		if desiredData[editableDataEnum] then
			local success, result = pcall(function()
				return FetchEditables.getDatas(
					rootInstance,
					editableDataEnum,
					allowEditableInstances,
					preloadedMeshes,
					preloadedImages
				) :: any
			end)

			if success and result then
				sharedData[editableDataEnum] = result
			else
				sharedData[editableDataEnum] = FetchAllDesiredData.DATA_FETCH_FAILURE
			end

			-- TODO: Log fetch failures
		end
	end

	if desiredData[DataEnums.curveAnimations] then
		local result = FetchCurveAnimations.getData(rootInstance)
		sharedData.curveAnimations = result or FetchAllDesiredData.DATA_FETCH_FAILURE
	end

	if desiredData[DataEnums.curveAnimComputedFrames] then
		if sharedData.curveAnimations and sharedData.curveAnimations ~= FetchAllDesiredData.DATA_FETCH_FAILURE then
			local result = FetchCurveAnimComputedFrames.getData(sharedData.curveAnimations)
			sharedData.curveAnimComputedFrames = result or (FetchAllDesiredData.DATA_FETCH_FAILURE :: any)
		else
			sharedData.curveAnimComputedFrames = FetchAllDesiredData.DATA_FETCH_FAILURE :: any
		end
	end

	if getFFlagUGCValidateMigrateSchemaProperties() then
		if desiredData[DataEnums.contentIds] then
			sharedData.contentIds = FetchContentIds.getData(sharedData)
		end

		if desiredData[DataEnums.hsrAssets] then
			local result = FetchHSRAssets.getData(rootInstance, sharedData.consumerConfig)
			sharedData.hsrAssets = result or (FetchAllDesiredData.DATA_FETCH_FAILURE :: any)
		end
	end

	if desiredData[DataEnums.curveAnimBoneData] then
		local boneData = FetchCurveAnimBoneData.getData(sharedData[DataEnums.curveAnimations])
		sharedData[DataEnums.curveAnimBoneData] = boneData
	end
end

return FetchAllDesiredData
