game:DefineFastFlag("UseColor3sForBodyParts", false)

return function()
	-- With FFlagUseColor3sForBodyParts on we talk to new endpoints for any communications that involve avatar skin colors.
	return game:GetFastFlag("UseColor3sForBodyParts")
end
