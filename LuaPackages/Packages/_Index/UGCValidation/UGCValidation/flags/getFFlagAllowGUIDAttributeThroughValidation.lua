--!strict

game:DefineFastFlag("AllowGUIDAttributeThroughValidation", false)

return function()
	return game:GetFastFlag("AllowGUIDAttributeThroughValidation")
end
