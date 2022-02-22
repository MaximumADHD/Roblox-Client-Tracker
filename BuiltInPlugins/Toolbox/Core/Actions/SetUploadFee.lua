local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Framework = require(Packages.Framework)
local Action = Framework.Util.Action

return Action(script.Name, function(isUploadFeeEnabled, uploadFee, canAffordUploadFee)
	assert(type(isUploadFeeEnabled) == "boolean", "isUploadFeeEnabled must be a boolean")
	assert(uploadFee == nil or type(uploadFee) == "number", "uploadFee must be a number or nil")
	assert(
		canAffordUploadFee == nil or type(canAffordUploadFee) == "boolean",
		"canAffordUploadFee must be a boolean or nil"
	)

	return {
		isUploadFeeEnabled = isUploadFeeEnabled,
		uploadFee = uploadFee,
		canAffordUploadFee = canAffordUploadFee,
	}
end)
