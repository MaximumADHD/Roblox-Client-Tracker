local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local getEngineFeatureEngineUGCValidationExpandReturnSchema =
	require(root.flags.getEngineFeatureEngineUGCValidationExpandReturnSchema)

local getAllInstancesIsA = require(root.util.getAllInstancesIsA)
local R15plusUtils = require(root.util.R15plusUtils)
local Vector3Utils = require(root.util.Vector3Utils)
local CFrameUtils = require(root.util.CFrameUtils)
local BoneCFramesInBounds = {}

local boneCFrameBoundsMultiplierHundredths =
	game:DefineFastInt("UGCValidationBoneCFrameBoundsMultiplierHundredths", 110)

BoneCFramesInBounds.categories =
	{ ValidationEnums.UploadCategory.TORSO_AND_LIMBS, ValidationEnums.UploadCategory.DYNAMIC_HEAD }
BoneCFramesInBounds.requiredData =
	{ ValidationEnums.SharedDataMember.rootInstance, ValidationEnums.SharedDataMember.renderMeshesData }
BoneCFramesInBounds.fflag = R15plusUtils.checkFlagEnabledForAllowHrd
local FIntUGCValidationMinimumJointDistance = game:DefineFastInt("UGCValidationMinimumJointDistanceHundredths", 5) / 100

BoneCFramesInBounds.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local rootInstance = data.rootInstance
	local multiplier = boneCFrameBoundsMultiplierHundredths / 100

	for _, bodyMeshPart in (getAllInstancesIsA(rootInstance, "MeshPart") :: any) :: { MeshPart } do
		local meshData = data.renderMeshesData[bodyMeshPart.Name]
		if not meshData then
			continue
		end

		local halfExtents = meshData.originalSize * meshData.scale * multiplier / 2
		local meshPartCFrameInv = bodyMeshPart.CFrame:Inverse()

		for _, bone in (getAllInstancesIsA(bodyMeshPart, "Bone") :: any) :: { Bone } do
			if getEngineFeatureEngineUGCValidationExpandReturnSchema() then
				reporter:setReportingInstance(bone)
			end
			local pos = (meshPartCFrameInv * bone.WorldCFrame).Position

			if not Vector3Utils.isInRange(pos, -halfExtents, halfExtents) then
				reporter:fail(ErrorSourceStrings.Keys.HrdBone_OutOfBounds, {
					bonePath = bone:GetFullName(),
					partName = bodyMeshPart.Name,
				})
			end

			if not CFrameUtils.fuzzyEq(bone.Transform, CFrame.identity) then
				reporter:fail(ErrorSourceStrings.Keys.HrdBone_TransformNotIdentity, {
					bonePath = bone:GetFullName(),
				})
			end

			if
				(bone.Parent :: Instance):IsA("Bone")
				and bone.Position.Magnitude < FIntUGCValidationMinimumJointDistance
			then
				reporter:fail(ErrorSourceStrings.Keys.HrdBone_TooCloseToParent, {
					bonePath = bone:GetFullName(),
				})
			end

			-- Bone rotation is not currently checked, but this could be added here
		end
	end
end

return BoneCFramesInBounds :: Types.ValidationModule
