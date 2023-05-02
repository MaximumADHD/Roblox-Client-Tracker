game:DefineFastFlag("UseColor3sForBodyParts2", false)
local EngineClientAvatarUsesColor3sForBodyParts = game:GetEngineFeature("ClientAvatarUsesColor3sForBodyParts")

return function()
	-- With FFlagUseColor3sForBodyParts on we talk to new endpoints for any communications that involve avatar skin colors.
	return EngineClientAvatarUsesColor3sForBodyParts and game:GetFastFlag("UseColor3sForBodyParts2")
end
