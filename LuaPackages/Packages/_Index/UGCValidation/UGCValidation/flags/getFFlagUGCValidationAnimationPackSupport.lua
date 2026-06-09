game:DefineFastFlag("UGCValidationAnimationPackSupport", false)

local enumsExist = pcall(function()
	local _ = Enum.BundleType.Animations
	local _ = Enum.AssetType.ClimbAnimation
end)

return function()
	return enumsExist and game:GetFastFlag("UGCValidationAnimationPackSupport")
end
