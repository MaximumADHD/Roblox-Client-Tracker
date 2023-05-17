local getFFlagProfileQRCodeOpenDeepLink = require(script.Parent.getFFlagProfileQRCodeOpenDeepLink)

game:DefineFastFlag("ProfileQRCodeCoreFeaturesEnabled", false)

return function()
	return getFFlagProfileQRCodeOpenDeepLink() and game:GetFastFlag("ProfileQRCodeCoreFeaturesEnabled")
end
