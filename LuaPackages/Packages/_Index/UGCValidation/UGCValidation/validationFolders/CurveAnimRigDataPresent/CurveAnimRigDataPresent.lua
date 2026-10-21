local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local CurveAnimBoneHierarchyUtils = require(root.util.CurveAnimBoneHierarchyUtils)

local getEngineFeatureIsValidR15Plus = require(root.flags.getEngineFeatureIsValidR15Plus)

local CurveAnimRigDataPresent = {}

CurveAnimRigDataPresent.categories =
	{ ValidationEnums.UploadCategory.EMOTE_ANIMATION, ValidationEnums.UploadCategory.ANIMATION }
CurveAnimRigDataPresent.requiredData = {
	ValidationEnums.SharedDataMember.curveAnimations,
}
CurveAnimRigDataPresent.expectedFailures = {}
CurveAnimRigDataPresent.prereqTests = { ValidationEnums.ValidationModule.CurveAnimDataAvailable }

CurveAnimRigDataPresent.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	for _, inst in data.curveAnimations do
		local curveAnim = inst :: CurveAnimation
		local numRigData = 0
		for _, child in curveAnim:GetChildren() do
			if child:IsA("AnimationRigData") then
				numRigData += 1
				if numRigData > 1 then
					reporter:fail(ErrorSourceStrings.Keys.CurveAnim_MultipleRigData)
					return
				end
			end
		end

		if numRigData == 0 then
			reporter:fail(ErrorSourceStrings.Keys.CurveAnim_NoRigData)
			return
		end

		if CurveAnimBoneHierarchyUtils.hasBoneFolders(curveAnim) then
			if getEngineFeatureIsValidR15Plus() then
				for _, child in curveAnim:GetChildren() do
					if not child:IsA("AnimationRigData") then
						continue
					end

					if not (child :: any):IsValidR15Plus() then
						reporter:fail(ErrorSourceStrings.Keys.CurveAnim_InvalidRigDataR15Plus)
						return
					end
				end
			end
		else
			for _, child in curveAnim:GetChildren() do
				if not child:IsA("AnimationRigData") then
					continue
				end

				if not (child :: any):IsValidR15() then
					reporter:fail(ErrorSourceStrings.Keys.CurveAnim_InvalidRigData)
					return
				end
			end
		end
	end
end

return CurveAnimRigDataPresent :: Types.ValidationModule
