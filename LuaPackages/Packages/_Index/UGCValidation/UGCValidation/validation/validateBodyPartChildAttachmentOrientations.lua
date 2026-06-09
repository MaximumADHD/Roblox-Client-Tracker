--[[
We will validate two things:
    - All rig attachments have ~0 orientation (within a tiny tolerance to ignore float drift)
    - Grip attachments are oriented to best align tools along the arm. We base this off the vector from ElbowAtt to WristAtt 


In the future, we can also validate other attachment orientations to make sure back accessories, hats, etc are properly oriented
    - To do this, we need to look at more examples and ensure we are not limiting creativity. Eg: Head mesh thats slanted, which means a hat should actually be slanted as well.
    - So for now, we will only limit grips, because this can affect gameplay (ex. sword pointing into the body) and can be computed with the arm bone instead of mesh analysis.
]]

local root = script.Parent.Parent
local Analytics = require(root.Analytics)
local Types = require(root.util.Types)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local getDiffBetweenOrientations = require(root.util.getDiffBetweenOrientations)
local floatEquals = require(root.util.floatEquals)
local valueToString = require(root.util.valueToString)
local R15plusUtils = require(root.util.R15plusUtils)
local getAttachmentCFrameInPartSpace = require(root.util.getAttachmentCFrameInPartSpace)
local AttachmentRotationFInts = require(root.util.AttachmentRotationFInts)

local ValidateBodyPartChildAttachmentOrientations = {}

local FFlagUGCValidateRigAttachmentRotationUsesDiff =
	game:DefineFastFlag("UGCValidateRigAttachmentRotationUsesDiff", false)

local thresholdTable = AttachmentRotationFInts.thresholdGetters

-- The expected CFrame for an arm that is modeled in I pose
local GRIP_CFRAME_IPOSE = CFrame.new(Vector3.zero, Vector3.new(0, 0, -1))
	* CFrame.fromEulerAnglesXYZ(-math.pi / 2, 0, 0)

function ValidateBodyPartChildAttachmentOrientations.expectedGripAttCFrameRotation(
	armAsset: Instance,
	assetTypeEnum: Enum.AssetType
): CFrame
	--[[
	We want to figure the attachment point orientation, so that it is perpendicular to the arm and facing the same way as the character
	To ensure it faces the correct way and not backwards, we impose some restrictions and assume they imported the character facing the Z and standing in the positive Y (as mentioned in public documentation)
	To do this, we have a desired CFrame for when the arm is imported straight down, and we rotate this along the Z-axis to match the arm bone rotation along this axis.
    -- ]]
	assert(assetTypeEnum == Enum.AssetType.RightArm or assetTypeEnum == Enum.AssetType.LeftArm)
	local armPrefix = assetTypeEnum == Enum.AssetType.RightArm and "Right" or "Left"

	local lowerArm = armAsset:FindFirstChild(armPrefix .. "LowerArm") :: MeshPart
	local hand = armAsset:FindFirstChild(armPrefix .. "Hand") :: MeshPart
	assert(lowerArm)
	assert(hand)

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
	assert(armElbowAtt)
	assert(armWristAtt)
	assert(handWristAtt)
	assert(gripAtt)

	-- We need to know where the wrist and elbow attachments end up if we were to reset hand to (0,0,0) orientation
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

local RIG_ATT_SUFFIX = "RigAttachment"
local GRIP_ATT_SUFFIX = "GripAttachment"

function ValidateBodyPartChildAttachmentOrientations.runValidation(
	inst: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	-- If schema is not valid, this test can error
	-- We run three validations:
	-- Rig attachments must be ~(0,0,0) (tiny tolerance to ignore float drift),
	-- Grip attachments must be perpendicular to the bone, facing with the character
	-- Non-rig and non-grip attachments must be within 30 degrees of (0,0,0)

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	for _, desc: Attachment in inst:GetDescendants() :: { any } do
		if desc.ClassName == "Attachment" then
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
					Analytics.reportFailure(
						Analytics.ErrorType.validateBodyPartChildAttachmentOrientations_RotatedRig,
						nil,
						validationContext
					)
					reasonsAccumulator:updateReasons(false, {
						string.format(
							"Rig attachments cannot be rotated, please set %s's orientation to (0,0,0)",
							desc:GetFullName()
						),
					})
				end
			elseif thresholdTable[desc.Name] ~= nil then
				local expectedCFrame = CFrame.new()
				if isGripAttachment then
					assert(validationContext.assetTypeEnum)
					expectedCFrame = ValidateBodyPartChildAttachmentOrientations.expectedGripAttCFrameRotation(
						inst,
						validationContext.assetTypeEnum
					)
				end

				if
					getDiffBetweenOrientations(expectedCFrame, getAttachmentCFrameInPartSpace(desc))
					> thresholdTable[desc.Name]()
				then
					Analytics.reportFailure(
						isGripAttachment and Analytics.ErrorType.validateBodyPartChildAttachmentOrientations_RotatedGrip
							or Analytics.ErrorType.validateBodyPartChildAttachmentOrientations_RotatedBasic,
						nil,
						validationContext
					)

					local expectedOrientation = Vector3.new(expectedCFrame:ToOrientation())
					expectedOrientation = Vector3.new(
						math.deg(expectedOrientation.X),
						math.deg(expectedOrientation.Y),
						math.deg(expectedOrientation.Z)
					)

					reasonsAccumulator:updateReasons(false, {
						string.format(
							"Attachment %s's orientation deviates too far from expectation, which will make attached accessories look unaligned. Recommended orientation is %s, and you can deviate up to %d degrees",
							desc:GetFullName(),
							valueToString(expectedOrientation),
							thresholdTable[desc.Name]()
						),
					})
				end
			end
		end
	end

	return reasonsAccumulator:getFinalResults()
end

return ValidateBodyPartChildAttachmentOrientations
