local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateMigrateCurveAnim = require(root.flags.getFFlagUGCValidateMigrateCurveAnim)
local getFFlagUGCValidationAnimationPackSupport = require(root.flags.getFFlagUGCValidationAnimationPackSupport)

local CurveAnimNoScripts = {}

CurveAnimNoScripts.categories = { ValidationEnums.UploadCategory.EMOTE_ANIMATION }
if getFFlagUGCValidationAnimationPackSupport() then
	table.insert(CurveAnimNoScripts.categories, ValidationEnums.UploadCategory.ANIMATION)
end
CurveAnimNoScripts.requiredData = {
	ValidationEnums.SharedDataMember.curveAnimations,
}
CurveAnimNoScripts.fflag = getFFlagUGCValidateMigrateCurveAnim
CurveAnimNoScripts.expectedFailures = {}
CurveAnimNoScripts.prereqTests = { ValidationEnums.ValidationModule.CurveAnimDataAvailable }

CurveAnimNoScripts.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	for _, inst in data.curveAnimations do
		local curveAnim = inst :: CurveAnimation
		for _, child in curveAnim:GetDescendants() do
			if child:IsA("Script") or child:IsA("ModuleScript") then
				reporter:fail(ErrorSourceStrings.Keys.CurveAnim_ContainsScripts)
				return
			end
		end
	end
end

return CurveAnimNoScripts :: Types.ValidationModule
