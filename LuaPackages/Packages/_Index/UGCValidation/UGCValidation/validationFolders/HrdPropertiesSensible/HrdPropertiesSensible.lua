local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local getEngineFeatureEngineUGCValidationExpandReturnSchema =
	require(root.flags.getEngineFeatureEngineUGCValidationExpandReturnSchema)
local ValidationRulesUtilImpl = require(root.util.ValidationRulesUtil)

local getAllInstancesIsA = require(root.util.getAllInstancesIsA)
local R15plusUtils = require(root.util.R15plusUtils)
local Vector3Utils = require(root.util.Vector3Utils)
local valueToString = require(root.util.valueToString)
local CFrameUtils = require(root.util.CFrameUtils)
local HrdPropertiesSensible = {}

HrdPropertiesSensible.categories =
	{ ValidationEnums.UploadCategory.TORSO_AND_LIMBS, ValidationEnums.UploadCategory.DYNAMIC_HEAD }
HrdPropertiesSensible.requiredData = {
	ValidationEnums.SharedDataMember.rootInstance,
}
HrdPropertiesSensible.fflag = R15plusUtils.checkFlagEnabledForAllowHrd

local hrdJointSizeLimit = game:DefineFastInt("UGCValidationHrdJointSizeHundredthsLimit", 150) / 100
local hrdJointRangeMinX = game:DefineFastInt("UGCValidationHrdJointRangeMinXHundredths", 0)
local hrdJointRangeMaxX = game:DefineFastInt("UGCValidationHrdJointRangeMaxXHundredths", 0)
local hrdJointRangeMinY = game:DefineFastInt("UGCValidationHrdJointRangeMinYHundredths", 0)
local hrdJointRangeMaxY = game:DefineFastInt("UGCValidationHrdJointRangeMaxYHundredths", 0)
local hrdJointRangeMinZ = game:DefineFastInt("UGCValidationHrdJointRangeMinZHundredths", 0)
local hrdJointRangeMaxZ = game:DefineFastInt("UGCValidationHrdJointRangeMaxZHundredths", 0)
local hrdOriginOffsetMinY = game:DefineFastInt("UGCValidationHrdOriginOffsetMinYHundredths", -500)
local hrdOriginOffsetMaxY = game:DefineFastInt("UGCValidationHrdOriginOffsetMaxYHundredths", 500)
local hrdRangeMinInclusive = Vector3.new(hrdJointRangeMinX / 100, hrdJointRangeMinY / 100, hrdJointRangeMinZ / 100)
local hrdRangeMaxInclusive = Vector3.new(hrdJointRangeMaxX / 100, hrdJointRangeMaxY / 100, hrdJointRangeMaxZ / 100)
local hrdOriginMinInclusive = Vector3.new(0, hrdOriginOffsetMinY / 100, 0)
local hrdOriginMaxInclusive = Vector3.new(0, hrdOriginOffsetMaxY / 100, 0)

local drdJointSizeLimit = game:DefineFastInt("UGCValidationDrdJointSizeHundredthsLimit", 150) / 100
local drdJointRangeMinX = game:DefineFastInt("UGCValidationDrdJointRangeMinXHundredths", 0)
local drdJointRangeMaxX = game:DefineFastInt("UGCValidationDrdJointRangeMaxXHundredths", 0)
local drdJointRangeMinY = game:DefineFastInt("UGCValidationDrdJointRangeMinYHundredths", 0)
local drdJointRangeMaxY = game:DefineFastInt("UGCValidationDrdJointRangeMaxYHundredths", 0)
local drdJointRangeMinZ = game:DefineFastInt("UGCValidationDrdJointRangeMinZHundredths", 0)
local drdJointRangeMaxZ = game:DefineFastInt("UGCValidationDrdJointRangeMaxZHundredths", 0)
local drdRangeMinInclusive = Vector3.new(drdJointRangeMinX / 100, drdJointRangeMinY / 100, drdJointRangeMinZ / 100)
local drdRangeMaxInclusive = Vector3.new(drdJointRangeMaxX / 100, drdJointRangeMaxY / 100, drdJointRangeMaxZ / 100)

local function checkVectorRange(
	reporter: Types.ValidationReporter,
	jointName: string,
	propertyName: string,
	currentValue: Vector3,
	valueMin: Vector3,
	valueMax: Vector3
)
	if not Vector3Utils.isInRange(currentValue, valueMin, valueMax) then
		reporter:fail(ErrorSourceStrings.Keys.HrdProperties_PropertyOutOfRange, {
			jointName = jointName,
			propertyName = propertyName,
			currentValue = valueToString(currentValue),
			valueMin = valueToString(valueMin),
			valueMax = valueToString(valueMax),
		})
	end
end

local function checkSize(
	reporter: Types.ValidationReporter,
	jointName: string,
	propertyName: string,
	currentValue: number,
	valueMax: number
)
	if currentValue < 0 or currentValue > valueMax then
		reporter:fail(ErrorSourceStrings.Keys.HrdProperties_PropertyOutOfRange, {
			jointName = jointName,
			propertyName = propertyName,
			currentValue = valueToString(currentValue),
			valueMin = "0",
			valueMax = valueToString(valueMax),
		})
	end
end

HrdPropertiesSensible.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local rootInstance = data.rootInstance
	for _, bodyMeshPart in getAllInstancesIsA(rootInstance, "MeshPart") do
		local hrd: HumanoidRigDescription? = bodyMeshPart:FindFirstChildWhichIsA("HumanoidRigDescription")
		local rigAttachmentName = ValidationRulesUtilImpl.rigAttachmentToParentMap[bodyMeshPart.Name]
		if hrd == nil then
			continue
		end

		if getEngineFeatureEngineUGCValidationExpandReturnSchema() then
			reporter:setReportingInstance(hrd)
		end

		-- Step 1: Check OriginOffset
		local originOffset = hrd.OriginOffset
		if bodyMeshPart.Name == "LowerTorso" then
			if
				not CFrameUtils.fuzzyEq(originOffset.Rotation, CFrame.identity)
				or not Vector3Utils.isInRange(originOffset.Position, hrdOriginMinInclusive, hrdOriginMaxInclusive)
			then
				reporter:fail(ErrorSourceStrings.Keys.HrdProperties_OriginOutsideBounds, {
					valueMin = valueToString(hrdOriginMinInclusive),
					valueMax = valueToString(hrdOriginMaxInclusive),
				})
			end
		else
			if not CFrameUtils.fuzzyEq(originOffset, CFrame.identity) then
				reporter:fail(ErrorSourceStrings.Keys.HrdProperties_UncontainedJoint, {
					jointName = "originOffset",
					foundMeshName = bodyMeshPart.Name,
				})
			end
		end

		-- Step 2: Check contained joints in HRD
		local containedEnums = (hrd :: any):GetContainedJointLabels(bodyMeshPart.Name) -- Currently limited to 3 in engine
		for _, jointEnum in R15plusUtils.getHrdJointLabels() do
			-- Preliminary checks: Make sure the pointer is valid.
			-- HrdBonesFollowSchema will check the datamodel hierarchy, and the schema checks will ensure names are all correct.Axes
			-- but we still want to make sure they arent pointing to random instances that are approved by the schema.
			local isRigAttachmentReference = `{jointEnum.Name}RigAttachment` == rigAttachmentName
			local jointObj = hrd:GetJoint(jointEnum)

			if
				isRigAttachmentReference
				and not (jointObj and jointObj.Name == rigAttachmentName and jointObj.ClassName == "Attachment")
			then
				reporter:fail(ErrorSourceStrings.Keys.HrdMissingStandardJoint, {
					jointName = jointEnum.Name,
				})
			end

			if not jointObj then
				continue
			elseif not table.find(containedEnums, jointEnum) then
				reporter:fail(ErrorSourceStrings.Keys.HrdProperties_UncontainedJoint, {
					jointName = jointEnum.Name,
					foundMeshName = bodyMeshPart.Name,
				})
				continue
			elseif
				not isRigAttachmentReference and not (jointObj.Name == jointEnum.Name and jointObj.ClassName == "Bone")
			then
				reporter:fail(ErrorSourceStrings.Keys.HrdImproperJointMapping, {
					jointName = jointEnum.Name,
					boneName = jointEnum.Name,
				})
			end

			-- Now validate size and range
			local jointSize = hrd:GetJointSize(jointEnum)
			local jointRangeMin = hrd:GetJointRangeMin(jointEnum)
			local jointRangeMax = hrd:GetJointRangeMax(jointEnum)

			checkSize(reporter, jointEnum.Name, "size", jointSize, hrdJointSizeLimit)
			checkVectorRange(
				reporter,
				jointEnum.Name,
				"rangeMin",
				jointRangeMin,
				hrdRangeMinInclusive,
				hrdRangeMaxInclusive
			)
			checkVectorRange(
				reporter,
				jointEnum.Name,
				"rangeMax",
				jointRangeMax,
				hrdRangeMinInclusive,
				hrdRangeMaxInclusive
			)

			if not Vector3Utils.isFirstLessOrEqual(jointRangeMin, jointRangeMax) then
				reporter:fail(ErrorSourceStrings.Keys.HrdProperties_MinAboveMax, {
					jointName = jointEnum.Name,
				})
			end
		end

		-- Step 3: Check associated DRD
		local drd: DigitsRigDescription? = bodyMeshPart:FindFirstChildWhichIsA("DigitsRigDescription")
		if drd == nil then
			continue
		end

		if getEngineFeatureEngineUGCValidationExpandReturnSchema() then
			reporter:setReportingInstance(drd)
		end

		if
			not (
				(bodyMeshPart.Name == "LeftHand" and drd.Side == Enum.DigitsRigDescriptionSide.Left)
				or (bodyMeshPart.Name == "RightHand" and drd.Side == Enum.DigitsRigDescriptionSide.Right)
			)
		then
			local expectedSide = "None"
			if bodyMeshPart.Name == "LeftHand" then
				expectedSide = "Left"
			elseif bodyMeshPart.Name == "RightHand" then
				expectedSide = "Right"
			end

			reporter:fail(ErrorSourceStrings.Keys.HrdCheck_DrdInvalidSide, {
				partName = bodyMeshPart.Name,
				expectedSide = expectedSide,
				foundSide = drd.Side.Name,
			})
		end

		-- DRD properties are directly exposed instead of behind api layers
		checkSize(reporter, "Index", "size", drd.IndexSize, drdJointSizeLimit)
		checkSize(reporter, "Thumb", "size", drd.ThumbSize, drdJointSizeLimit)
		checkSize(reporter, "Middle", "size", drd.MiddleSize, drdJointSizeLimit)
		checkSize(reporter, "Pinky", "size", drd.PinkySize, drdJointSizeLimit)
		checkSize(reporter, "Ring", "size", drd.RingSize, drdJointSizeLimit)
		checkVectorRange(reporter, "Index", "range", drd.IndexRange, drdRangeMinInclusive, drdRangeMaxInclusive)
		checkVectorRange(reporter, "Thumb", "range", drd.ThumbRange, drdRangeMinInclusive, drdRangeMaxInclusive)
		checkVectorRange(reporter, "Pinky", "range", drd.PinkyRange, drdRangeMinInclusive, drdRangeMaxInclusive)
		checkVectorRange(reporter, "Ring", "range", drd.RingRange, drdRangeMinInclusive, drdRangeMaxInclusive)
		checkVectorRange(reporter, "Middle", "range", drd.MiddleRange, drdRangeMinInclusive, drdRangeMaxInclusive)
	end
end

return HrdPropertiesSensible :: Types.ValidationModule
