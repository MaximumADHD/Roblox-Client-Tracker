--!strict

game:DefineFastFlag("AddValidateVertColorsAlphaUGCValidate", false)

return function()
	if game:GetEngineFeature("EngineUGCValidateVertColorsAlpha") then
		return game:GetFastFlag("AddValidateVertColorsAlphaUGCValidate")
	end
	return false
end
