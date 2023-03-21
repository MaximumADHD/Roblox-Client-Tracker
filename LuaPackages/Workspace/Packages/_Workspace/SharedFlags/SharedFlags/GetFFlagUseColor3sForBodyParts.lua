local GetFFlagAvatarEditorServiceInUniversalApp = require(script.Parent.GetFFlagAvatarEditorServiceInUniversalApp)

game:DefineFastFlag("UseColor3sForBodyParts", false)

return function()
	-- With FFlagUseColor3sForBodyParts on we talk to new endpoints for any communications that involve avatar skin colors.
	-- Some lua code that hits skin-color-related endpoints has been rendered obsolete by GetFFlagAvatarEditorServiceInUniversalApp.
	-- We did not update ths obsolete code to talk to new endpoints: we expect that GetFFlagAvatarEditorServiceInUniversalApp is on.
	return GetFFlagAvatarEditorServiceInUniversalApp() and game:GetFastFlag("UseColor3sForBodyParts")
end
