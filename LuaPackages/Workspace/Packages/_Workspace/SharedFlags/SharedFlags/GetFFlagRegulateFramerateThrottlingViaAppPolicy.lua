game:DefineFastFlag("RegulateFramerateThrottlingViaAppPolicy", false)
local GetFFlagAvatarEditorMaquettes = require(script.Parent.GetFFlagAvatarEditorMaquettes)

return function()
	return GetFFlagAvatarEditorMaquettes() and game:GetFastFlag("RegulateFramerateThrottlingViaAppPolicy")
		or game:GetEngineFeature("EnableMaquettesSupport") -- enable with FFlag: UserMaquettesSupportEnabled
end
