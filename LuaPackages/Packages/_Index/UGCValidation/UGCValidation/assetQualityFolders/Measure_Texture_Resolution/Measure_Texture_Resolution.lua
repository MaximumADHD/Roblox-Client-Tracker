local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local Measure_Texture_Resolution = {}

Measure_Texture_Resolution.categories = {
	ValidationEnums.UploadCategory.FULL_BODY,
	ValidationEnums.UploadCategory.LAYERED_CLOTHING,
	ValidationEnums.UploadCategory.RIGID_ACCESSORY,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
}
Measure_Texture_Resolution.fflag = require(root.flags.getFFlagUGCValidateAQTextureQuality)

Measure_Texture_Resolution.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local summary = data.aqsSummaryData.Measure_Texture_Resolution
	if summary == nil then
		reporter:warn(ErrorSourceStrings.Keys.AQSWarn_MissingData, {
			measureName = "Measure_Texture_Resolution",
		})
		return
	end
	for textureName, textureData in summary do
		if textureName ~= "measurement_score" then
			if textureData == nil or textureData.score == nil then
				reporter:warn(ErrorSourceStrings.Keys.AQSWarn_MissingData, {
					measureName = "Measure_Texture_Resolution",
				})
				return
			end
			if tonumber(textureData.score) ~= 100 then
				reporter:warn(ErrorSourceStrings.Keys.AQSWarn_TextureResolution, {
					textureName = textureName,
					texture_width = textureData.texture_width or "unknown",
					texture_height = textureData.texture_height or "unknown",
					score = tostring(math.floor(tonumber(textureData.score) or 0)),
				})
			end
		end
	end
end

return Measure_Texture_Resolution :: Types.ValidationModule
