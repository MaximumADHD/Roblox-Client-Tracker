local getFFlagSocialOnboardingExperimentEnabled = require(script.Parent.getFFlagSocialOnboardingExperimentEnabled)

game:DefineFastFlag("AddFriendsQRCodeAnalytics", false)

return function()
	return getFFlagSocialOnboardingExperimentEnabled() and game:GetFastFlag("AddFriendsQRCodeAnalytics")
end
