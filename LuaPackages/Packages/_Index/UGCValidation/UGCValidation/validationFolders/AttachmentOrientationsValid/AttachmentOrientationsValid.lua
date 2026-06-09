local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local getDiffBetweenOrientations = require(root.util.getDiffBetweenOrientations)
local floatEquals = require(root.util.floatEquals)
local valueToString = require(root.util.valueToString)
local R15plusUtils = require(root.util.R15plusUtils)
local getAttachmentCFrameInPartSpace = require(root.util.getAttachmentCFrameInPartSpace)
local AttachmentRotationFInts = require(root.util.AttachmentRotationFInts)

local getFFlagUGCValidateMigrateSchemaProperties = require(root.flags.getFFlagUGCValidateMigrateSchemaProperties)

local FFlagUGCValidateRigAttachmentRotationUsesDiff =
	game:DefineFastFlag("UGCValidateRigAttachmentRotationUsesDiff", false)

local thresholdTable = AttachmentRotationFInts.thresholdGetters

local GRIP_CFRAME_IPOSE = CFrame.new(Vector3.zero, Vector3.new(0, 0, -1))
	* CFrame.fromEulerAnglesXYZ(-math.pi / 2, 0, 0)

local RIG_ATT_SUFFIX = "RigAttachment"
local GRIP_ATT_SUFFIX = "GripAttachment"

local AttachmentOrientationsValid = {}

AttachmentOrientationsValid.categories = {
	ValidationEnums.UploadCategory.TORSO_AND_LIMBS,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
}
AttachmentOrientationsValid.requiredData = {
	ValidationEnums.SharedDataMember.rootInstance,
	ValidationEnums.SharedDataMember.uploadEnum,
}
AttachmentOrientationsValid.fflag = getFFlagUGCValidateMigrateSchemaProperties
AttachmentOrientationsValid.expectedFailures = {}

local function expectedGripAttCFrameRotation(armAsset: Instance, assetTypeEnum: Enum.AssetType): CFrame
	local armPrefix = assetTypeEnum == Enum.AssetType.RightArm and "Right" or "Left"

	local lowerArm = armAsset:FindFirstChild(armPrefix .. "LowerArm") :: MeshPart
	local hand = armAsset:FindFirstChild(armPrefix .. "Hand") :: MeshPart
	if not lowerArm or not hand then
		return CFrame.identity
	end

	local armElbowAtt = lowerArm:FindFirstChild(
		armPrefix .. "ElbowRigAttachment",
		R15plusUtils.checkFlagEnabledForAllowHrd()
	) :: Attachment
	local armWristAtt = lowerArm:FindFirstChild(
		armPrefix .. "WristRigAttachment",
		R15plusUtils.checkFlagEnabledForAllowHrd()
	) :: Attachment
	local handWristAtt =
		hand:FindFirstChild(armPrefix .. "WristRigAttachment", R15plusUtils.checkFlagEnabledForAllowHrd()) :: Attachment
	local gripAtt =
		hand:FindFirstChild(armPrefix .. "GripAttachment", R15plusUtils.checkFlagEnabledForAllowHrd()) :: Attachment
	if not armElbowAtt or not armWristAtt or not handWristAtt or not gripAtt then
		return CFrame.identity
	end

	local wristAttImportCFrame: CFrame = getAttachmentCFrameInPartSpace(handWristAtt)
	local lowerArmCFrameInHandSpace: CFrame = wristAttImportCFrame
		* getAttachmentCFrameInPartSpace(armWristAtt):Inverse()
	local elbowAttImportCFrame: CFrame = lowerArmCFrameInHandSpace * getAttachmentCFrameInPartSpace(armElbowAtt)
	local elbowRigBone = wristAttImportCFrame.Position - elbowAttImportCFrame.Position

	local fixedRigBone = Vector3.new(elbowRigBone.X, math.max(0, -elbowRigBone.Y), 0).Unit
	local angle = math.pi / 2 - math.acos(fixedRigBone.X)

	local rotationCFrame = CFrame.fromEulerAnglesXYZ(0, 0, angle)
	local finalRotation = rotationCFrame * GRIP_CFRAME_IPOSE.Rotation

	return finalRotation
end

AttachmentOrientationsValid.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local instance = data.rootInstance :: Instance
	local assetTypeEnum = data.uploadEnum.assetType

	for _, desc: Attachment in instance:GetDescendants() :: { any } do
		if desc.ClassName ~= "Attachment" then
			continue
		end

		local isRigAttachment = string.sub(desc.Name, -string.len(RIG_ATT_SUFFIX)) == RIG_ATT_SUFFIX
		local isGripAttachment = string.sub(desc.Name, -string.len(GRIP_ATT_SUFFIX)) == GRIP_ATT_SUFFIX

		if isRigAttachment then
			local isRotated
			if FFlagUGCValidateRigAttachmentRotationUsesDiff then
				isRotated = getDiffBetweenOrientations(CFrame.identity, getAttachmentCFrameInPartSpace(desc))
					> thresholdTable.RigAttachment()
			else
				local x, y, z = getAttachmentCFrameInPartSpace(desc):ToOrientation()
				isRotated = not floatEquals(x, 0) or not floatEquals(y, 0) or not floatEquals(z, 0)
			end
			if isRotated then
				reporter:fail(ErrorSourceStrings.Keys.AttachmentOrientationRigRotated, {
					InstancePath = desc:GetFullName(),
				})
			end
		elseif thresholdTable[desc.Name] ~= nil then
			local expectedCFrame = CFrame.new()
			if isGripAttachment and assetTypeEnum then
				if assetTypeEnum == Enum.AssetType.RightArm or assetTypeEnum == Enum.AssetType.LeftArm then
					expectedCFrame = expectedGripAttCFrameRotation(instance, assetTypeEnum)
				end
			end

			if
				getDiffBetweenOrientations(expectedCFrame, getAttachmentCFrameInPartSpace(desc))
				> thresholdTable[desc.Name]()
			then
				local expectedOrientation = Vector3.new(expectedCFrame:ToOrientation())
				expectedOrientation = Vector3.new(
					math.deg(expectedOrientation.X),
					math.deg(expectedOrientation.Y),
					math.deg(expectedOrientation.Z)
				)

				reporter:fail(ErrorSourceStrings.Keys.AttachmentOrientationDeviation, {
					InstancePath = desc:GetFullName(),
					ExpectedOrientation = valueToString(expectedOrientation),
					MaxDeviation = tostring(thresholdTable[desc.Name]()),
				})
			end
		end
	end
end

return AttachmentOrientationsValid :: Types.ValidationModule
