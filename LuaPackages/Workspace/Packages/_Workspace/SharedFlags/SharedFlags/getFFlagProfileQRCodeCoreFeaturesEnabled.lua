local getFFlagProfileQRCodePageEnabled = require(script.Parent.getFFlagProfileQRCodePageEnabled)
local getFFlagProfileQRCodeReducerEnabled = require(script.Parent.getFFlagProfileQRCodeReducerEnabled)
local getFFlagProfileQRCodeOpenDeepLink = require(script.Parent.getFFlagProfileQRCodeOpenDeepLink)

game:DefineFastFlag("ProfileQRCodeCoreFeaturesEnabled", false)

return function()
	return getFFlagProfileQRCodePageEnabled()
		and getFFlagProfileQRCodeReducerEnabled()
		and getFFlagProfileQRCodeOpenDeepLink()
		and game:GetFastFlag("ProfileQRCodeCoreFeaturesEnabled")
end
