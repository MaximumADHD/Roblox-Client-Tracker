game:DefineFastFlag("CreateSelectionBox", false)

return function()
	return game:GetFastFlag("CreateSelectionBox") and game:GetFastFlag("UseLuaDraggers") 
end