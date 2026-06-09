local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidationAnimationPackSupport = require(root.flags.getFFlagUGCValidationAnimationPackSupport)

local AnimationWeightPositive = {}

AnimationWeightPositive.categories = { ValidationEnums.UploadCategory.ANIMATION }
AnimationWeightPositive.requiredData = {
	ValidationEnums.SharedDataMember.rootInstance,
	ValidationEnums.SharedDataMember.uploadEnum,
}
AnimationWeightPositive.fflag = getFFlagUGCValidationAnimationPackSupport
AnimationWeightPositive.expectedFailures = {}
AnimationWeightPositive.prereqTests = { ValidationEnums.ValidationModule.ExpectedRootSchema }

AnimationWeightPositive.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local assetType = data.uploadEnum.assetType
	if assetType ~= Enum.AssetType.IdleAnimation then
		return
	end

	local rootInstance = data.rootInstance :: Instance
	for _, desc in rootInstance:GetDescendants() do
		if desc:IsA("NumberValue") and desc.Name == "Weight" then
			local weight = (desc :: NumberValue).Value
			if weight <= 0 then
				reporter:fail(ErrorSourceStrings.Keys.Animation_WeightNotPositive, {
					animationName = if desc.Parent then desc.Parent:GetFullName() else "Unknown",
					weight = tostring(weight),
				})
			end
		end
	end
end

return AnimationWeightPositive :: Types.ValidationModule
