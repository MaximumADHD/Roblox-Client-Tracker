local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateCurveAnimLoopingRequired = require(root.flags.getFFlagUGCValidateCurveAnimLoopingRequired)

local CurveAnimLoopingRequired = {}

CurveAnimLoopingRequired.categories = { ValidationEnums.UploadCategory.ANIMATION }
CurveAnimLoopingRequired.requiredData = {
	ValidationEnums.SharedDataMember.curveAnimations,
	ValidationEnums.SharedDataMember.uploadEnum,
}
CurveAnimLoopingRequired.fflag = getFFlagUGCValidateCurveAnimLoopingRequired
CurveAnimLoopingRequired.expectedFailures = {}
CurveAnimLoopingRequired.prereqTests = { ValidationEnums.ValidationModule.CurveAnimDataAvailable }

CurveAnimLoopingRequired.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	if data.uploadEnum.assetType == Enum.AssetType.JumpAnimation then
		return
	end

	for _, curveAnim in data.curveAnimations do
		if not curveAnim.Loop then
			reporter:fail(ErrorSourceStrings.Keys.CurveAnim_LoopingNotEnabled, {
				animationName = curveAnim:GetFullName(),
			})
		end
	end
end

return CurveAnimLoopingRequired :: Types.ValidationModule
