local UGCValidationService = game:GetService("UGCValidationService")
local root = script.Parent.Parent.Parent
local Constants = require(root.Constants)
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local getEngineFeatureEngineUGCValidationExpandReturnSchema =
	require(root.flags.getEngineFeatureEngineUGCValidationExpandReturnSchema)
local LCSkinnedToSchema = {}

LCSkinnedToSchema.fflag = require(root.flags.getEngineFeatureEngineUGCValidationConsolidateAccessorySkinning)
LCSkinnedToSchema.categories = { ValidationEnums.UploadCategory.LAYERED_CLOTHING }
LCSkinnedToSchema.requiredData = { ValidationEnums.SharedDataMember.renderMeshesData }

LCSkinnedToSchema.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local handleInst = data.rootInstance:FindFirstChild("Handle")
	local handleEditableData = data.renderMeshesData["Handle"]

	if handleInst == nil or handleEditableData == nil then
		error("Schema should have ensured data exists for handle")
	end

	local fmdJointNames = {}
	for _, boneId in handleEditableData.editable:GetBones() do
		table.insert(fmdJointNames, handleEditableData.editable:GetBoneName(boneId))
	end

	local skinnedJoints = { UGCValidationService:GetSkinnedJointNamesFromEditableMesh(handleEditableData.editable) }
	local transferJointsInfo =
		UGCValidationService:GetEditableMeshSkinningTransferJointsInfo(handleEditableData.editable)

	local wrapLayer = handleInst:FindFirstChildOfClass("WrapLayer")
	assert(wrapLayer, "WrapLayer not found on handle")
	local isAutoSkinEnabled = wrapLayer.AutoSkin == Enum.WrapLayerAutoSkin.EnabledOverride

	if getEngineFeatureEngineUGCValidationExpandReturnSchema() then
		reporter:setReportingInstance(handleInst)
	end

	--  Step 1: Ensure the joints in FMD are in our whitelist (R15 joints or transfer joints)
	for _, jointName in fmdJointNames do
		if Constants.ALLOWED_SKINNING_TRANSFER_JOINT_NAMES[jointName] then
			if not isAutoSkinEnabled then
				reporter:fail(ErrorSourceStrings.Keys.AccessorySkinning_TransferJointWithoutAutoSkin, {
					jointName = jointName,
				})
			end
		elseif not Constants.R15_STANDARD_JOINT_NAMES[jointName] then
			reporter:fail(ErrorSourceStrings.Keys.AccessorySkinning_ExtraJoint, {
				jointName = jointName,
			})
		end
	end

	-- Step 2: If any vert is skinned to a transfer joint, it must be fully weighted
	for _, isFullyWeighted in transferJointsInfo do
		if not isFullyWeighted then
			reporter:fail(ErrorSourceStrings.Keys.AccessorySkinning_WeightNotFull)
			break
		end
	end

	-- Step 3: Require transfer joints for certain accessory types (eyebrow/eyelash)
	if Constants.SkinningTransferRequiredTypes[data.uploadEnum.assetType] then
		-- Ensure autoskinning is enabled, all transfer joints exist, and only transfer joints are skinned.
		if not isAutoSkinEnabled then
			reporter:fail(ErrorSourceStrings.Keys.AccessorySkinning_RequiredSkinningTransfer, {
				assetType = data.uploadEnum.assetType.Name,
			})
		end

		for jointName, _ in Constants.ALLOWED_SKINNING_TRANSFER_JOINT_NAMES do
			if table.find(skinnedJoints, jointName) == nil then
				reporter:fail(ErrorSourceStrings.Keys.AccessorySkinning_MissingTransferJoint, {
					assetType = data.uploadEnum.assetType.Name,
					requiredJointName = jointName,
				})
			end
		end

		for _, skinnedJointName in skinnedJoints do
			if Constants.R15_STANDARD_JOINT_NAMES[skinnedJointName] then
				local validJointNameList = {}
				for validJointName, _ in Constants.ALLOWED_SKINNING_TRANSFER_JOINT_NAMES do
					table.insert(validJointNameList, validJointName)
				end
				reporter:fail(ErrorSourceStrings.Keys.AccessorySkinning_NotLeaderOrFollower, {
					jointName = skinnedJointName,
					validJointNameList = table.concat(validJointNameList, ", "),
				})
			end
		end
	end
end

return LCSkinnedToSchema :: Types.ValidationModule
