local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local Measure_Texture_Complexity = {}

Measure_Texture_Complexity.categories = {
	ValidationEnums.UploadCategory.FULL_BODY,
	ValidationEnums.UploadCategory.LAYERED_CLOTHING,
	ValidationEnums.UploadCategory.RIGID_ACCESSORY,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
}
Measure_Texture_Complexity.fflag = require(root.flags.getFFlagUGCValidateAQTextureQuality)

Measure_Texture_Complexity.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local summary = data.aqsSummaryData.Measure_Texture_Complexity
	if summary == nil then
		reporter:warn(ErrorSourceStrings.Keys.AQSWarn_MissingData, {
			measureName = "Measure_Texture_Complexity",
		})
		return
	end
	for textureName, textureData in summary do
		if textureName ~= "measurement_score" then
			if textureData == nil or textureData.score == nil then
				reporter:warn(ErrorSourceStrings.Keys.AQSWarn_MissingData, {
					measureName = "Measure_Texture_Complexity",
				})
				return
			end
			if tonumber(textureData.score) ~= 100 then
				reporter:warn(ErrorSourceStrings.Keys.AQSWarn_TextureComplexity, {
					textureName = textureName,
					score = tostring(math.floor(tonumber(textureData.score) or 0)),
				})
			end
		end
	end
end

return Measure_Texture_Complexity :: Types.ValidationModule
