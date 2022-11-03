game:DefineFastFlag("SocialPanelIAEnabled", false)

return function()
	-- TODO: for every place we check this flag, we also need to check for (without circular dependency):
	-- IAExperimentation.isEnabled() and
	--   (IAExperimentation.default:shouldShowSocialPanel() or IAExperimentation.default:shouldShowSocialPanelFullscreen())

	return game:GetFastFlag("SocialPanelIAEnabled")
end
