local getFFlagProfileQRCodePageEnabled = require(script.Parent.getFFlagProfileQRCodePageEnabled)
local getFFlagProfileQRCodeOpenDeepLink = require(script.Parent.getFFlagProfileQRCodeOpenDeepLink)

game:DefineFastFlag("ProfileQRCodeCoreFeaturesEnabled", false)

return function()
	return getFFlagProfileQRCodePageEnabled()
		and getFFlagProfileQRCodeOpenDeepLink()
		and game:GetFastFlag("ProfileQRCodeCoreFeaturesEnabled")
end
