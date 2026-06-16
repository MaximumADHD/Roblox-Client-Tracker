local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local Measure_Joint_Number = {}

Measure_Joint_Number.categories = { ValidationEnums.UploadCategory.FULL_BODY }
Measure_Joint_Number.fflag = require(root.flags.getFFlagUGCValidateAQRiggingQuality)

Measure_Joint_Number.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local summary = data.aqsSummaryData.Measure_Joint_Number
	if summary == nil then
		reporter:warn(ErrorSourceStrings.Keys.AQSWarn_MissingData, {
			measureName = "Measure_Joint_Number",
		})
		return
	end
	local partData = summary.full_body_mesh
	if partData == nil or partData.score == nil then
		reporter:warn(ErrorSourceStrings.Keys.AQSWarn_MissingData, {
			measureName = "Measure_Joint_Number",
		})
		return
	end
	if tonumber(partData.score) ~= 100 then
		reporter:warn(ErrorSourceStrings.Keys.AQSWarn_JointNumber, {
			score = tostring(math.floor(tonumber(partData.score) or 0)),
			joint_number = partData.joint_number or "unknown",
			left_hand_joint_number = partData.left_hand_joint_number or "unknown",
			right_hand_joint_number = partData.right_hand_joint_number or "unknown",
		})
	end
end

return Measure_Joint_Number :: Types.ValidationModule
