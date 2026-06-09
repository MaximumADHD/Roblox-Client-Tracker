local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local getEngineFeatureEngineUGCValidationExpandReturnSchema =
	require(root.flags.getEngineFeatureEngineUGCValidationExpandReturnSchema)
local getDiffBetweenOrientations = require(root.util.getDiffBetweenOrientations)
local valueToString = require(root.util.valueToString)

local getAllInstancesWithName = require(root.util.getAllInstancesWithName)
local R15plusUtils = require(root.util.R15plusUtils)
local JointRotationAttachmentsLimited = {}

JointRotationAttachmentsLimited.categories =
	{ ValidationEnums.UploadCategory.TORSO_AND_LIMBS, ValidationEnums.UploadCategory.DYNAMIC_HEAD }
JointRotationAttachmentsLimited.requiredData = { ValidationEnums.SharedDataMember.rootInstance }
JointRotationAttachmentsLimited.fflag = R15plusUtils.checkFlagEnabledForAllowHrd
local jointRotationMaximumHundredthPositionOffset =
	game:DefineFastInt("UGCValidationJointRotationMaximumHundredthPositionOffset", 1)
local jointRotationMaximumDegreeOrientationOffset =
	game:DefineFastInt("UGCValidationJointRotationMaximumDegreeOrientationOffset", 1)

local recommendedJointRotations: { [Enum.AssetType]: { [string]: CFrame? } } = {
	[Enum.AssetType.Torso] = {
		RightShoulderRigAttachment = CFrame.fromOrientation(0, 0, 0),
		LeftShoulderRigAttachment = CFrame.fromOrientation(0, math.pi, 0),
	},
	[Enum.AssetType.RightArm] = {
		RightShoulderRigAttachment = CFrame.fromOrientation(0, 0, -math.pi / 2),
	},
	[Enum.AssetType.LeftArm] = {
		LeftShoulderRigAttachment = CFrame.fromOrientation(0, math.pi, -math.pi / 2),
	},
}

local recommendedJointPosition = Vector3.zero

JointRotationAttachmentsLimited.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local rootInstance = data.rootInstance
	local parentMap = {
		LeftShoulderRigAttachment = 0,
		RightShoulderRigAttachment = 0,
	}

	for _, jointRotation in getAllInstancesWithName(rootInstance, R15plusUtils.JointRotationName) do
		local parent = jointRotation.Parent :: Instance
		if getEngineFeatureEngineUGCValidationExpandReturnSchema() then
			reporter:setReportingInstance(jointRotation)
		end

		if not (jointRotation.ClassName == "Attachment") or not parent:IsA("Attachment") then
			reporter:fail(ErrorSourceStrings.Keys.JointRotAtt_WrongInstanceClass, {
				instPath = jointRotation:GetFullName(),
			})
		elseif parentMap[parent.Name] == nil then
			reporter:fail(ErrorSourceStrings.Keys.JointRotAtt_UnrecognizedParent, {
				parentPath = parent:GetFullName(),
			})
		elseif parentMap[parent.Name] == 1 then
			reporter:fail(ErrorSourceStrings.Keys.JointRotAtt_MultipleAttachments, {
				parentPath = parent:GetFullName(),
			})
		else
			parentMap[parent.Name] += 1
			if
				recommendedJointRotations[data.uploadEnum.assetType] ~= nil
				and recommendedJointRotations[data.uploadEnum.assetType][parent.Name] ~= nil
			then
				local expectedCFrame = recommendedJointRotations[data.uploadEnum.assetType][parent.Name] :: CFrame
				local jointCframe = (jointRotation :: Attachment).CFrame
				if
					getDiffBetweenOrientations(expectedCFrame, jointCframe)
					> jointRotationMaximumDegreeOrientationOffset
				then
					local expectedOrientation = Vector3.new(expectedCFrame:ToOrientation())
					expectedOrientation = Vector3.new(
						math.deg(expectedOrientation.X),
						math.deg(expectedOrientation.Y),
						math.deg(expectedOrientation.Z)
					)
					reporter:fail(ErrorSourceStrings.Keys.JointRotAtt_Rotated, {
						instPath = jointRotation:GetFullName(),
						expectedOrientation = valueToString(expectedOrientation),
					})
				end

				if
					(jointCframe.Position - recommendedJointPosition).Magnitude
					> jointRotationMaximumHundredthPositionOffset / 100
				then
					reporter:fail(ErrorSourceStrings.Keys.JointRotAtt_Moved, {
						instPath = jointRotation:GetFullName(),
						expectedPosition = valueToString(recommendedJointPosition),
					})
				end
			end
		end
	end
end

return JointRotationAttachmentsLimited :: Types.ValidationModule
