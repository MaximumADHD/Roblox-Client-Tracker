local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getAllInstancesIsA = require(root.util.getAllInstancesIsA)
local R15plusUtils = require(root.util.R15plusUtils)
local Vector3Utils = require(root.util.Vector3Utils)
local valueToString = require(root.util.valueToString)
local CFrameUtils = require(root.util.CFrameUtils)
local HrdPropertiesSensible = {}

HrdPropertiesSensible.categories =
	{ ValidationEnums.UploadCategory.TORSO_AND_LIMBS, ValidationEnums.UploadCategory.DYNAMIC_HEAD }
HrdPropertiesSensible.requiredData = { ValidationEnums.SharedDataMember.rootInstance }
HrdPropertiesSensible.fflag = R15plusUtils.checkFlagEnabledForAllowHrd

local hrdDrdJointSizeHundredthsLimit = game:DefineFastInt("UGCValidationHrdDrdJointSizeHundredthsLimit", 150)
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

HrdPropertiesSensible.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local rootInstance = data.rootInstance
	for _, bodyMeshPart in getAllInstancesIsA(rootInstance, "MeshPart") do
		local hrd: HumanoidRigDescription? = bodyMeshPart:FindFirstChildWhichIsA("HumanoidRigDescription")
		if hrd == nil then
			continue
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
			if not hrd:GetJoint(jointEnum) then
				continue
			elseif not table.find(containedEnums, jointEnum) then
				reporter:fail(ErrorSourceStrings.Keys.HrdProperties_UncontainedJoint, {
					jointName = jointEnum.Name,
					foundMeshName = bodyMeshPart.Name,
				})
				continue
			end

			local jointSize = hrd:GetJointSize(jointEnum)
			local jointRangeMin = hrd:GetJointRangeMin(jointEnum)
			local jointRangeMax = hrd:GetJointRangeMax(jointEnum)

			local jointSizeLimit = hrdDrdJointSizeHundredthsLimit / 100
			if jointSize < 0 or jointSize > jointSizeLimit then
				reporter:fail(ErrorSourceStrings.Keys.HrdProperties_PropertyOutOfRange, {
					jointName = jointEnum.Name,
					propertyName = "size",
					currentValue = jointSize,
					valueMin = valueToString(0),
					valueMax = valueToString(jointSizeLimit),
				})
			end
			if not Vector3Utils.isInRange(jointRangeMin, hrdRangeMinInclusive, hrdRangeMaxInclusive) then
				reporter:fail(ErrorSourceStrings.Keys.HrdProperties_PropertyOutOfRange, {
					jointName = jointEnum.Name,
					propertyName = "rangeMin",
					currentValue = jointRangeMin,
					valueMin = valueToString(hrdRangeMinInclusive),
					valueMax = valueToString(hrdRangeMaxInclusive),
				})
			end
			if not Vector3Utils.isInRange(jointRangeMax, hrdRangeMinInclusive, hrdRangeMaxInclusive) then
				reporter:fail(ErrorSourceStrings.Keys.HrdProperties_PropertyOutOfRange, {
					jointName = jointEnum.Name,
					propertyName = "rangeMax",
					currentValue = jointRangeMax,
					valueMin = valueToString(hrdRangeMinInclusive),
					valueMax = valueToString(hrdRangeMaxInclusive),
				})
			end
			if not Vector3Utils.isFirstLessOrEqual(jointRangeMin, jointRangeMax) then
				reporter:fail(ErrorSourceStrings.Keys.HrdProperties_MinAboveMax, {
					jointName = jointEnum.Name,
				})
			end

			-- TODO: Validate Tpose adjustment is reasonable (still under discussion)
		end

		-- TODO: Validate DRD properties. The getters are still under discussion.
	end
end

return HrdPropertiesSensible :: Types.ValidationModule
