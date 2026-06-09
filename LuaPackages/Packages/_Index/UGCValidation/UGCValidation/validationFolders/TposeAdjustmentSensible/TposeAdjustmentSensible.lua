local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local getEngineFeatureEngineUGCValidationExpandReturnSchema =
	require(root.flags.getEngineFeatureEngineUGCValidationExpandReturnSchema)
local getAllInstancesIsA = require(root.util.getAllInstancesIsA)
local Vector3Utils = require(root.util.Vector3Utils)
local valueToString = require(root.util.valueToString)
local CFrameUtils = require(root.util.CFrameUtils)
local getDiffBetweenOrientations = require(root.util.getDiffBetweenOrientations)

local TposeAdjustmentSensible = {}

TposeAdjustmentSensible.categories =
	{ ValidationEnums.UploadCategory.TORSO_AND_LIMBS, ValidationEnums.UploadCategory.DYNAMIC_HEAD }
TposeAdjustmentSensible.requiredData = {
	ValidationEnums.SharedDataMember.rootInstance,
	ValidationEnums.SharedDataMember.renderMeshesData,
}
TposeAdjustmentSensible.fflag = require(root.flags.getEngineFeatureEngineUGCValidateTPoseAdjustment)

local UGCValidationService = game:GetService("UGCValidationService")
local tposeShoulderDegreeOffsetThreshold = game:DefineFastInt("UGCValidationTposeShoulderDegreeOffsetThreshold", 30)
local tposeElbowDegreeOffsetThreshold = game:DefineFastInt("UGCValidationTposeElbowDegreeOffsetThreshold", 30)
local tposeWristDegreeOffsetThreshold = game:DefineFastInt("UGCValidationTposeWristDegreeOffsetThreshold", 30)
local tposeClavicleDegreeOffsetThreshold = game:DefineFastInt("UGCValidationTposeClavicleDegreeOffsetThreshold", 30)
local tposeFingerDegreeOffsetThreshold = game:DefineFastInt("UGCValidationTposeFingerDegreeOffsetThreshold", 30)
local tposeGeneralDegreeOffsetThreshold = game:DefineFastInt("UGCValidationTposeGeneralDegreeOffsetThreshold", 30)
local tposePositionOffsetPercentThreshold = game:DefineFastInt("UGCValidationTposePositionOffsetPercentThreshold", 40)
	/ 100

local rotationThresholds = {
	[Enum.RigLabel.LeftShoulder] = tposeShoulderDegreeOffsetThreshold,
	[Enum.RigLabel.RightShoulder] = tposeShoulderDegreeOffsetThreshold,
	[Enum.RigLabel.LeftElbow] = tposeElbowDegreeOffsetThreshold,
	[Enum.RigLabel.RightElbow] = tposeElbowDegreeOffsetThreshold,
	[Enum.RigLabel.LeftWrist] = tposeWristDegreeOffsetThreshold,
	[Enum.RigLabel.RightWrist] = tposeWristDegreeOffsetThreshold,
	[Enum.RigLabel.LeftClavicle] = tposeClavicleDegreeOffsetThreshold,
	[Enum.RigLabel.RightClavicle] = tposeClavicleDegreeOffsetThreshold,
}

local function checkJointTposeAdjustment(
	reporter: Types.ValidationReporter,
	jointEnum: Enum.RigLabel,
	tposeAdjustment: CFrame,
	rootInstance: Instance,
	offsetLimits: Vector3,
	rotationDegreeThreshold: number
)
	local expectedRotation = (UGCValidationService :: any):GetExpectedTposeRotation(jointEnum, rootInstance) :: CFrame

	local rotationDiff = getDiffBetweenOrientations(tposeAdjustment.Rotation, expectedRotation)
	if rotationDiff > rotationDegreeThreshold then
		reporter:fail(ErrorSourceStrings.Keys.HrdTposeRotation, {
			jointName = jointEnum.Name,
			degLimit = rotationDegreeThreshold,
			expectedOrientation = CFrameUtils.getRotationString(expectedRotation),
		})
	end

	if not Vector3Utils.isInRange(tposeAdjustment.Position, offsetLimits * -1, offsetLimits) then
		reporter:fail(ErrorSourceStrings.Keys.HrdTposePosition, {
			jointName = jointEnum.Name,
			offsetLimit = valueToString(offsetLimits),
		})
	end
end

TposeAdjustmentSensible.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local rootInstance = data.rootInstance
	for _, bodyMeshPart in getAllInstancesIsA(rootInstance, "MeshPart") do
		local hrd: HumanoidRigDescription? = bodyMeshPart:FindFirstChildWhichIsA("HumanoidRigDescription")
		if hrd == nil then
			continue
		end

		if getEngineFeatureEngineUGCValidationExpandReturnSchema() then
			reporter:setReportingInstance(bodyMeshPart)
		end

		local meshData = data.renderMeshesData[bodyMeshPart.Name]
		local positionThreshold = meshData.originalSize * meshData.scale * tposePositionOffsetPercentThreshold
		local containedEnums = (hrd :: any):GetContainedJointLabels(bodyMeshPart.Name)
		for _, jointEnum in containedEnums do
			if hrd:GetJoint(jointEnum) then
				checkJointTposeAdjustment(
					reporter,
					jointEnum,
					hrd:GetTposeAdjustment(jointEnum),
					rootInstance,
					positionThreshold,
					rotationThresholds[jointEnum] or tposeGeneralDegreeOffsetThreshold
				)
			end
		end

		local drd: DigitsRigDescription? = bodyMeshPart:FindFirstChildWhichIsA("DigitsRigDescription")
		if drd ~= nil then
			for _, jointEnum in drd:GetJointLabels() do
				if drd:GetJoint(jointEnum) then
					checkJointTposeAdjustment(
						reporter,
						jointEnum,
						drd:GetTposeAdjustment(jointEnum),
						rootInstance,
						positionThreshold,
						rotationThresholds[jointEnum] or tposeFingerDegreeOffsetThreshold
					)
				end
			end
		end
	end
end
return TposeAdjustmentSensible :: Types.ValidationModule
