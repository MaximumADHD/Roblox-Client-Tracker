local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local getEngineFeatureEngineUGCValidationExpandReturnSchema =
	require(root.flags.getEngineFeatureEngineUGCValidationExpandReturnSchema)

local NoFACSOverrideData = {}

NoFACSOverrideData.categories = { ValidationEnums.UploadCategory.DYNAMIC_HEAD }
NoFACSOverrideData.requiredData = { ValidationEnums.SharedDataMember.rootInstance }
NoFACSOverrideData.fflag = require(root.flags.getEngineFeatureUGCValidateCheckFacsDisableOverride)

NoFACSOverrideData.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local head = data.rootInstance
	local faceControls = head:FindFirstChildOfClass("FaceControls")

	if faceControls and (faceControls :: any):HasOverrideFACSData() :: any then
		reporter:fail(
			ErrorSourceStrings.Keys.FaceControlsOverrideFACSNotEmpty,
			nil,
			if getEngineFeatureEngineUGCValidationExpandReturnSchema() then faceControls else nil
		)
	end
end

return NoFACSOverrideData :: Types.ValidationModule
