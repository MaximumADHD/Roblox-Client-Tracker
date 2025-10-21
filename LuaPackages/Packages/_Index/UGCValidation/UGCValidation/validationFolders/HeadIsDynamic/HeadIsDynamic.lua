local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local HeadIsDynamic = {}

HeadIsDynamic.categories = { ValidationEnums.UploadCategory.DYNAMIC_HEAD }
HeadIsDynamic.required_data = { ValidationEnums.SharedDataMember.qualityResults }
HeadIsDynamic.fflag = require(root.flags.getEngineFeatureEngineUGCValidationFetchQualityIsDynamicHead)

HeadIsDynamic.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	if data.qualityResults.is_Dynamic_Head ~= "True" then
		reporter:fail(ErrorSourceStrings.Keys.HeadNotDynamic)
	end
end

return HeadIsDynamic :: Types.ValidationModule
